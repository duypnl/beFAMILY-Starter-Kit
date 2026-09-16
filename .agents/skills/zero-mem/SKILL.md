---
name: zero-mem
description: Truy xuất và hiệu chuẩn bộ nhớ dài hạn phi token (Zero-Token Deterministic Memory) cho beFAMILY OS và SME CRM.
---

# Kỹ năng Zero-Mem (Zero-Token Memory Retrieval)

Kỹ năng này cho phép AI Agent truy xuất lịch sử, tài liệu và ngữ cảnh từ Vault beFAMILY hoặc cơ sở dữ liệu hội thoại với **0 token tiêu thụ cho tác vụ quản lý bộ nhớ** (theo chuẩn nghiên cứu Xiao et al., arXiv:2607.29377).

## 1. Khi nào nên dùng
- Cần tra cứu lịch sử hội thoại dài hạn hoặc dữ liệu từ `sources/`, `01 - Daily Log/`, `30 WORK/`, `40 KNOWLEDGE/`.
- Muốn bảo toàn 100% nguyên văn dữ liệu gốc, không bị biến dạng do tóm tắt trung gian.
- Cần tối ưu chi phí Opex và giảm độ trễ phản hồi.

## 2. Cách thực thi qua Terminal

Chạy trực tiếp Engine Zero-Mem qua lệnh Node.js:

```powershell
node "d:\GitHub\beFAMILY\automation\zero-mem\zero_mem_engine.js" --query "<từ_khóa_hoặc_thực_thể>"
```

Ví dụ:
```powershell
node "d:\GitHub\beFAMILY\automation\zero-mem\zero_mem_engine.js" --query "beONE CRM GoHighLevel"
```

## 3. Quy trình 4 bước của Zero-Mem
1. **Token-Free Substrate:** Quét kho tài liệu thô và xây dựng đồ thị liên kết.
2. **Query Routing:** Tự động phân loại câu hỏi (thời gian, thực thể, lai ghép).
3. **Dual-View Closure:** Trích xuất kết hợp đồ thị thực thể và ngữ cảnh xung quanh dòng neo.
4. **Deterministic Calibration:** Khử mâu thuẫn thời gian và lọc lệnh injection trước khi đưa vào LLM Reader.
