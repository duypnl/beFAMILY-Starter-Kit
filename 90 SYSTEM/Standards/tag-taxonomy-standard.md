---
type: knowledge
domain: system
status: canonical
tags:
  - system/ontology
  - system/governance
---

# Chuẩn Hệ Thống Tag beFAMILY OS (beTAG 2026)

## 1. Mục Tiêu & Triết Lý Thiết Kế

Hệ thống Tag **beTAG 2026** được thiết kế để giải quyết bài toán kép:
1. **Trải nghiệm truy xuất cá nhân (Human UX):** Tận dụng tối đa cây phân cấp Tag Pane của Obsidian, cho phép mở rộng/thu gọn và tìm kiếm theo lát cắt đa chiều từ tổng quan đến chi tiết.
2. **Năng lực định tuyến cho AI Agent (AI Retrieval & Routing):** Cung cấp mật độ ngữ cảnh chuẩn hóa (context-rich hierarchical taxonomy) giúp AI lọc và truy xuất thông tin chính xác theo domain, subdomain và chủ đề mà không bị mơ hồ ngữ nghĩa.

> **Quy tắc phân định 4 lớp Metadata:**
> - **Thư mục (Folders):** Ranh giới vật lý và phân quyền dữ liệu (`10 FAITH`, `20 LIFE`, `30 WORK`, `40 KNOWLEDGE`, `50 OUTPUTS`, `90 SYSTEM`, `sources`).
> - **Loại tệp (`type`):** Bản chất tệp (`wiki`, `source`, `Document`, `project`, `note`, `decision`, `output`, `template`).
> - **Liên kết mạng lưới (`[[...]]`):** Liên kết thực thể cụ thể (con người, đối tác, trích dẫn Tài liệu chuẩn, tài liệu nguồn).
> - **Thẻ phân loại (`tags`):** Cây chủ đề phân cấp `#[domain]/[subdomain]/[topic]` và nhãn trạng thái xuyên suốt.

---

## 2. Quy Tắc Định Dạng Bắt Buộc (Syntax Rules)

1. **Cú pháp lồng phân cấp (Nested Hierarchy):** Luôn dùng dấu gạch chéo `/` để phân cấp: `#[domain]/[subdomain]/[topic]`.
2. **Quy chuẩn ký tự:**
   - 100% chữ thường (lowercase).
   - Dùng gạch nối ngắn `kebab-case` giữa các từ (ví dụ: `continuous-planning`, `ai-engineering`).
   - Tuyệt đối không dùng dấu gạch ngang dài (`—` hoặc `–`).
   - Không chứa khoảng trắng, dấu ngoặc kép hoặc ký tự đặc biệt trong tag.
3. **Format YAML trong Frontmatter:**
   Luôn khai báo dạng mảng danh sách:
   ```yaml
   tags:
     - domain/subdomain/topic
     - status/active
   ```

---

## 3. Bản Đồ Phân Cấp Tag Toàn Diện (beTAG Taxonomy Map)

### 3.1. Phân hệ Tâm Linh (`#faith/...`)
Dành riêng cho đức tin, Tài liệu chuẩn 1925 và Tổ chức của Nguyên tắc sống (Standard Source):
- `#faith/Document` (Tài liệu chuẩn 1925)
  - `#faith/Document/chapter` (Từng chương trong 66 sách Tài liệu chuẩn)
  - `#faith/Document/book` (Tổng quan 66 sách Tài liệu chuẩn)
  - `#faith/Document/old-testament` (Cựu Ước)
  - `#faith/Document/new-testament` (Tân Ước)
- `#faith/Standard Source` (Tài liệu, giáo lý chính thức từ Tổng Hội Standard Source)
  - `#faith/Standard Source/slt` (Sách Lời Trực Tiếp từ Đấng An Xang Hồng)
  - `#faith/Standard Source/sgd` (Sách Giảng Đạo)
  - `#faith/Standard Source/talang` (Bài giảng & Tài liệu Talang)
  - `#faith/Standard Source/god-the-father` (Nguyên tắc sống Cha An Xang Hồng)
  - `#faith/Standard Source/god-the-mother` (Nguyên tắc sống Mẹ Jerusalem)
  - `#faith/Standard Source/ahnsahnghong` (Đấng Christ Tái Lâm An Xang Hồng)
  - `#faith/Standard Source/church` (Tổ chức của Nguyên tắc sống)
  - `#faith/Standard Source/global-churches` (Tổ chức toàn cầu)
  - `#faith/Standard Source/new-covenant` (Tin Lành Giao Ước Mới)
  - `#faith/Standard Source/terms` (Thuật ngữ Tài liệu chuẩn theo Standard Source)
  - `#faith/Standard Source/figures` (Nhân vật Tài liệu chuẩn)
  - `#faith/Standard Source/places` (Địa danh Tài liệu chuẩn)
  - `#faith/Standard Source/issues` (Vấn đề & lẽ thật Tài liệu chuẩn)
  - `#faith/Standard Source/community-service` (Hoạt động phụng sự xã hội)
