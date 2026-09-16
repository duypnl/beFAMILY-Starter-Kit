#!/usr/bin/env python3
"""verify_script.py - check a Vietnamese script draft against the
Kinh Thánh 1925 + churchofgod 2-tier terminology standard.

WHY THIS EXISTS
  The standard has two tiers that CONFLICT on purpose:
    TIER 1 (highest): scriptural phrases must use the 1925 translation verbatim.
                      e.g. Khải-huyền 22:17 is "Thánh Linh và vợ mới" - bare
                      "Thánh Linh", NO "Đức" honorific.
    TIER 2: teaching text uses churchofgod terminology
                      (Đức Chúa Trời Cha/Mẹ, Đức Chúa Giêsu, Đức Thánh Linh).
  Tier 1 always wins: a span that IS a 1925 quotation is exempt from tier-2.

USAGE
  python verify_script.py script.md
  python verify_script.py script.md --json
  python verify_script.py script.md --strict      # exit 1 on any violation
  cat script.md | python verify_script.py -       # read stdin

EXIT 0 if clean, 1 if any violation (so it can gate a pipeline).
"""
import argparse
import json
import re
import sys
from pathlib import Path

# ───────────────────────── TIER 1: Kinh Thánh 1925 wording ──────────────────
# (wrong form, correct 1925 form, reference) - verbatim from project srt_qa.py
BIBLE_1925_TERMS: list[tuple[str, str, str]] = [
    # Khải-huyền 22:17 - "Thánh Linh và vợ mới cùng nói: Hãy đến!"
    ('cô dâu', 'vợ mới', 'Khải-huyền 22:17'),
    ('tân nương', 'vợ mới', 'Khải-huyền 22:17'),
    # Sáng-thế-ký 2:9 / 2:17 - "cây biết điều thiện và điều ác"
    ('cây tri thức', 'cây biết điều thiện và điều ác', 'Sáng-thế-ký 2:9'),
    ('cây kiến thức', 'cây biết điều thiện và điều ác', 'Sáng-thế-ký 2:9'),
    ('trí tuệ biết điều thiện', 'biết điều thiện và điều ác', 'Sáng-thế-ký 2:9'),
    ('cây thiện ác', 'cây biết điều thiện và điều ác', 'Sáng-thế-ký 2:9'),
    # Sáng-thế-ký 2:7 - "hà sanh khí vào lỗ mũi... thành một loài sanh linh"
    ('thổi hơi sự sống', 'hà sanh khí', 'Sáng-thế-ký 2:7'),
    ('hà hơi sự sống', 'hà sanh khí', 'Sáng-thế-ký 2:7'),
    ('hơi thở sự sống', 'sanh khí', 'Sáng-thế-ký 2:7'),
    ('linh hồn sống', 'loài sanh linh', 'Sáng-thế-ký 2:7'),
    ('người sống động', 'loài sanh linh', 'Sáng-thế-ký 2:7'),
    # Sáng-thế-ký 3:24 - "chê-ru-bim với gươm lưỡi chói lòa"
    ('cherubim', 'chê-ru-bim', 'Sáng-thế-ký 3:24'),
    ('thần hộ mệnh', 'chê-ru-bim', 'Sáng-thế-ký 3:24'),
    ('kiếm lửa', 'gươm lưỡi chói lòa', 'Sáng-thế-ký 3:24'),
    ('gươm lửa', 'gươm lưỡi chói lòa', 'Sáng-thế-ký 3:24'),
    # 1925 orthography: "ma quỉ" (not quỷ), "quỉ Sa-tan"
    ('ma quỷ', 'ma quỉ', 'chính tả 1925'),
    ('quỷ sa-tan', 'quỉ Sa-tan', 'chính tả 1925'),
    # Sáng-thế-ký 1:6-8 - "khoảng không" (not "bầu trời"/"vòm trời")
    ('vòm trời', 'khoảng không', 'Sáng-thế-ký 1:6'),
    ('tầng không', 'khoảng không', 'Sáng-thế-ký 1:6'),
]

# TIER 1 wins: spans that ARE a 1925 quotation are exempt from tier-2.
BIBLE_1925_PROTECTED: list[tuple[re.Pattern, str]] = [
    (re.compile(r'thánh linh và vợ mới', re.IGNORECASE), 'Khải-huyền 22:17'),
    (re.compile(r'vợ mới và thánh linh', re.IGNORECASE), 'Khải-huyền 22:17'),
    (re.compile(r'thánh linh cùng vợ mới', re.IGNORECASE), 'Khải-huyền 22:17'),
]

