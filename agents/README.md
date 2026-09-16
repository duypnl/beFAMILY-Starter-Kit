# Bản Đồ Đội Ngũ 12 AI Agent & Cây Nhân Sự Chuyên Sự (beFAMILY OS)

Hệ thống được thiết kế theo mô hình **Đa tác tử phân tầng (Hierarchical Multi-Agent System)**, điều phối bởi **beONE** và phân thành 2 khối lớn: **Khối Cá Nhân (beLIFE)** và **Khối Doanh Nghiệp (beWORK)**.

---

## 🏛️ Sơ Đồ Cấu Trúc Đội Ngũ

`	ext
                               ┌───────────────────────────┐
                               │           beONE           │
                               │  (Hạt Nhân Điều Phối OS)  │
                               └──────┬─────────────┬──────┘
                                      │             │
            ┌─────────────────────────┴──┐       ┌──┴─────────────────────────┐
            │       KHỐI CÁ NHÂN         │       │      KHỐI DOANH NGHIỆP     │
            │      (Hệ thống beLIFE)     │       │      (Hệ thống beWORK)     │
            ├────────────────────────────┤       ├────────────────────────────┤
            │ 1. Caleb  - Thể lực & Sức  │       │ 7.  Daniel - Pháp chế CLO  │
            │ 2. John   - Cảm xúc & Tâm  │       │ 8.  Tim    - Nhân sự CHRO  │
            │ 3. Luke   - Tri thức & Trí │       │ 9.  Lydia  - Doanh thu CRO │
            │ 4. Ruth   - Gia đình & Con │       │ 10. Joseph - Tài chính CFO │
            │ 5. Boaz   - Gia sản & Tiền │       │ 11. Noah   - Công nghệ CTO │
            │ 6. Mark   - Gắn kết & Bạn  │       │ 12. Hiram  - Nguồn vốn CSO │
            └────────────────────────────┘       └────────────────────────────┘
`

---

## 📂 Danh Sách Phòng Ban & Vị Trí Trực Thuộc

### A. Chỉ Huy Trưởng
* [[agents/00-beONE-Orchestrator|00. beONE]]: Hạt nhân tiếp nhận, phân rã công việc và điều phối toàn bộ các Agent con.

### B. Khối Cá Nhân & Đời Sống (gents/beLIFE/)
1. [[agents/beLIFE/01-Caleb-beFIT|01. Caleb (beFIT)]]: Thể lực, nhịp sinh học, giấc ngủ sâu, dinh dưỡng và rèn luyện thể thao.
2. [[agents/beLIFE/02-John-beHEART|02. John (beHEART)]]: Quản trị cảm xúc, giải tỏa áp lực và thái độ sống tích cực.
3. [[agents/beLIFE/03-Luke-beWISE|03. Luke (beWISE)]]: Quản trị tri thức, nghiên cứu logic, Second Brain và đọc sách.
4. [[agents/beLIFE/04-Ruth-beHOME|04. Ruth (beHOME)]]: Quản trị gia đình, gia phong nề nếp, thực đơn và nuôi dạy con cái.
5. [[agents/beLIFE/05-Boaz-beWEALTH|05. Boaz (beWEALTH)]]: Quản trị gia sản, dòng tiền cá nhân, ngân sách sinh hoạt 6 hũ.
6. [[agents/beLIFE/06-Mark-beBOND|06. Mark (beBOND)]]: Quản trị mối quan hệ chất lượng, bạn đồng hành và kết nối đối ngoại.

### C. Khối Doanh Nghiệp & Quản Trị C-Level (gents/beWORK/)
7. **Phòng Pháp Chế (CLO)** - [[agents/beWORK/07-Daniel-CLO/Daniel-CLO|Daniel]]:
   * Zadok-Labor-Legal: Chuyên viên Pháp lý lao động & Thỏa thuận bảo mật NDA.
   * AI-Contract-Reviewer: Rà soát hợp đồng 5 lớp rủi ro trong 30s.
   * AI-Legal-Research: Tra cứu văn bản pháp luật, án lệ và chuẩn mực quốc tế.

