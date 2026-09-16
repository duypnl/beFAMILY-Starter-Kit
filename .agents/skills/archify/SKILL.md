---
name: archify
description: Tạo sơ đồ kiến trúc hệ thống, quy trình nghiệp vụ và luồng dữ liệu tương tác định dạng Single-file HTML/SVG động siêu nét (chuẩn Archify tt-a1i).
---

# Kỹ Năng Thiết Kế Sơ Đồ Kiến Trúc Tương Tác (Archify)

Kỹ năng này cho phép AI Agent chuyển hóa các mô tả văn bản, cấu trúc hệ thống hoặc luồng kinh doanh thành **Sơ đồ Kiến trúc Kỹ thuật Tương tác (Interactive HTML/SVG Diagrams)** với hiệu ứng chuyển động dòng chảy (*Trace Motion*) và khả năng xuất ảnh độ phân giải cao 4x (PNG/SVG/WebP).

## 1. Khi nào nên dùng
- Khi cần vẽ sơ đồ kiến trúc doanh nghiệp, hệ sinh thái SaaS, hạ tầng máy chủ cho hồ sơ tư vấn / IPO.
- Khi cần trực quan hóa luồng dữ liệu (Data-flow), chu trình dòng tiền FP&A hoặc phễu Marketing TOFU-MOFU-BOFU.
- Khi cần xuất biểu đồ chuyên nghiệp vượt trội hơn các hình vẽ Mermaid thô sơ để trình bày trước Hội đồng Quản trị và Nhà đầu tư.

## 2. Các loại sơ đồ hỗ trợ (5 Diagram Types)
1. **Architecture Diagram:** Hệ thống dịch vụ, cơ sở dữ liệu, bộ nhớ đệm, tường lửa và các kết nối phụ thuộc.
2. **Workflow / Process Diagram:** Quy trình xử lý nghiệp vụ theo từng bước (Step-gate / Control Tower).
3. **Sequence Diagram:** Trình tự tương tác giữa người dùng, Webhook, CRM và AI Agent.
4. **Data-flow Diagram:** Dòng chảy dữ liệu từ nguồn thu thập đến kho lưu trữ và báo cáo.
5. **Lifecycle / State Machine:** Vòng đời trạng thái khách hàng (Lead -> MQL -> SQL -> Won) hoặc đơn hàng.

## 3. Quy chuẩn tạo tệp đầu ra
- **Định dạng:** Tạo một file `.html` độc lập (*Self-contained HTML*) tại thư mục `50 OUTPUTS/Diagrams/` hoặc nhúng SVG trực tiếp.
- **Tính năng bắt buộc:** Hỗ trợ chuyển đổi Dark/Light mode, tìm kiếm node, hiển thị tem nhãn rõ ràng và hỗ trợ nút xuất ảnh PNG/SVG chất lượng cao.