# ───────────────────────── TIER 2: churchofgod terminology ───────────────────
# (wrong form, correct form) - checked case-insensitively on word boundaries
BANNED_TERMS: list[tuple[str, str]] = [
    ('đức chúa cha', 'Đức Chúa Trời Cha'),
    ('đức chúa mẹ', 'Đức Chúa Trời Mẹ'),
    ('chúa cha', 'Đức Chúa Trời Cha'),
    ('chúa mẹ', 'Đức Chúa Trời Mẹ'),
    ('thiên phụ', 'Đức Chúa Trời Cha'),
    ('thiên mẫu', 'Đức Chúa Trời Mẹ'),
    ('đức jesus', 'Đức Chúa Giêsu'),
    ('chúa jesus', 'Đức Chúa Giêsu'),
    ('jesus', 'Đức Chúa Giêsu'),
    ('giê-xu', 'Giêsu'),
    ('đức thánh thần', 'Đức Thánh Linh'),
    # Explicitly forbidden imagery per project rules.
    ('thập giá', 'chịu khổ / hy sinh'),
    ('thập tự giá', 'chịu khổ / hy sinh'),
]

# Bare forms that are only wrong when NOT already prefixed by "Đức ".
NEEDS_DUC_PREFIX: list[tuple[re.Pattern, str]] = [
    (re.compile(r'(?<!đức )chúa giêsu', re.IGNORECASE), 'Đức Chúa Giêsu'),
    (re.compile(r'(?<!đức )thánh linh', re.IGNORECASE), 'Đức Thánh Linh'),
    (re.compile(r'(?<!đức )chúa trời', re.IGNORECASE), 'Đức Chúa Trời'),
]

# Must be capitalised exactly like this.
CASE_SENSITIVE_TERMS: list[str] = [
    'Kinh Thánh', 'Đức Chúa Trời', 'Đức Chúa Giêsu',
    'Đức Thánh Linh', 'Đức Chúa Trời Cha', 'Đức Chúa Trời Mẹ',
]

# ───────────────────── Vietnamese phonotactic foreign-word guard ──────────────
# Vietnamese has no f/j/w/z; a syllable ends in a vowel or c/ch/m/n/ng/nh/p/t.
VI_FORBIDDEN_LETTERS = set('fjwz')
VI_FINALS = ('nnnnh', 'ngh', 'ng', 'nh', 'ch', 'c', 'm', 'n', 'p', 't', 'h')
VI_ONSETS = (
    'ngh', 'ng', 'nh', 'ch', 'gh', 'gi', 'kh', 'ph', 'qu', 'th', 'tr',
    'b', 'c', 'd', 'đ', 'g', 'h', 'k', 'l', 'm', 'n', 'p', 'r', 's', 't', 'v', 'x',
)


def protected_spans(text: str) -> list[tuple[int, int]]:
    spans = []
    for pat, _ref in BIBLE_1925_PROTECTED:
        for m in pat.finditer(text):
            spans.append((m.start(), m.end()))
    return spans


def _in_span(pos: int, spans: list[tuple[int, int]]) -> bool:
    return any(p0 <= pos < p1 for p0, p1 in spans)


def check_tier1(line: str, lineno: int) -> list[dict]:
    out = []
    low = line.lower()
    for wrong, correct, ref in BIBLE_1925_TERMS:
        for m in re.finditer(re.escape(wrong), low):
            out.append({
                'line': lineno, 'severity': 'TIER1', 'rule': 'BIBLE1925',
                'found': line[m.start():m.end()], 'suggest': correct,
                'ref': ref,
                'msg': f'1925 wording: "{wrong}" → "{correct}" ({ref})',
            })
    return out


def check_tier2(line: str, lineno: int) -> list[dict]:
    out = []
    low = line.lower()
    spans = protected_spans(low)
    # banned terms (skip if inside a 1925 quotation)
    for wrong, correct in BANNED_TERMS:
        for m in re.finditer(r'(?<![\w])' + re.escape(wrong) + r'(?![\w])', low):
            if _in_span(m.start(), spans):
                continue
            out.append({
                'line': lineno, 'severity': 'TIER2', 'rule': 'TERMINOLOGY',
                'found': line[m.start():m.end()], 'suggest': correct,
                'ref': 'churchofgod',
                'msg': f'churchofgod: "{wrong}" → "{correct}"',
            })
    # needs "Đức " prefix
    for pat, correct in NEEDS_DUC_PREFIX:
        for m in pat.finditer(low):
            if _in_span(m.start(), spans):
                continue
            out.append({
                'line': lineno, 'severity': 'TIER2', 'rule': 'NEEDS_DUC',
                'found': line[m.start():m.end()], 'suggest': correct,
                'ref': 'churchofgod',
                'msg': f'churchofgod: "{m.group(0)}" → "{correct}"',
            })
    return out


