---
name: commerce-agent
description: Thiết lập và điều phối tác tử thương mại thông minh (Shopping & Merchant Agents) chuẩn Anthropic & Agentic Commerce Protocol (OpenAI x Stripe).
---

# Kỹ Năng Thương Mại Tác Tử Tự Vận Hành (Commerce-Agent)

Kỹ năng này hiện thực hóa quy trình thiết lập, vận hành và tự động hóa các tác tử thương mại (**Shopping Agent** và **Merchant Agent**) kết nối với hạ tầng CRM (GoHighLevel, Zalo OA), nền tảng bán hàng (Shopify, Medusa) và cổng thanh toán tự động (Stripe, VietQR).

## 1. Khi nào nên dùng
- Khi cần tự động hóa quy trình tư vấn bán hàng, giải đáp sản phẩm và chốt đơn tự động qua kênh chat (Zalo OA, Fanpage, Website Chatbot).
- Khi cần cấu hình luồng báo giá tự động (Auto-Quotation), xuất hợp đồng dịch vụ và tạo mã thanh toán VietQR / Stripe tự động cho các gói tư vấn (BSN, OPA, beTRAIN).
- Khi cần tối ưu hóa tỷ lệ chuyển đổi giỏ hàng (Cart Recovery) và phân tích hành vi mua sắm của khách hàng trong chuỗi F&B / Nông sản.

## 2. Quy trình 4 bước vận hành Commerce Agent
1. **Khám Phá Nhu Cầu & Khớp Lệnh (Semantic Discovery & Intent Mapping):**
   - Lắng nghe yêu cầu của khách hàng bằng ngôn ngữ tự nhiên.
   - Truy vấn danh mục sản phẩm/dịch vụ trong cơ sở dữ liệu để đề xuất phương án tối ưu nhất.
2. **Định Giá Động & Áp Dụng Chính Sách (Dynamic Pricing & Policy Engine):**
   - Kiểm tra phân khúc khách hàng (Khách mới, VIP, Đối tác liên minh).
   - Tự động áp dụng mã khuyến mãi hoặc chiết khấu khối lượng trong phạm vi ngân sách đã ủy quyền.
3. **Khởi Tạo Đơn Hàng & Ủy Quyền Thanh Toán (Agentic Checkout & Settlement):**
   - Sinh đơn hàng chính thức với đầy đủ thông tin SKU, thuế, phí vận chuyển.
   - Tạo liên kết thanh toán an toàn hoặc mã VietQR động kèm cú pháp đối soát tự động.
4. **Hậu Mãi & Đồng Bộ Dữ Liệu (Post-Purchase & CRM Synchronization):**
   - Gửi xác nhận thanh toán thành công và hóa đơn điện tử cho khách hàng.
   - Đồng bộ trạng thái đơn hàng vào CRM (GoHighLevel / Zalo OA) và kích hoạt luồng chăm sóc sau bán.

## 3. Đầu ra chuẩn hóa
- Cấu hình luồng hội thoại bán hàng tự động kết nối qua Webhook.
- Báo cáo phân tích doanh thu, tỷ lệ chốt đơn và biên lợi nhuận ròng của Agent tại `50 OUTPUTS/Marketing/` hoặc `50 OUTPUTS/Finance/`.
