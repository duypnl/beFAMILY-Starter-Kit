# beFAMILY Agent Task Queue (Hàng đợi công việc của Agent)

Tài liệu này đóng vai trò là **Bảng thông điệp (Message Bus)** giúp các AI Agent tự động giao việc và phối hợp với nhau thông qua file Markdown dùng chung.

---

## 🛠️ Quy trình phối hợp (SOP)

1. **Yêu cầu (Codex / Claude -> Antigravity)**:
   * Khi Codex hoặc Claude phát hiện nhu cầu tự động hóa (lặp lại > 3 lần) hoặc cần thay đổi kỹ thuật, Agent đó sẽ tự động chèn một dòng Task mới vào mục **Danh sách Task** bên dưới.
   * Định dạng: `- [ ] @Antigravity: [Yêu cầu chi tiết] | Yêu cầu bởi: @[Codex/Claude] | Ngày: YYYY-MM-DD`
2. **Thực thi (Antigravity -> Hệ thống)**:
   * Khi Antigravity khởi chạy (hoặc được quét định kỳ), Antigravity sẽ đọc file này trước tiên.
   * Phát hiện các task có trạng thái `[ ]` dành cho `@Antigravity`.
   * Chuyển trạng thái thành `[/]` (Đang thực hiện).
   * Viết script trong `automation/` hoặc thay đổi cấu hình.
   * Sau khi hoàn thành và kiểm thử thành công, cập nhật trạng thái thành `[x]` (Đã xong) kèm theo kết quả link đến script.
3. **Tài liệu hóa (Antigravity -> Codex)**:
   * Sau khi Antigravity hoàn thành, Antigravity sẽ tạo một task ngược lại: `- [ ] @Codex: Viết hướng dẫn vận hành (SOP) cho script [tên_script] | Yêu cầu bởi: @Antigravity` để Codex hoàn thiện tài liệu hệ thống.

---

## 📋 Danh sách Task (Task List)

### Việc đang chờ xử lý (Pending Tasks)
*Không có task nào đang chờ.*

### Việc đang thực hiện (In Progress)
*Không có task nào đang thực hiện.*

### Việc đã hoàn thành (Completed Tasks)
- [x] @Antigravity: Thiết lập cơ chế hàng đợi giao việc file-based (`task_queue.md`) | Yêu cầu bởi: @Joseph | Ngày: 2026-08-21 (Kết quả: Đã tạo file `d:\GitHub\beFAMILY\.agents\task_queue.md` và cập nhật chỉ dẫn vận hành).
