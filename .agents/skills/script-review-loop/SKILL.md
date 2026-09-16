---
name: Vòng lặp duyệt kịch bản
description: Quy trình viết bản nháp, dispatch subagent đánh giá độc lập và vá skill từ phản hồi.
name_en: "Script Review Loop"
description_en: "Workflow to draft content, dispatch independent review subagents, cross-check results, and patch skills from feedback."
group: AI
version: 1.0.0
author: Lydia (Noah An / Parenting Music)
license: MIT
---

# 🔄 script-review-loop - Viết → Subagent Review → Vá Skill


## Khi nào dùng

Kích hoạt khi người dùng yêu cầu "viết X rồi cho subagent đánh giá", "review độc lập", "kiểm tra chất lượng bởi agent khác", hoặc muốn quy trình tự hoàn thiện kịch bản qua đánh giá chéo.

Pattern tái dùng để sản xuất nội dung **có chất lượng đảm bảo** bằng cách
tách biệt người viết (main agent) và người đánh giá (subagent độc lập).

## 🎯 TẠI SAO CẦN PATTERN NÀY

- Main agent dễ "mù" với chính chuẩn mình viết ra - bỏ lọt lỗi hoặc báo
  false positive.
- Subagent độc lập, có context sạch, ép phải **chạy script thật + đối chiếu
  thủ công**, bắt được cả 2 loại sai trên.
- Feedback từ subagent → vá trực tiếp vào skill → skill ngày càng chuẩn.

Đã chứng minh thực tế 2026-08-05 với `bible-script-standard`: subagent phát
hiện `gươm lửa` không bị checker bắt + false positive `"Format"`, cả 2 đều
được vá vào skill sau review.

## 🔁 QUY TRÌNH 6 BƯỚC

1. **Viết nháp** bằng skill chuyên biệt (vd: `bible-script-standard` cho
   kịch bản Kinh Thánh). Cố ý để bài ở mức "gần chuẩn" (có thể còn 1-2 lỗi).
2. **Chạy verify chính chủ** (main agent) để có baseline đối chiếu.
3. **Dispatch subagent** (role=leaf) với prompt yêu cầu:
   - Load skill liên quan, đọc quy tắc chuẩn.
   - Đọc file nháp.
   - **CHẠY THẬT** script verify, paste output nguyên văn.
   - Đối chiếu từng lỗi với quy tắc (KHÔNG tin mù output).
   - Đánh giá tổng thể + đề xuất bản corrected.
   - ⚠️ Bắt buộc: "PHẢI chạy script thật, KHÔNG được bịa output".
4. **Đối chiếu** kết quả subagent vs main agent - nếu khớp → tin cậy.
5. **Vá skill** từ feedback: thêm từ vào dict, sửa false positive, mở rộng
   guard. Rồi test lại (positive + negative) để xác nhận đã vá.
6. **Sửa bài gốc** nếu cần, verify lại → sạch.

## 📋 PROMPT MẪU CHO SUBAGENT

```
Đánh giá độc lập file: <path>
Bằng skill: <skill_name> (load bằng skill_view)
Script verify: <path_to_script> (chạy: python <script> <file>  và --strict)
Quy tắc chuẩn: trong SKILL.md của skill đó (TIER1/TIER2/CASE/FOREIGN...)

Yêu cầu:
1. Load skill, đọc quy tắc.
2. Đọc file nháp.
3. Chạy script thật (bình thường + --strict), paste output nguyên văn.
4. Đối chiếu từng lỗi với quy tắc - false positive thì nói rõ.
5. Đánh giá: đạt/không đạt, lỗi nào nghiêm trọng nhất.
6. Đề xuất bản corrected.
QUAN TRỌNG: chạy script thật, KHÔNG bịa output. Trả báo cáo markdown.
```

## ⚠️ PITFALLS

- **Subagent bịa output:** luôn yêu cầu "paste output nguyên văn" và main
  agent tự chạy đối chiếu. Nếu subagent báo khác thực tế → bỏ qua.
- **Không vá skill trước khi test:** mọi sửa phải kèm positive + negative
  test, không đoán.
- **Leaf subagent không có delegate/clarify/memory:** chỉ giao việc đánh giá,
  không nhờ nó tự vá skill - main agent làm bước vá.
- **Subagent chạy nền:** dispatch background, không poll; đọc
  `cache/delegation/subagent-summary-*.txt` khi xong.

## 📁 CẤU TRÚC

```
(profile)/skills/script-review-loop/
└── SKILL.md
```
(không cần script - pattern này gọi các skill khác + delegate_task)

## 💡 MỞ RỘNG

- Có thể chạy nhiều subagent song song review các góc độ khác nhau (1 subagent
  check thuật ngữ, 1 check giọng văn, 1 check factual).
- Áp dụng cho mọi skill có checker: `bible-script-standard`, `srt_qa.py`
  (dub pipeline), `no-ai-slop`, `kp-warm-editor`...