- `#faith/evidence` (Chứng thực Tài liệu chuẩn & Khoa học)
  - `#faith/evidence/science` (Vũ trụ, vật lý, thiên văn học)
  - `#faith/evidence/biology` (Sinh học & Thể xác con người)
  - `#faith/evidence/archaeology` (Khảo cổ học & Lịch sử)
  - `#faith/evidence/prophecy` (Lời tiên tri ứng nghiệm)
  - `#faith/evidence/messiah` (Chứng thực Đấng Cứu Chúa)
- `#faith/study` (Chuyên đề học tập, tra cứu lẽ thật)
- `#faith/preaching` (Kịch bản chia sẻ & Truyền đạo)
- `#faith/prayer` (Cầu nguyện, cảm tạ & Ăn năn)

---

### 3.2. Phân hệ Đời Sống & Cá Nhân (`#life/...`)
Dành cho phát triển bản thân, gia đình, tâm thế và năng lượng sống:
- `#life/family` (Gia đình, vợ chồng, con cái, cha mẹ)
- `#life/health` (Sức khỏe thể chất, giấc ngủ, cơ chế sinh học)
- `#life/mindset` (Tâm thế, nội lực, tinh thần)
- `#life/gratitude` (Ghi nhận, cảm tạ, 50 điều tốt)
- `#life/resources` (Hệ thống nguồn lực & năng lượng)
- `#life/truda` (beTRUDA, rèn luyện thói quen)
- `#life/beperfect` (bePERFECT, hoàn thiện cá nhân)
- `#life/relationships` (Mối quan hệ bạn bè, đối tác cá nhân)

---

### 3.3. Phân hệ Doanh Nghiệp & Dự Án (`#work/...`)
Dành cho các đơn vị kinh doanh, dự án thực thi, khách hàng và vận hành:
- `#work/betrain` (Dự án beTRAIN)
  - `#work/betrain/ipo` (Định giá Kim Cương & Lộ trình IPO)
  - `#work/betrain/training` (Đào tạo & Giáo trình doanh nghiệp)
  - `#work/betrain/clients` (Khách hàng & Doanh nghiệp tư vấn)
- `#work/belegal` (Dự án beLEGAL & Luật Sư Quốc Dân)
- `#work/quin` (by QUIN / Ms Quỳnh / Ms Thoa / Quản trị đối tác)
  - `#work/quin/governance` (Quản trị & Cấu trúc)
  - `#work/quin/operations` (Vận hành & SOP)
  - `#work/quin/finance` (Tài chính & Dòng tiền)
- `#work/opa` (OPA Group, BSN, Liên minh đối tác)
- `#work/autobiznet` (AutoBizNet / Tự động hóa bán hàng & CRM)
- `#work/behealth` (beHEALTH / Luna Living)
- `#work/strategy` (Chiến lược kinh doanh, mô hình tổ chức)
- `#work/finance` (Tài chính doanh nghiệp, cấu trúc vốn, ngân sách)
- `#work/operations` (Vận hành, SOP, quy trình 4M, kiểm soát chất lượng)
- `#work/marketing` (Marketing, phễu bán hàng, thương hiệu, GoHighLevel)
- `#work/b2b` (Xúc tiến thương mại B2B, đàm phán)
- `#work/fnb` (Dự án chuỗi F&B)
- `#work/agriculture` (Nông nghiệp công nghệ cao)

---

### 3.4. Phân hệ Tri Thức Vĩnh Cửu (`#knowledge/...`)
Dành cho tri thức chuyên môn, học thuật và framework có thể tái sử dụng:
- `#knowledge/lean` (Quản trị Tinh gọn, Lean Management, APO, Kaizen, Muda)
- `#knowledge/ai-engineering` (Công nghệ AI, Agentic Enterprise, RAG, Zero-Mem, Sandbox)
- `#knowledge/fpa` (Kế hoạch tài chính liên tục, Continuous Planning, Rolling Forecast)
- `#knowledge/esg` (Chuyển đổi xanh, ESG, ISO 56000, CE-ESG)
- `#knowledge/productivity` (Nâng cao năng suất quốc gia & doanh nghiệp)
- `#knowledge/marketing` (Khoa học marketing, Value Equation, The Stack)
- `#knowledge/supply-chain` (Chuỗi cung ứng toàn cầu, WorldMonitor)
- `#knowledge/leadership` (Tư duy lãnh đạo & Tâm thế quản trị)
- `#knowledge/case-study` (Nghiên cứu điển hình thực tế)
- `#knowledge/architecture` (Kiến trúc hệ thống phần mềm & Dữ liệu)

