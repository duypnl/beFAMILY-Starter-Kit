---
name: Agentic Governance
description: Kiểm soát ranh giới thẩm quyền 5 cấp, tạo Audit Trail chuẩn kiểm toán và bảo vệ an toàn vận hành cho AI Agent trong doanh nghiệp.
description_en: "Enforce 5-level approval hierarchy, generate audit trail metadata, and ensure risk governance for AI agents in enterprise."
group: AI
---

# Agentic Governance — Kỹ Năng Kiểm Soát Thẩm Quyền & Rủi Ro AI Agent

## Khi Nào Dùng

Kích hoạt khi:
- AI chuẩn bị thực thi hoặc đề xuất một hành động có tác động tài chính, ngân sách, nhân sự hoặc pháp lý.
- Cần kiểm tra xem một đề xuất có vi phạm **Ranh giới chính sách (Policy Boundaries)** hay không.
- Cần định tuyến xem đề xuất đó thuộc cấp phê duyệt nào (**Approval Hierarchy**).
- Cần tạo khối dữ liệu **Dấu vết kiểm toán (Audit Trail Metadata)** trước khi ghi log hoặc gửi trình phê duyệt.
- Phát hiện dữ liệu tài chính dị biệt cần quy trình cách ly (Quarantine).

---

## Ma Trận Phân Cấp 5 Cấp Thẩm Quyền

| Cấp Thẩm Quyền | Phạm Vi Quyền Hạn Của AI | Hành Động Của AI Agent |
|---|---|---|
| **Cấp 1: Hoàn toàn tự chủ (Autonomous)** | Đọc dữ liệu, chạy dự báo, phân tích, sinh biểu đồ, kiểm tra lỗi | **Tự động thực thi 100%**, ghi log hệ thống |
| **Cấp 2: Tự chủ trong hạn mức (Bounded)** | Điều chỉnh phân bổ chi phí nội bộ $< 20.000.000$ VNĐ không vượt ngân sách | **Thực thi và gửi thông báo** cho Trưởng phòng |
| **Cấp 3: Có sự tham gia của con người (Human-in-the-loop)** | Thay đổi giá bán, chiết khấu, hạn mức nợ, chi phí từ $20\text{M} - 200\text{M}$ VNĐ | **DỪNG LẠI, sinh Decision Memo** chờ CFO/Giám đốc duyệt |
| **Cấp 4: Phê duyệt Chiến lược (Strategic Approval)** | Thay đổi mục tiêu ngân sách năm, điều chỉnh CAPEX $> 200\text{M}$ VNĐ | **DỪNG LẠI, sinh Báo cáo Tác động** chờ CEO & HĐQT duyệt |
| **Cấp 5: Vùng Cấm Tuyệt Đối (Restricted / Blocked)** | Chuyển tiền ngân hàng, ký hợp đồng pháp lý, sa thải nhân sự | **TỪ CHỐI THỰC THI**, thông báo chỉ con người có thẩm quyền |

---

## Quy Trình 4 Bước Kiểm Soát Rủi Ro

### Bước 1: Phân Loại Tác Vụ & Xác Định Ngưỡng Rủi Ro
- Kiểm tra loại hành động: Read-only vs Financial Action vs Legal Action.
- Tính toán giá trị tác động tài chính (VNĐ hoặc % Gross Margin).

### Bước 2: Kiểm Tra Ranh Giới Chính Sách (Policy Boundary Check)
- Đối chiếu với quy chế tài chính hiện hành của doanh nghiệp:
  - Có vượt hạn mức ngân sách tháng không?
  - Có làm giảm Gross Margin xuống dưới ngưỡng an toàn không?
  - Nếu vi phạm $\rightarrow$ Lập tức phân luồng sang Cấp 3 hoặc Cấp 4.

### Bước 3: Tạo Khối Metadata Dấu Vết Kiểm Toán (Audit Trail Generator)
Mọi đề xuất tài chính phải đính kèm khối YAML chuẩn:
```yaml
audit_trail:
  agent_name: "AI Planning Agent"
  action_type: "PROPOSED_BUDGET_ADJUSTMENT"
  financial_impact_vnd: 45000000
  margin_impact_pct: "+0.8%"
  source_data_verified: true
  risk_level: "MEDIUM"
  approval_level_required: "Level 3 (CFO Approval)"
  status: "WAITING_HUMAN_CONFIRMATION"
```

### Bước 4: Định Tuyến Phê Duyệt (Approval Routing)
- Nếu thuộc **Cấp 1 & 2**: Tiến hành xử lý và ghi nhận nhật ký.
- Nếu thuộc **Cấp 3 & 4**: Trình bày rõ phương án kèm phân tích rủi ro, hỏi ý kiến xác nhận của người dùng trước khi áp dụng vào bất kỳ file kế hoạch nào.
- Nếu thuộc **Cấp 5**: Nhắc nhở người dùng quy định phân quyền pháp lý.
