---
type: standard
domain: system
status: active
tags:
  - system/standards/agents
  - system/architecture/beone
sources:
  - "[[memory/USER.md]]"
---

# Chuẩn Kiến Trúc Đội Ngũ 12 Agent beFAMILY OS

## 1. TỔNG QUAN KIẾN TRÚC
Hệ thống **12 Agent beFAMILY OS** là mô hình đa tác tử chuyên môn hóa sâu, được kết nối xuyên suốt bởi **beMIND (Tâm thế & Động lực lãnh đạo)

```text
                           ┌───────────────────────────┐
                           │          beMIND (Tâm thế & Động lực lãnh đạo)
                           │  (Trục Tâm Linh Bất Biến) │
                           └─────────────┬─────────────┘
                                         │
                           ┌─────────────┴─────────────┐
                           │           beONE           │
                           │  (Hạt Nhân Điều Phối OS)  │
                           └──────┬─────────────┬──────┘
                                  │             │
        ┌─────────────────────────┴──┐       ┌──┴─────────────────────────┐
        │       KHỐI CÁ NHÂN         │       │      KHỐI DOANH NGHIỆP     │
        │      (Hệ thống beLIFE)     │       │      (Hệ thống beWORK)     │
        ├────────────────────────────┤       ├────────────────────────────┤
        │ 1. Caleb  - Thể lực & Sức  │       │ 7.  Joseph - Tài chính CFO │
        │ 2. John   - Cảm xúc & Tâm  │       │ 8.  Lydia  - Doanh thu CRO │
        │ 3. Luke   - Tri thức & Trí │       │ 9.  Daniel - Pháp chế CLO  │
        │ 4. Ruth   - Gia đình & Con │       │ 10. Tim    - Nhân sự CHRO  │
        │ 5. Boaz   - Gia sản & Tiền │       │ 11. Noah   - Công nghệ CTO │
        │ 6. Mark   - Gắn kết & Bạn  │       │ 12. Hiram  - Vốn & Pre-IPO │
        └────────────────────────────┘       └────────────────────────────┘
```

---

## 2. DANH MỤC 12 AGENT CHUYÊN TRÁCH (1-2 ÂM TIẾT)

