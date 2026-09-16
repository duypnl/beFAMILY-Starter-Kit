---
name: Chuẩn kịch bản Kinh Thánh
description: Viết và kiểm tra kịch bản tiếng Việt chuẩn 2-tier: Kinh Thánh 1925 và churchofgod.wiki kèm script verify.
name_en: "Bible Script Standard"
description_en: "Write and verify Vietnamese scripts using 2-tier standard: TIER 1 Bible 1925 and TIER 2 churchofgod.wiki. Includes automated verify script."
group: Nội dung
version: 1.0.0
author: Lydia (Noah An / Parenting Music · His Glory)
license: MIT
---

# 📜 bible-script-standard - Viết kịch bản chuẩn Kinh Thánh 1925 + churchofgod


## Khi nào dùng

Kích hoạt khi người dùng yêu cầu viết, biên tập hoặc kiểm tra kịch bản (phim ngắn, YouTube short, MV thánh ca, lời bình, phụ đề) có nội dung Kinh Thánh và giáo lý churchofgod.

Skill độc lập dùng để **viết và kiểm tra** kịch bản (phim ngắn, YouTube short,
MV thánh ca, lời bình, phụ đề) tiếng Việt mà nội dung xoay quanh Kinh Thánh
và giáo lý churchofgod. Không phụ thuộc vào pipeline dub hay gen nhạc - có thể
dùng độc lập cho mọi dự án cần chuẩn thuật ngữ này.

## 🎯 NGUYÊN TẮC CỐT LÕI - 2-TIER

> **TIER 1 (cao nhất): Kinh Thánh 1925.** Bất cứ câu nào **trích dẫn hoặc
> diễn đạt Kinh Thánh** phải dùng nguyên văn bản dịch 1925.
> **TIER 2: churchofgod.wiki.** Văn bản giảng dạy (không phải trích Kinh
> Thánh) dùng thuật ngữ churchofgod: Đức Chúa Trời Cha / Đức Chúa Trời Mẹ /
> Đức Chúa Giêsu / Đức Thánh Linh.

