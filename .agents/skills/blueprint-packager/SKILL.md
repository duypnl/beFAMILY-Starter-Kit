---
name: blueprint-packager
description: Quy trình bóc tách toàn diện trọn gói (All-in-One Full-Option Reverse Engineering), bảo toàn bản gốc bất biến (Golden Master Immutability) và đóng gói Master Blueprint chuẩn mực từ bất kỳ website/hệ sinh thái nào.
---

# BLUEPRINT PACKAGER & REVERSE-ENGINEERING ENGINE

Kỹ năng này chuẩn hóa quy trình **Bóc tách toàn diện trọn gói (All-in-One Full-Option Reverse Engineering)** từ bất kỳ website, phễu bán hàng hoặc hệ sinh thái số nào, bảo toàn nguyên bản dữ liệu theo nguyên lý **Bản gốc bất biến (Golden Master Immutability)** và đóng gói thành hệ thống Master Blueprint chuẩn mực phục vụ tra cứu, phân tích đối chuẩn và tái sử dụng.

---

## 1. NGUYÊN TẮC CỐT LÕI (CORE PRINCIPLES)

1. **Bảo toàn trung thực 100% nguyên bản (Verbatim & Structural Fidelity):**
   * Thu thập chính xác toàn văn nội dung, mã nguồn giao diện, trường dữ liệu, cấu trúc form và kịch bản tự động hóa của đối tượng mục tiêu.
   * Không tự ý suy diễn, không bóp méo và không lồng ghép thông tin riêng của dự án triển khai vào bản lưu trữ gốc.
2. **Bản gốc bất biến (Golden Master Immutability):**
   * Toàn bộ dữ liệu thô (Raw Text / HTML Dumps) và bộ ghi chú phân tích Master Blueprint được thiết lập ở chế độ **Chỉ đọc (Read-Only)**.
   * Mọi hoạt động khai thác, điều chỉnh hoặc bản địa hóa sau này bắt buộc phải thực hiện trên một bản sao độc lập (Instance / Fork / Branch), không bao giờ ghi đè lên Master Blueprint.
3. **Thực thi trọn gói Full Option (Zero-Muda Execution):**
   * Một câu lệnh duy nhất kích hoạt trọn bộ quy trình: Quét hạ tầng -> Cào sitemap -> Bóc tách copy -> Bóc tách form/popup/widgets -> Đóng gói bộ hồ sơ.
4. **Quy chuẩn định dạng:**
   * Tuyệt đối không sử dụng ký tự gạch ngang dài (em dash '—' hoặc '–') trong toàn bộ tài liệu và mã nguồn. Sử dụng '-', ':', hoặc '->'.

---

## 2. QUY TRÌNH 5 GIAI ĐOẠN TÁC CHIẾN (THE 5-PHASE FRAMEWORK)

```
[Giai Đoạn 0: Quét Vân Tay Công Nghệ & Hạ Tầng]
  -> [Giai Đoạn 1: Khám Phá 100% Sitemap & Lập Cây Kiến Trúc]
  -> [Giai Đoạn 2: Bóc Tách Toàn Văn Nội Dung & Kịch Bản Bán Hàng]
  -> [Giai Đoạn 3: Bóc Tách Form, Popup, Order Form, Calendar & Widgets]
  -> [Giai Đoạn 4: Đóng Gói Bộ Hồ Sơ Master Blueprint Bất Biến (00 - 10)]
```

### Giai Đoạn 0: Quét Vân Tay Công Nghệ (Tech-Stack Fingerprinting)
Quét và ghi nhận toàn bộ hạ tầng kỹ thuật nền tảng của website mục tiêu:
* **Nền tảng CMS / CRM / Funnel:** GoHighLevel, ClickFunnels, WordPress / WooCommerce, Shopify, Webflow, Kajabi, v.v.
* **Cổng thanh toán & Checkout:** Stripe Elements, PayPal, Authorize.net, NMI, Cổng nội địa.
* **Hệ thống Tiếp thị liên kết (Affiliate):** FirstPromoter, Rewardful, Post Affiliate Pro, v.v.
* **Hạ tầng Email & Máy chủ gửi tin:** Mailgun, SendGrid, Postmark, Amazon SES, v.v.
* **Hệ thống Đo lường & Tracking:** Google Tag Manager, GA4, Meta Pixel, TikTok Pixel, Hyros, TripleWhale.

### Giai Đoạn 1: Khám Phá 100% Sitemap & Lập Sơ Đồ Cây Kiến Trúc
* Quét và trích xuất toàn bộ danh mục URL: Trang chủ, landing pages, bảng giá, trang đặt lịch, trang webinar, cổng đăng ký, bài viết chuyên sâu (blog), trang hỗ trợ và cụm chính sách pháp lý.
* Lập bảng thống kê định lượng (STT, URL, Phân loại, Trọng số chuyển đổi).
* Trực quan hóa cấu trúc liên kết và luồng hành trình người dùng bằng **Mermaid Architecture Diagram**.