8. **Phòng Nhân Sự & Tổ Chức (CHRO)** - [[agents/beWORK/08-Tim-CHRO/Tim-CHRO|Tim]]:
   * Silas-Recruiter: Chuyên viên Tuyển dụng & Săn đầu người (Talent Acquisition).
   * Ezra-Trainer: Chuyên viên Đào tạo, Hội nhập 14 ngày & Số hóa SOPs.
   * Asaph-CB-Salary: Chuyên viên Lương 3P, OKR/KPI SMART & Cổ phần ESOP.

9. **Khối Doanh Thu & Tiếp Thị (CRO)** - [[agents/beWORK/09-Lydia-CRO/Lydia-CRO|Lydia]]:
   * Caleb-Trade-Sales: Trưởng Kênh Phân phối truyền thống GT & Chuỗi Siêu thị MT, Horeca.
   * Priscilla-Ecom: Trưởng Kênh Thương mại số (Shopee, TikTok Shop) & App Food.
   * Cornelius-B2B: Trưởng Kênh Khách hàng Doanh nghiệp B2B & Dự án.
   * Philemon-Franchise: Trưởng Kênh Chuỗi Điểm bán & Nhượng quyền thương mại.
   * Jason-Export: Trưởng Kênh Xuất khẩu B2B & Thương mại quốc tế.
   * Apollos-Offer-Closer: Chuyên viên Đóng gói Offer & Kịch bản bán hàng OCCSS.
   * Philip-Performance-Ads: Chuyên viên Quảng cáo trả phí (Google, Meta, TikTok Ads).
   * Tertius-SEO-Content: Chuyên viên SEO/Website & Nội dung hữu cơ.
   * Barzillai-Customer-Care: Chuyên viên Chăm sóc khách hàng VIP & Giữ chân (Retention).

10. **Khối Tài Chính & Kế Toán (CFO)** - [[agents/beWORK/10-Joseph-CFO/Joseph-CFO|Joseph]]:
    * Matthew-Managerial-Tax: Kế toán Quản trị, Thuế & P&L từng kênh phân phối.
    * Ezra-Inventory-AR: Kế toán Kho vận, Đối soát công nợ gối đầu & COD.
    * Hezekiah-Internal-Audit: Chuyên viên Kiểm toán nội bộ & Chuẩn bị Big4.
    * Obadiah-Banking-Treasury: Chuyên viên Quan hệ ngân hàng, Tín dụng & 6 Hũ doanh nghiệp.

11. **Khối Công Nghệ & Tự Động Hóa (CTO)** - [[agents/beWORK/11-Noah-CTO/Noah-CTO|Noah]]:
    * Bezaleel-CRM-Automation: Kỹ sư Tự động hóa CRM GoHighLevel & AI Voice/Webhook.
    * Oholiab-Data-IT: Chuyên viên Quản trị dữ liệu Omnichannel & IT Helpdesk.
    * AI-Agentic-CSKH: Tác tử AI trực chat và chốt lịch hẹn tư vấn 24/7.

12. **Khối Nguồn Vốn & Pre-IPO (CSO)** - [[agents/beWORK/12-Hiram-CSO/Hiram-CSO|Hiram]]:
    * Solomon-Valuation-MA: Chuyên viên Định giá doanh nghiệp & Thẩm định M&A.
    * Mordecai-Roadshow-Events: Chuyên viên Sự kiện, Roadshow & Xúc tiến thương mại.
    * Esther-PR-Crisis: Chuyên viên Quan hệ báo chí PR & Xử lý khủng hoảng truyền thông.

---

## 🎯 Cách Kích Hoạt & Sử Dụng

1. **Nhắn cho beONE (Khuyến nghị số 1):** Chỉ cần mô tả công việc, beONE sẽ tự động triệu hồi đúng Agent và các nhân viên chuyên sự phụ trách.
2. **Gọi trực tiếp tên Agent:** Ví dụ *"Lydia phân tích giúp tôi chiến lược chiết khấu MT"* hoặc *"Joseph dự báo dòng tiền 13 tuần"*.
3. **Họp Hội đồng Cố vấn (Mind Council):** Dùng lệnh *"Họp Hội đồng Joseph, Daniel, Lydia và Hiram phản biện kế hoạch mở rộng chi nhánh"*.
