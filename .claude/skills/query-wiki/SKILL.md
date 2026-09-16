---
name: Query Wiki
description: "Khai thác tri thức trong Second Brain: tổng hợp, so sánh, giả thuyết. Trả lời có trích dẫn."
description_en: "Mine the knowledge held in the Second Brain: synthesis, comparison, hypotheses. Every answer carries citations."
group: AI
---

# QUERY - trả lời từ wiki (có citation, compounding)

## Khi nào dùng

Kích hoạt khi người dùng hỏi/khai thác tri thức trong Second Brain, vd "tổng hợp các
framework về X", "so sánh A vs B vs C", "wiki có gì về Y".

Năm kiểu khai thác: tổng hợp, so sánh, giả thuyết, liệt kê, trực quan hoá. Luôn trả lời
có trích dẫn và lưu lại kết quả giá trị.

1. Đọc bản đồ điều hướng `wiki/index.md` TRƯỚC để định vị đường dẫn các file tri thức trong beFAMILY.
2. Đọc trực tiếp các file tri thức gốc tại các thư mục beFAMILY tương ứng (theo đường dẫn trong index).
3. Nếu không tìm thấy ghi chú tương ứng trong `wiki/index.md`, hãy chủ động sử dụng công cụ `find_by_name` hoặc `grep_search` để quét đệ quy các thư mục số beFAMILY (`10 FAITH/`, `20 LIFE/`, `30 WORK/`, `40 KNOWLEDGE/`, `50 OUTPUTS/`) để tìm kiếm tài liệu (đề phòng trường hợp ghi chú được tạo/di chuyển thủ công chưa kịp cập nhật bản đồ).
4. Thiếu -> đọc `sources/` tương ứng. Vẫn thiếu -> append 1 dòng vào `wiki/_open-questions.md`.
5. Trả lời có trích dẫn rõ ràng dạng `[[Thư mục/Tên file]]` (ví dụ: `[[40 KNOWLEDGE/Business/Value Equation]]`). Nói rõ chỗ nào bộ não chưa cover thay vì tự bịa.
6. Nếu câu trả lời có GIÁ TRỊ TÁI DÙNG (so sánh, phân tích mới) -> đề xuất chưng cất thành 1 trang tri thức gốc mới, lưu vào thư mục beFAMILY thích hợp và đăng ký liên kết vào `wiki/index.md`.

7 dạng câu hỏi chất lượng cao: Tổng hợp (bảng so sánh) · So sánh 3+ (ma trận) · Giả thuyết (phân tích ảnh hưởng) · Gán nhãn/liệt kê · Trực quan hoá (canvas/sơ đồ) · Dịch/chuyển ngữ · Tự kiểm gap (append open-questions).