### Giai Đoạn 2: Bóc Tách Toàn Văn Nội Dung & Kịch Bản Bán Hàng (Sales Copy & Offer)
* **Khung thông điệp chính:** Tiêu đề chính (Headlines), tiêu đề phụ (Sub-headlines), các khối dẫn dắt (Hooks).
* **Cấu trúc lời chào hàng (The Offer Stack):** Chi tiết từng thành phần trong gói sản phẩm/dịch vụ, định giá niêm yết, quà tặng kèm (Bonuses), cam kết bảo hành/hoàn tiền (Guarantees).
* **Bằng chứng xã hội & Xử lý từ chối:** Lời chứng thực khách hàng (Testimonials), các câu hỏi thường gặp (FAQs), kịch bản hóa giải rào cản mua hàng.

### Giai Đoạn 3: Bóc Tách Tài Sản Chuyển Đổi (Forms, Popups, Order Forms & Widgets)
Bóc tách chính xác toàn bộ thành phần tương tác:
* **Order Forms:** Cấu trúc 1 bước hoặc 2 bước (2-Step Order Form), danh mục trường thông tin (Fields), sản phẩm chính, sản phẩm mua thêm (Order Bumps), chính sách điều khoản.
* **Booking Calendars & Surveys:** Lịch hẹn trực tuyến, múi giờ, danh sách câu hỏi sàng lọc/khảo sát đầu vào (Intake Questionnaire).
* **Popups & Triggers:** Modal popup đăng ký, popup giữ chân khi thoát trang (Exit-Intent), banner thông báo, quy tắc trì hoãn thời gian (Delay Triggers).
* **Interactive Widgets:** Hộp chat trực tuyến (Chat Widget), form thu thập feedback, nhúng video player.
* **Backend Automations ngầm:** Kịch bản email nuôi dưỡng, SMS nhắc hẹn, quy trình cứu giỏ hàng bỏ quên (Cart Abandonment), quy tắc phân loại Tag.

### Giai Đoạn 4: Đóng Gói Bộ Hồ Sơ Master Blueprint Chuẩn Hóa
Hệ thống được đóng gói thành 2 khối dữ liệu độc lập:

1. **Khối Dữ Liệu Thô Bất Biến (Raw Archive):**
   * `sources/[domain-name]/full-site-content-archive.md` (Toàn văn 100% nội dung của toàn bộ sitemap).
   * `sources/[domain-name]/raw_pages/` (Các tệp trích xuất riêng lẻ từng trang).
   * `sources/[domain-name]/sitemap-raw.md` (Danh mục URL gốc).

2. **Khối Hồ Sơ Tri Thức Phân Tích Chuẩn (11 Bộ Tài Liệu Chuẩn 00 - 10):**
   * `00 - Tổng Quan & Hồ Sơ Năng Lực [Tên Website/Doanh Nghiệp].md`
   * `01 - Bản Đồ Sitemap & Cấu Trúc Hệ Thống.md`
   * `02 - Phân Tích Mô Hình Kinh Doanh & Funnel Architecture.md`
   * `03 - Bảng So Sánh Benchmark Đối Chiếu Tính Năng & Định Giá.md`
   * `04 - Bản Phân Tích Toàn Văn Copy Bán Hàng & The Offer Stack.md`
   * `05 - Khung Tri Thức & Động Cơ Tăng Trưởng Chuyển Đổi.md`
   * `06 - Cẩm Nang Kỹ Thuật & Bài Viết Chuyên Sâu Blog.md`
   * `07 - Quy Trình Kèm Cặp & Onboarding Triệt Tiêu Churn.md`
   * `08 - Bản Đồ Khai Thác & Lộ Trình Tái Tạo Hệ Thống.md`
   * `09 - Master Blueprint Xây Dựng Hệ Thống Bản Chuẩn.md`
   * `10 - Bản Phân Tích & Sao Chép Toàn Diện Hệ Thống Form, Popup, Order Form & Calendar.md`

---

## 3. CÁCH THỨC SỬ DỤNG VÀ KÍCH HOẠT (USAGE & INVOCATION)

Người dùng chỉ cần cung cấp URL mục tiêu kèm yêu cầu bóc tách.

### Cú Pháp Chuẩn:
> **`"Dùng skill blueprint-packager bóc tách toàn diện website [URL]"`**

*Ví dụ:*
* `"Dùng skill blueprint-packager bóc tách toàn diện website https://www.salesprocess.com/"`
* `"Dùng skill blueprint-packager bóc tách toàn diện website https://clickfunnels.com/"`
* `"Dùng skill blueprint-packager bóc tách toàn diện website https://www.hubspot.com/"`

### Kết Quả Đầu Ra Mặc Định:
1. Bản lưu trữ thô 100% nội dung sitemap tại `sources/`.
2. Trọn bộ 11 tài liệu phân tích Master Blueprint (từ Note 00 đến Note 10).
3. Bản đồ kiến trúc hệ thống dạng Mermaid Diagram.
4. Bảng tổng hợp mã nhúng, trường dữ liệu form, popup và kịch bản automation.