---

### 3.5. Phân hệ Sản Phẩm Đóng Gói (`#output/...`)
Dành cho các ấn phẩm, giáo trình chuyển giao và đề án hoàn chỉnh:
- `#output/training` (Giáo trình đào tạo, khóa học chuyển giao SME)
- `#output/architecture` (Tài liệu đặc tả kiến trúc & Blueprint)
- `#output/report` (Báo cáo đánh giá, Memo quản trị, Đề án)
- `#output/deliverable` (Sản phẩm bàn giao cho khách hàng/đối tác)

---

### 3.6. Phân hệ Hệ Điều Hành beONE (`#system/...`)
Dành cho cấu hình, quy chế, trợ lý ảo và hạ tầng vận hành:
- `#system/beone` (Lõi điều phối beONE OS)
- `#system/benavi` (Định hướng & Bản đồ tư duy beNAVI)
- `#system/governance` (Quy chế phân quyền & Ranh giới an toàn AI Agent)
- `#system/ontology` (Cấu trúc dữ liệu, Data Model, Metadata Standard)
- `#system/template` (Biểu mẫu chuẩn hóa)

---

### 3.7. Kho Nguồn Thô Bất Biến (`#source/...`)
Dành cho các tài liệu nguồn thô lưu trữ trong `sources/`:
- `#source/Standard Source` (Nguồn chính thức Tổng Hội Standard Source)
- `#source/churchofgod-wiki` (Nguồn Bách khoa toàn thư Church of God Wiki)
- `#source/web` (Nguồn trích xuất từ Internet)
- `#source/paper` (Bài báo khoa học, arXiv, PubMed, DOI)
- `#source/book` (Sách xuất bản, tài liệu tham khảo)

---

### 3.8. Phân hệ Nhật Ký & Tiến Trình (`#log/...`)
Dành cho dòng thời gian và nhật ký:
- `#log/daily` (Nhật ký hàng ngày trong `01 - Daily Log/`)
- `#log/weekly` (Nhật ký tuần trong `02 - Weekly Log/`)
- `#log/monthly` (Nhật ký tháng trong `03 - Monthly Log/`)
- `#log/handoff` (Bàn giao phiên làm việc)

---

### 3.9. Trạng Thái Vận Hành (`#status/...` - Tùy chọn)
- `#status/active` (Đang triển khai / Hiện hành)
- `#status/draft` (Bản nháp / Đang hoàn thiện)
- `#status/archived` (Lưu trữ / Đã đóng)
- `#status/verified` (Đã kiểm chứng chuẩn kiểm toán)

---

## 4. Hướng Dẫn Truy Vấn (Querying Guide)

### Truy Vấn Trong Obsidian Search
- Tìm mọi ghi chú về beTRAIN: `tag:#work/betrain`
- Tìm đúng chuyên đề IPO của beTRAIN: `tag:#work/betrain/ipo`
- Tìm tài liệu chứng thực khoa học cho Tài liệu chuẩn: `tag:#faith/evidence/science`
- Tìm toàn bộ giáo trình đóng gói đầu ra: `tag:#output/training`

### Truy Vấn Bằng Dataview
```dataview
TABLE file.mtime AS "Cập nhật", status AS "Trạng thái"
FROM #knowledge/ai-engineering
SORT file.mtime DESC
```

### Hướng Dẫn Dành Cho AI Agent
Khi AI Agent tiếp nhận yêu cầu từ người dùng:
1. Xác định đúng domain gốc (`faith`, `life`, `work`, `knowledge`, `output`, `system`, `source`, `log`).
2. Gắn tối thiểu 1 tag phân cấp theo đúng bảng tra cứu trên.
3. Không tự ý sáng tạo tag đơn lẻ ngoài cây phân cấp. Khi có chủ đề mới phát sinh, luôn đặt dưới tiền tố domain phù hợp (ví dụ: `#work/mna`, `#knowledge/quantum-computing`).