def check_case(line: str, lineno: int) -> list[dict]:
    out = []
    for term in CASE_SENSITIVE_TERMS:
        low = term.lower()
        if low in line.lower() and term not in line:
            out.append({
                'line': lineno, 'severity': 'CASE', 'rule': 'CAPS',
                'found': low, 'suggest': term,
                'ref': 'capitalisation',
                'msg': f'capitalise exactly as "{term}"',
            })
    return out


def check_foreign(line: str, lineno: int) -> list[dict]:
    """Flag tokens that contain letters absent from Vietnamese (f/j/w/z),
    so stray English/French words surface. Vietnamese itself NEVER uses
    these letters, so this is zero-false-positive on real Vietnamese - the
    lesson from srt_qa.py (a full syllable validator caused ~19 false
    positives).

    We skip two benign contexts so the check stays useful on real drafts:
      * markdown structural lines (headings, list bullets, hr) - they carry
        labels like "Format:" / "HOOK:" that are not script content;
      * a small allowlist of common English metadata labels used in script
        headers (BADGE, HOOK, CTA, SCENE, VISUAL…).
    """
    # skip markdown structural lines entirely
    s = line.lstrip()
    if s.startswith(('#', '-', '*', '>', '|')):
        return []
    out = []
    # only check lines that contain Vietnamese characters
    if not re.search(r'[àáảãạăâầấẩẫậéèẻẽẹêếềểễệíìỉĩịôồốổỗộơờớởỡợưừứửữựýỳỷỹỵđ]', line, re.I):
        return out
    # tokens that are English metadata labels, not script content
    EN_META_ALLOW = {'format', 'scene', 'visual', 'hook', 'badge', 'cta',
                     'shot', 'line', 'note', 'intro', 'outro', 'verse',
                     'chorus', 'bridge', 'hook:', 'badge:'}
    for tok in re.findall(r"[A-Za-zÀ-ÿĐđ]+", line):
        t = tok.lower().rstrip(':')
        if t in EN_META_ALLOW:
            continue
        if any(c in VI_FORBIDDEN_LETTERS for c in t):
            out.append({
                'line': lineno, 'severity': 'FOREIGN', 'rule': 'FOREIGN',
                'found': tok, 'suggest': '', 'ref': 'phonotactics',
                'msg': f'non-Vietnamese letter in "{tok}" (f/j/w/z absent in VI)',
            })
    return out


def analyze(text: str) -> list[dict]:
    issues = []
    for i, line in enumerate(text.splitlines(), 1):
        issues += check_tier1(line, i)
        issues += check_tier2(line, i)
        issues += check_case(line, i)
        issues += check_foreign(line, i)
    return issues


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('path', help='script file (.md/.txt) or "-" for stdin')
    ap.add_argument('--json', action='store_true', help='emit JSON')
    ap.add_argument('--strict', action='store_true', help='exit 1 on any issue')
    ap.add_argument('--ignore', nargs='*', default=[],
                    help='severity/rule to ignore: TIER1 TIER2 CASE FOREIGN')
    args = ap.parse_args()

    if args.path == '-':
        text = sys.stdin.read()
    else:
        p = Path(args.path)
        if not p.exists():
            print(f'not found: {p}', file=sys.stderr)
            return 2
        text = p.read_text(encoding='utf-8')

    issues = [x for x in analyze(text) if x['severity'] not in args.ignore]

    if args.json:
        print(json.dumps(issues, ensure_ascii=False, indent=2))
    else:
        if not issues:
            print('✅ CLEAN - no terminology violations against the 2-tier standard.')
        else:
            by_sev: dict[str, int] = {}
            for x in issues:
                by_sev[x['severity']] = by_sev.get(x['severity'], 0) + 1
            print(f'❌ {len(issues)} issue(s): ' +
                  ', '.join(f'{k}={v}' for k, v in by_sev.items()))
            print('-' * 64)
            for x in issues:
                loc = f'L{x["line"]}'
                print(f'[{x["severity"]:<6}] {loc:<6} {x["msg"]}')
            print('-' * 64)
            print('TIER1 = 1925 wording (highest) · TIER2 = churchofgod · '
                  'CASE = capitalisation · FOREIGN = non-VI token')

    return 1 if (args.strict and issues) else 0


if __name__ == '__main__':
    raise SystemExit(main())
