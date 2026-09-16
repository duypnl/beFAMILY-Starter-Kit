---
name: agemem
description: Quản trị bộ nhớ hợp nhất ngắn hạn (STM) và dài hạn (LTM) cho AI Agent cục bộ theo chuẩn AgeMem (ACL 2026, arXiv:2601.01885).
---

# Kỹ Năng Quản Trị Bộ Nhớ Hợp Nhất (AgeMem)

Kỹ năng này hiện thực hóa mô hình quản trị bộ nhớ 2 tầng chuẩn **AgeMem** (arXiv:2601.01885) với 6 công cụ điều phối chủ động dòng chảy ngữ cảnh (Context Management) và lưu trữ dữ liệu bền vững (Long-Term Memory).

## 1. Khi nào nên dùng
- Khi phiên làm việc của AI Agent kéo dài và context window chạm ngưỡng cảnh báo (>70%), cần chủ động nén (`Summary_context`) hoặc lọc nhiễu (`Clear_context`).
- Khi cần phát hiện, trích xuất và lưu trữ các quyết định, chính sách, dữ liệu cố định vào kho bộ nhớ vĩnh viễn (`Add_memory`, `Update_memory`).
- Khi cần loại bỏ các thông tin sai lệch, lỗi thời hoặc mâu thuẫn theo mã định danh ID (`Delete_memory`).

## 2. Ma trận 6 công cụ tác tử chuẩn AgeMem
1. **`Summary_context` (STM):** Nén hội thoại lịch sử thành tóm tắt logic súc tích khi context bị phình to.
2. **`Clear_context` (STM):** Loại bỏ các phân tích trung gian, dữ liệu rác không còn giá trị sau khi đã hoàn thành bước suy luận.
3. **`Retrieve_memory` (STM):** Kéo các mẩu tri thức liên quan từ kho LTM vào context hiện tại đúng lúc cần thiết.
4. **`Add_memory` (LTM):** Thêm sự kiện hoặc quy tắc mới vào cơ sở dữ liệu bền vững (SQLite FTS5 / `sqlite-vec`).
5. **`Update_memory` (LTM):** Cập nhật dữ liệu cũ khi có sự thay đổi (giá gói dịch vụ, tiến độ dự án).
6. **`Delete_memory` (LTM):** Xóa triệt để bản ghi đã bị hủy bỏ để chống ảo giác mâu thuẫn.

## 3. Quy trình vận hành tích hợp cùng Zero-Mem
- **Tầng Xác Định (Deterministic Ground Truth):** Sử dụng `zero-mem` để quét nhanh dữ liệu thô với độ trễ < 38ms và 0 token tiêu thụ.
- **Tầng Nhận Thức (Cognitive Context Control):** Sử dụng `agemem` để duy trì ngữ cảnh hội thoại thông minh, không bị nghẽn cửa sổ chú ý và không quên sở thích của người dùng.
