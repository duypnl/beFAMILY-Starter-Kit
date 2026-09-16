---
name: deepseek
description: Kích hoạt mô hình DeepSeek-R1 (deepseek-reasoner) hoặc DeepSeek-V3 (deepseek-chat) cho các bài toán suy luận toán học tài chính, lập trình nâng cao, và rà soát logic pháp lý chi phí siêu thấp.
---

# Kỹ Năng Điều Phối DeepSeek Engine (beFAMILY OS)

Kỹ năng này cho phép beONE và các Trợ lý trong Antigravity gửi trực tiếp prompt hoặc bài toán sang DeepSeek API qua cầu nối `automation/deepseek_bridge.py`.

## 1. Khi nào nên dùng
- Khi giải bài toán tài chính phức tạp, mô hình FP&A, phân rã PVM (Trợ lý Joseph).
- Khi rà soát mã nguồn, debug script hoặc viết thuật toán mới (Trợ lý Noah).
- Khi kiểm tra logic điều khoản hợp đồng và rủi ro pháp lý (Trợ lý Daniel).
- Khi người dùng yêu cầu rõ ràng: "Hỏi DeepSeek...", "Chạy bằng DeepSeek-R1", "Chạy DeepSeek-V3".

## 2. Cách thực thi từ Terminal Antigravity

Sử dụng lệnh `uv run python`:

```powershell
# Chạy DeepSeek-R1 (Suy luận sâu)
uv run python d:\GitHub\beFAMILY\automation\deepseek_bridge.py -p "<Nội dung câu hỏi>" -m deepseek-reasoner

# Chạy DeepSeek-V3 (Chat tốc độ cao & chưng cất tri thức)
uv run python d:\GitHub\beFAMILY\automation\deepseek_bridge.py -p "<Nội dung câu hỏi>" -m deepseek-chat
```
