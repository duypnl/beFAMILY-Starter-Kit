---
name: Lint Wiki
description: Rà soát sức khoẻ wiki của Second Brain, trả về danh sách vấn đề. Không tự sửa hàng loạt.
description_en: "Audit the health of the Second Brain wiki and hand back a list of problems. Never mass-edits on its own."
group: AI
---

# LINT - health-check wiki (chỉ CHECKLIST)

## Khi nào dùng

Kích hoạt khi người dùng nói những câu như: "health check wiki", "lint wiki", "wiki có
lỗi gì không", "rà soát bộ não".

Quét danh sách file từ `wiki/index.md` kết hợp quét đệ quy các thư mục tri thức của beFAMILY (`10 FAITH/`, `20 LIFE/`, `30 WORK/`, `40 KNOWLEDGE/`, `50 OUTPUTS/`) để phát hiện 8 loại vấn đề:
1. Mâu thuẫn giữa các trang tri thức (gồm cả section `## Mâu thuẫn` ghi nhận trước mà chưa giải).
2. Stale claim (trang tri thức cũ trong beFAMILY chưa cập nhật theo source mới).
3. Orphan (trang tri thức trong beFAMILY không có inbound `[[link]]` từ bất kỳ trang nào khác).
4. Missing (khái niệm được nhắc tới nhiều nơi trong beFAMILY nhưng chưa được tạo file gốc và chưa đăng ký vào index).
5. Broken `[[wikilink]]` (liên kết trỏ đến file không tồn tại trong vault).
6. Trùng lặp (2 trang tri thức có nội dung gần giống nhau -> đề xuất merge).
7. Gap (vùng kiến thức mỏng, cần thêm source / web search).
8. Open-question tồn lâu trong `wiki/_open-questions.md`.

NGUYÊN TẮC VÀNG: chỉ TRẢ VỀ DANH SÁCH có đánh số. TUYỆT ĐỐI KHÔNG tự sửa 50 chỗ một lúc. Người dùng ưu tiên rồi ra lệnh sửa từng cái (tránh mất kiểm soát audit).