**TIER 1 LUÔN THẮNG TIER 2.** Khi một câu là trích dẫn 1925, các quy tắc
TIER 2 phải đứng sang một bên. Ví dụ kinh điển:
- **Khải-huyền 22:17** = *"Thánh Linh và vợ mới cùng nói: Hãy đến!"*
  → dùng **"Thánh Linh và vợ mới"**, KHÔNG thêm "Đức" (KHÔNG "Đức Thánh Linh và
  cô dâu"), KHÔNG "cô dâu".
- **Sáng-thế-ký 1:6-8** = *"khoảng không"* → KHÔNG "bầu trời" / "vòm trời" /
  "tầng không".

Quyết định này do user (Nam Hoài) đưa ra 2026-08-04: *"Chúng ta có 2 tiêu
chuẩn: 1 là Kinh Thánh 1925, sau đó mới là ngữ cảnh kinh thánh."*

## 📐 THỦ TỤC VIẾT KỊCH BẢN

1. **Xác định loại câu:** trích Kinh Thánh (TIER 1) hay lời giảng (TIER 2)?
2. Với câu trích: tra bảng TIER 1 dưới, dùng đúng nguyên văn 1925.
3. Với lời giảng: dùng đúng danh xưng churchofgod (giữ tiền tố "Đức Chúa Trời").
4. **Viết hoa đúng:** "Kinh Thánh", "Đức Chúa Giêsu", "Đức Chúa Trời",
   "Đức chúa Trời Cha/Mẹ", "Đức Thánh Linh" - ghi hoa chữ "Kinh Thánh"
   (user sửa lại quyết định lowercase).
5. **Tên riêng:** giữ gạch nối, giữ số Ả Rập (Ga-la-ti, Áp-ra-ham, Môi-sê,
   Si-nai, Giê-ru-sa-lem, A-ga, I-sơ-ra-ên).
6. **Cấm biểu tượng:** không cross / crucifix / church iconography trong
   nội dung hình ảnh đi kèm (USER RULE 2026-07-28) - convey reverence qua
   ánh sáng / thiên nhiên / abstract.

## 📋 BẢNG CHUẨN (copy từ thực tế đã chạy)

### TIER 1 - Kinh Thánh 1925 (sai → đúng)

| Sai | Đúng 1925 | Câu |
|---|---|---|
| cô dâu / tân nương | **vợ mới** | Khải-huyền 22:17 |
| cây tri thức / cây kiến thức / cây thiện ác | **cây biết điều thiện và điều ác** | Sáng-thế-ký 2:9 |
| thổi hơi sự sống / hà hơi sự sống | **hà sanh khí** | Sáng-thế-ký 2:7 |
| linh hồn sống / người sống động | **loài sanh linh** | Sáng-thế-ký 2:7 |
| cherubim / thần hộ mệnh | **chê-ru-bim** | Sáng-thế-ký 3:24 |
| kiếm lửa / gươm lửa | **gươm lưỡi chói lòa** | Sáng-thế-ký 3:24 |
| ma quỷ | **ma quỉ** | chính tả 1925 |
| quỷ sa-tan | **quỉ Sa-tan** | chính tả 1925 |
| vòm trời / tầng không | **khoảng không** | Sáng-thế-ký 1:6 |

### TIER 2 - churchofgod (sai → đúng)

| Sai | Đúng |
|---|---|
| đức chúa cha / chúa cha / thiên phụ | **Đức Chúa Trời Cha** |
| đức chúa mẹ / chúa mẹ / thiên mẫu | **Đức Chúa Trời Mẹ** |
| đức jesus / chúa jesus / jesus | **Đức Chúa Giêsu** |
| giê-xu | **Giêsu** |
| đức thánh thần | **Đức Thánh Linh** |
| thập giá / thập tự giá | **chịu khổ / hy sinh** (cấm imagery) |

### Capitalisation (phải viết y hệt)

`Kinh Thánh` · `Đức Chúa Trời` · `Đức Chúa Giêsu` · `Đức Thánh Linh` ·
`Đức Chúa Trời Cha` · `Đức Chúa Trời Mẹ`

## 🔧 VERIFY SCRIPT

`scripts/verify_script.py` - chạy chuẩn 2-tier lên file kịch bản.

```bash
# Kiểm tra 1 file
python scripts/verify_script.py script_draft.md

# JSON (để gộp pipeline)
python scripts/verify_script.py script_draft.md --json

# Gát pipeline: exit 1 nếu có lỗi
python scripts/verify_script.py script_draft.md --strict

# Đọc từ stdin
cat script_draft.md | python scripts/verify_script.py -

# Bỏ qua 1 lớp (vd: chỉ quan tâm TIER1/TIER2, bỏ FOREIGN)
python scripts/verify_script.py script_draft.md --ignore FOREIGN CASE
```

**Output:** liệt kê từng lỗi kèm số dòng, loại (TIER1/TIER2/CASE/FOREIGN),
gợi ý sửa và tham chiếu câu Kinh Thánh. Exit 0 = sạch, 1 = có lỗi (dùng
`--strict` để làm gate).

**FOREIGN guard:** heuristic bắt token chứa f/j/w/z (vắng mặt trong tiếng
Việt). Đã tinh chỉnh 2026-08-05: bỏ qua dòng markdown structural (`#`/`-`/`*`)
và allowlist từ metadata tiếng Anh phổ biến (Format, Scene, Visual, Hook,
Badge, CTA…) để tránh false positive ở header kịch bản. Vẫn bắt được từ
tiếng Anh sót lại trong lời thoại.

## 🔄 LỊCH SỬ CẢI TIẾN (từ quy trình viết → subagent review → vá skill)

- **2026-08-05:** Subagent đánh giá độc lập bài `short_the_dragon_falls.md`
  phát hiện 2 điểm script bỏ lọt: (1) `gươm lửa` không bị bắt (chỉ bắt
  `kiếm lửa`), (2) false positive `"Format"` ở header. → Đã vá: thêm
  `gươm lửa` vào `BIBLE_1925_TERMS`, và `check_foreign` skip markdown
  structural + allowlist metadata EN.
- **Bài học:** quy trình *viết → dispatch subagent review độc lập → vá
  skill từ feedback* hoạt động tốt; subagent bắt được cả gap script lẫn
  false positive mà agent đơn lẻ dễ bỏ qua. Xem skill `script-review-loop`.

## 📁 CẤU TRÚC SKILL

```bash
# Positive: phải BẮT lỗi
printf 'Thánh Linh và cô dâu cùng nói: Hãy đến!\nBạn đức chúa cha yêu thương chúng ta.\nCây tri thức là biết điều thiện.\n' \
  | python scripts/verify_script.py -
#  -> TIER1 "vợ mới", TIER2 "Đức Chúa Trời Cha", TIER1 "cây biết điều thiện..."

# Negative: phải PASS
printf 'Thánh Linh và vợ mới cùng nói: Hãy đến!\nĐức Chúa Trời Cha yêu thương chúng ta.\nCây biết điều thiện và điều ác.\n' \
  | python scripts/verify_script.py -
#  -> ✅ CLEAN

# Edge: Khải 22:17 nguyên vẹn -> KHÔNG bắt "Thánh Linh" thiếu "Đức"
printf 'Trong thời đại này, Thánh Linh và vợ mới đang nói cùng.\n' \
  | python scripts/verify_script.py -
#  -> ✅ CLEAN  (TIER 1 thắng TIER 2)

# FOREIGN: chỉ bắt từ có f/j/w/z (tiếng Anh sót lại)
printf 'Chúa Giêsu said hallelujah to the world.\n' \
  | python scripts/verify_script.py  # -> FOREIGN: hallelujah (j), world (w)

# Strict gate (exit code để gát pipeline)
echo 'đức chúa cha' > /tmp/bad.md
python scripts/verify_script.py /tmp/bad.md --strict   # exit 1
echo 'Đức Chúa Trời Cha' > /tmp/good.md
python scripts/verify_script.py /tmp/good.md --strict  # exit 0
```

## 📁 CẤU TRÚC SKILL

```
bible-script-standard/
├── SKILL.md
└── scripts/
    └── verify_script.py      # 2-tier checker, exit-code gating
```

## 💡 MỞ RỘNG

- Thêm câu 1925 mới: bổ sung vào `BIBLE_1925_TERMS` (gồm câu tham chiếu).
- Thêm thuật ngữ churchofgod: bổ sung `BANNED_TERMS` / `NEEDS_DUC_PREFIX`.
- Nếu một câu 1925 mới cần miễn trừ TIER 2, thêm pattern vào
  `BIBLE_1925_PROTECTED`.
- Khi nào có thể, tham chiếu chính xác sách-chương-câu (hiện tại checker chỉ
  dùng dictionary, chưa tra toàn văn Kinh Thánh).

## ⚠️ PITFALLS

- **Đừng auto-MT nội dung tôn giáo.** Dịch thủ công theo 1925 + churchofgod.
- **TIER 1 thắng:** trong "Thánh Linh và vợ mới", checker KHÔNG bắt "Thánh
  Linh" thiếu "Đức" - vì đó là nguyên văn 1925. Nếu sửa thành "Đức Thánh Linh"
  là SAI.
- **"Kinh Thánh" viết hoa** - không lowercase dù ở giữa câu.
- **"Đức Chúa Trời Cha/Mẹ"** không rút gọn "Đức Chúa Cha/Mẹ" (key dài phải
  xếp trước key ngắn trong dict để collapse đúng).