### A. Trục Tâm Linh & Cốt Lõi
* **`beMIND (Tâm thế & Động lực lãnh đạo)
  - **Mô hình khuyến nghị:** **Claude 3.7 Sonnet (Thinking)** / **Gemini 2.5 Pro**
  - **Lý do & Thế mạnh:** Zero-hallucination, tư duy suy luận logic chuẩn xác tuyệt đối, trung thành 100% văn bản nguồn bất biến.
* **`beONE`**: Hạt nhân tiếp nhận yêu cầu, phân tích bài toán, phân rã công việc và điều phối các Agent con thực thi.
  - **Mô hình khuyến nghị:** **Claude 3.7 Sonnet** / **Gemini 2.5 Pro**
  - **Lý do & Thế mạnh:** Agentic planning vượt trội, khả năng xâu chuỗi multi-agent và điều phối luồng quy trình phức tạp.

### B. Khối Cá Nhân & Đời Sống (beLIFE System)
1. **`Caleb` (`beFIT`)** (2 âm tiết): Thể lực, quản trị nhịp sinh học, giấc ngủ sâu, dinh dưỡng và rèn luyện thể thao bền bỉ.
   - **Mô hình khuyến nghị:** **Gemini 2.5 Flash** / **GPT-4o-mini**
   - **Lý do & Thế mạnh:** Phản hồi tức thì (<1s), phân tích log chỉ số sinh học, tối ưu chi phí (Lean OPEX gần như 0đ).
2. **`John` (`beHEART`)** (1 âm tiết): Quản trị cảm xúc, gìn giữ tấm lòng thanh sạch, giải tỏa áp lực và thái độ ngợi khen.
   - **Mô hình khuyến nghị:** **Claude 3.5 Haiku** / **Claude 3.5 Sonnet**
   - **Lý do & Thế mạnh:** Trí tuệ cảm xúc (EQ) cao, giọng văn thấu cảm, khích lệ tự nhiên, không mang tính máy móc.
3. **`Luke` (`beWISE`)** (1 âm tiết): Quản trị tri thức, nghiên cứu khoa học logic, tra cứu dữ liệu tuần tự và Second Brain.
   - **Mô hình khuyến nghị:** **Gemini 2.5 Flash** / **Gemini 2.5 Pro**
   - **Lý do & Thế mạnh:** Context window khổng lồ (1M - 2M tokens), nạp toàn bộ tài liệu và Second Brain để tổng hợp tri thức chuẩn xác.
4. **`Ruth` (`beHOME`)** (1 âm tiết): Quản trị gia đình, gia phong nề nếp, giáo dục con cái và vun đắp hậu phương.
   - **Mô hình khuyến nghị:** **Claude 3.5 Haiku** / **GPT-4o-mini**
   - **Lý do & Thế mạnh:** Nhẹ nhàng, thực tế, tư vấn gia đình và thực đơn dinh dưỡng tinh gọn, tốc độ nhanh.
5. **`Boaz` (`beWEALTH`)** (1-2 âm tiết): Quản trị gia sản, dòng tiền cá nhân, ngân sách sinh hoạt và quỹ dự phòng an toàn.
   - **Mô hình khuyến nghị:** **Claude 3.5 Haiku** / **Gemini 2.5 Flash**
   - **Lý do & Thế mạnh:** Phân loại chi tiêu 6 hũ nhanh chóng, rà soát ngân sách định kỳ với độ chính xác cao và chi phí tối thiểu.
6. **`Mark` (`beBOND`)** (1 âm tiết): Quản trị mối quan hệ chất lượng, bạn đồng hành trung tín, khích lệ và nâng đỡ tinh thần.
   - **Mô hình khuyến nghị:** **Claude 3.5 Haiku** / **GPT-4o-mini**
   - **Lý do & Thế mạnh:** Nhắc nhở kết nối, gợi ý thông điệp đối ngoại tinh tế, giữ nhịp tương tác xã hội ấm áp.

### C. Khối Doanh Nghiệp & Quản Trị IPO (beWORK System - 6 Trưởng Phòng & Đội Ngũ Chuyên Sự)

7. **`Daniel` (`beLEGAL`)** (2 âm tiết): Trưởng ban Pháp chế tối cao (Virtual CLO) - Đỉnh 1 Kim Cương.
   - **Mô hình khuyến nghị:** **Claude 3.7 Sonnet (Thinking)** / **Gemini 2.5 Pro** / **DeepSeek-R1**
   - **Lý do & Thế mạnh:** Cực kỳ khắt khe trong đối chiếu điều khoản hợp đồng, rà soát rủi ro pháp lý toàn hệ thống, cấu trúc pháp nhân, IP, ESG và chuẩn hóa hồ sơ Legal Due Diligence hướng tới IPO.
   - **Đội ngũ chuyên sự & AI Copilots trực thuộc:**
     * `Zadok` (Xa-đốc): Chuyên viên Pháp lý Lao động, Thỏa thuận bảo mật NDA/NCA (Điều 21 BLLĐ) và Kỷ luật sa thải (Điều 125 BLLĐ).
     * `AI Intake & Triage Bot`: Tiếp nhận, phân loại và chấm điểm sức khỏe pháp lý 24/7.
     * `AI Contract Reviewer`: Rà soát hợp đồng 5 lớp rủi ro (Daniel Legal Audit) trong 30 giây.
     * `AI Legal Research Engine`: Tra cứu VBQPPL, Án lệ TANDTC và tiêu chuẩn quốc tế (SEC, ESG, GDPR).

8. **`Tim` (`beHR`)** (1 âm tiết): Giám đốc Tổ chức & Nhân lực (Virtual CHRO) - Đỉnh 4 Kim Cương.
   - **Mô hình khuyến nghị:** **Claude 3.5 Haiku** / **Gemini 2.5 Flash** / **DeepSeek-V3**
   - **Lý do & Thế mạnh:** Chuẩn hóa quy trình SOP, sơ đồ tổ chức phân tầng Giê-trô (nhóm 10 - 50 - 100), cơ chế khoán Amoeba x Chiến Binh và tích hợp toàn bộ mảng Đào tạo (L&D).
   - **Đội ngũ chuyên sự & AI Copilots trực thuộc:**
     * `Silas` (Si-la): Chuyên viên Tuyển dụng & Săn đầu người (Talent Acquisition) chuẩn 1 Ti-mô-thê 3.
     * `Ezra` (Ê-xơ-ra): Chuyên viên Đào tạo, Hội nhập 14 ngày vàng & Số hóa SOPs doanh nghiệp (L&D).
     * `Asaph` (A-sáp): Chuyên viên Lương 3P, OKR/KPI SMART & Cổ phần thưởng ESOP (C&B).
     * `Zadok` (Xa-đốc): Chuyên viên Hợp đồng lao động, Kỷ luật nội quy & Phân quyền dữ liệu RBAC.

9. **`Lydia` (`beSALES`)** (2 âm tiết): Giám đốc Doanh thu tối cao (Virtual CRO) - Đỉnh 3 Kim Cương.
   - **Mô hình khuyến nghị:** **Claude 3.5 Sonnet** / **Gemini 2.5 Pro**
   - **Lý do & Thế mạnh:** Bậc thầy tâm lý hành vi, hoạch định chiến lược Go-To-Market đa kênh, cấu trúc thang giá trị (Offer Stack), kịch bản bán hàng OCCSS ($250k), R&D sản phẩm và triệt tiêu xung đột kênh (RevOps).
   - **Đội ngũ chuyên sự & 5 Đại Cánh Quân Doanh Thu:**
     * `Caleb` (Ca-lép): Trưởng Kênh Phân Phối Truyền Thống GT & Chuỗi Siêu Thị MT, Horeca (Trade Sales Lead).
     * `Priscilla` (Bê-rê-sin) x `Dorcas` (Đô-ca): Trưởng Kênh Thương Mại Số (Shopee, TikTok Shop, D2C) & App Food Hỏa Tốc (GrabFood, ShopeeFood, BeFood).
     * `Cornelius` (Cọt-nây): Trưởng Kênh Khách Hàng Doanh Nghiệp B2B, B2B2C & Dự Án B2G.
     * `Philemon` (Phi-lê-môn): Trưởng Kênh Chuỗi Điểm Bán & Nhượng Quyền Thương Mại (Single Unit & Master Franchise).
     * `Jason` (Gia-sơn): Trưởng Kênh Xuất Khẩu B2B Chính Ngạch & Thương Mại Quốc Tế (Cross-Border Trade).
     * `Apollos` (A-bô-lô): Chuyên viên Đóng gói Grand Slam Offer & Kịch bản bán hàng chuyển đổi cao.
     * `Barzillai` (Bạt-xi-lai): Chuyên viên Chăm sóc Khách hàng VIP & Trải nghiệm giữ chân (CX/Retention).
      * `Philip` (Phi-líp): Chuyên viên Quảng cáo Trả phí (Google AdWords, Meta Ads, TikTok Ads) & Performance Marketing.
      * `Tertius` (Tẹt-ti-u): Chuyên viên SEO/Website & Social Media hữu cơ (Organic Growth).
     * `AI Speed-to-Lead Bot (<60s)` & `AI Dynamic Pricing & Anti-Dumping Guard`.

10. **`Joseph` (`beFIN`)** (2 âm tiết): Giám đốc Tài chính tối cao (Virtual CFO) - Đỉnh 2 Kim Cương.
    - **Mô hình khuyến nghị:** **Claude 3.7 Sonnet (Thinking)** / **o3-mini** / **DeepSeek-R1**
    - **Lý do & Thế mạnh:** Năng lực toán học và tài chính logic đỉnh cao, kiểm soát dòng tiền 13 tuần, bóc tách PVM từng kênh, quản trị kinh tế đơn vị (Unit Economics) và dự toán ngân sách R&D/Đào tạo.
    - **Đội ngũ chuyên sự & AI Copilots trực thuộc:**
      * `Matthew` (Ma-thi-ơ): Kế toán Quản trị, Thuế & Hạch toán P&L từng kênh phân phối.
      * `Ezra` (Ê-xơ-ra): Kế toán Kho vận, Đối soát Công nợ gối đầu MT/GT & Quản lý dòng tiền COD.
      * `Hezekiah` (Ê-xê-chia): Chuyên viên Kiểm toán Nội bộ & Chuẩn bị Kiểm toán Big4 (Internal Audit).
      * `Obadiah` (Áp-đia): Chuyên viên Quan hệ Ngân hàng, Tín dụng & Quỹ Doanh nghiệp 6 Hũ (Banking/Treasury).
      * `AI 13-Week Cash Flow Predictor`: Dự báo lưu chuyển tiền tệ cuốn chiếu 13 tuần.
      * `AI PVM Variance Engine`: Phân rã sai lệch lợi nhuận gộp theo Price - Volume - Mix.

11. **`Noah` (`beTECH`)** (2 âm tiết): Giám đốc Công nghệ tối cao (Virtual CTO) - Đỉnh 5 Kim Cương.
    - **Mô hình khuyến nghị:** **Claude 3.7 Sonnet** / **Gemini 2.5 Flash** / **DeepSeek-V3**
    - **Lý do & Thế mạnh:** Kiến trúc hệ thống phần mềm, tích hợp CRM GoHighLevel/beONE, Omnichannel Data (POS/DMS/ERP), R&D công nghệ AI và vận hành nền tảng SaaS AutoBizNet.com.
    - **Đội ngũ chuyên sự & AI Copilots trực thuộc:**
      * `Bezaleel` (Bê-xa-lê-ên): Kỹ sư Tự động hóa CRM, Snapshot nhân bản & Luồng Webhook/Voice AI.
      * `Oholiab` (Ô-hô-li-áp): Chuyên viên Quản trị Dữ liệu Omnichannel & IT Helpdesk Vận hành.
      * `AI Agentic CSKH Bot`: Tác tử AI trực chat và chốt lịch hẹn tư vấn 24/7.
      * `AI Security & RBAC Monitor`: Giám sát an ninh mạng và bảo vệ dữ liệu khách hàng.

12. **`Hiram` (`beCAPITAL`)** (2 âm tiết): Giám đốc Nguồn vốn & Chiến lược Pre-IPO (Virtual CSO) - Đỉnh 6 Kim Cương.
    - **Mô hình khuyến nghị:** **Claude 3.7 Sonnet (Thinking)** / **Gemini 2.5 Pro** / **DeepSeek-R1**
    - **Lý do & Thế mạnh:** Tư duy chiến lược Pre-IPO, định giá doanh nghiệp theo Khung Lục Giác Kim Cương beTRAIN, quản trị cấu trúc cổ phần (Cap Table), quan hệ nhà đầu tư (IR) và R&D chiến lược M&A.
    - **Đội ngũ chuyên sự & AI Copilots trực thuộc:**
      * `Solomon` (Sa-lô-môn): Chuyên viên Phân tích Định giá Doanh nghiệp & Đóng gói Thẩm định M&A.
      * `Mordecai` (Mạc-đô-chê): Chuyên viên Sự kiện, Roadshow & Xúc tiến Thương mại (Events/Trade Promotion).
      * `Esther` (Ê-xơ-tê): Chuyên viên PR, Quan hệ Truyền thông & Xử lý Khủng hoảng (Media Relations/Crisis Mgmt).
      * `AI Diamond Hexagon Valuation Engine`: Định lượng giá trị vô hình theo chuẩn beTRAIN.
      * `AI Pitch Deck & Investment Memo Generator`: Tự động xuất bản hồ sơ gọi vốn chuyên nghiệp.
      * `AI Cap Table & Dilution Simulator`: Mô phỏng kịch bản pha loãng cổ phần qua các vòng gọi vốn.

---

## 3. CƠ CHẾ SỬ DỤNG TEAM AGENTS (HƯỚNG DẪN DÀNH CHO NGƯỜI DÙNG)

### Cách 1: Giao tiếp qua Chỉ huy trưởng beONE (Khuyến nghị số 1)
Người dùng chỉ cần nhắn yêu cầu tổng thể cho **beONE**. beONE sẽ tự động:
- Xác định phân hệ cần xử lý.
- Triệu hồi Agent con tương ứng nạp đúng dữ liệu chuyên môn.
- Tổng hợp và trả về kết quả hoàn chỉnh.

### Cách 2: Gọi trực tiếp tên Agent (Direct Call)
Gọi trực tiếp tên nhân vật hoặc mã kỹ thuật ngay đầu câu:
- *"Lydia phân tích giúp tôi chiến lược chiết khấu cho kênh siêu thị MT."*
- *"Joseph xem giúp tôi dòng tiền 13 tuần cho dự án mới."*
- *"Tim lên giáo trình thử việc 14 ngày cho vị trí Sales E-com."*
- *"Noah thiết lập luồng Webhook kết nối GHL với hệ thống."*

### Cách 3: Họp Hội Đồng Cố Vấn Đa Chiều (Mind Council / Teamwork)
Khi cần ra quyết định lớn hoặc chuẩn bị tài liệu phức tạp:
- Dùng lệnh: *"Họp Hội đồng Joseph, Daniel, Lydia và Hiram phản biện phương án nhượng quyền chuỗi này."*
- Các Agent sẽ đưa ra góc nhìn phản biện theo đúng ân tứ chuyên môn và xuất biên bản thống nhất (Management Decision Memo).

---

## 4. NGUYÊN TẮC DUY TRÌ TINH GỌN BẤT BIẾN (CONTINUOUS S1 - SEIRI & DISTILLATION)
Để tránh phình to dữ liệu (Context Bloat) và suy giảm hiệu năng theo thời gian, toàn bộ hệ thống thực thi nghiêm ngặt cơ chế **S1 Liên Tục**:

1. **S1 Bộ nhớ nóng (Memory S1 - Zero Bloat):**
   - Giữ `memory/MEMORY.md` luôn dưới 6000 ký tự.
   - Thăng cấp định kỳ các tri thức đã ổn định vào Living Files (`90 SYSTEM/Assistant/`), xóa bỏ các chi tiết thừa thãi và rác ngữ cảnh.
2. **S1 Kho tri thức & Wiki (Vault S1 - Compounding Essence):**
   - Quét định kỳ (`lint-wiki`) để dọn dẹp liên kết hỏng, trang rác và hợp nhất các ghi chép trùng lặp.
   - Chưng cất nhiều ghi chép rải rác thành 1 bản tổng hợp tinh hoa (Master Framework), triệt tiêu các văn bản rườm rà.
3. **S1 Kỹ năng & Kịch bản (Skills & Prompts S1 - Lean Execution):**
   - Rà soát các tệp `SKILL.md`: Cắt bỏ các câu lệnh lặp từ, hướng dẫn thừa thãi để tối ưu hóa chi phí token và tăng tốc độ phản hồi.
   - Chỉ giữ lại các SOPs thực chiến mang lại giá trị gia tăng định lượng cao.
4. **S1 Dữ liệu dự án (Project S1 - Clean Workspace):**
   - Dự án hoàn thành hoặc dừng lại sẽ được tự động đóng gói, dọn dẹp file nháp tạm và lưu trữ vào `04_ARCHIVES/`, giải phóng hoàn toàn không gian làm việc.

---

## 5. TIÊU CHUẨN KIỂM TOÁN NGUỒN GỐC MÔ HÌNH (ENGINE TRACE BADGE)
Mọi câu trả lời tư vấn chuyên sâu, phân tích chiến lược hoặc tạo lập tài liệu trong beFAMILY OS đều phải đính kèm thẻ kiểm toán nguồn gốc mô hình (Engine Trace) ở chân bài theo định dạng chuẩn:

```markdown
> 🧩 **beFAMILY Engine Trace:**
> - **Chỉ huy điều phối (Orchestrator):** beONE (`Gemini 3.7 Flash` / `Claude 3.7 Sonnet`)
> - **Trợ lý chuyên trách (Specialist):** Joseph (`beFIN`) / Noah (`beTECH`) / beMIND (Tâm thế & Động lực lãnh đạo)
> - **Bộ não thực thi (Execution Engine):** DeepSeek-R1 (`deepseek-reasoner`) / DeepSeek-V3 / Claude...
```

---

## 6. QUY TRÌNH DOUBLE-CHECK BẮT BUỘC (Dual-Review Protocol)

**Quy tắc vàng:** KHÔNG output nào được trình CEO mà chưa qua ít nhất **1 lượt review** bởi agent phản biện. Tác vụ Cấp 3+ bắt buộc **2 lượt**.

### Luồng xử lý
1. **Agent soạn thảo** tạo output, gắn Engine Trace Badge, tự phân loại Cấp thẩm quyền (1-5).
2. **beONE dispatch Lượt 1** sang Reviewer chính theo Ma trận Peer Review.
3. **Cấp 3+: beONE dispatch Lượt 2** sang Reviewer phụ (thường Daniel hoặc Joseph).
4. **beONE tổng hợp** kèm Audit Trail YAML chuẩn, trình CEO.

### Ma trận Peer Review

| Agent soạn thảo | Reviewer L1 | Reviewer L2 (Cấp 3+) |
|---|---|---|
| Daniel (Pháp lý) | Joseph | Hiram |
| Tim (Nhân sự) | Daniel | Joseph |
| Lydia (Doanh thu) | Joseph | Daniel |
| Joseph (Tài chính) | Hezekiah | Daniel |
| Noah (Công nghệ) | Joseph | Daniel |
| Hiram (Nguồn vốn) | Joseph | Daniel |

Chi tiết đầy đủ: [[90 SYSTEM/Standards/bework-governance-charter]]

