param (
    [Parameter(Mandatory=$true)]
    [string]$ProjectName,

    [Parameter(Mandatory=$false)]
    [string]$Sponsor = "[Chưa xác định]",

    [Parameter(Mandatory=$false)]
    [string]$IpoTarget = "[Ví dụ: Niêm yết HOSE/HNX vào năm 2028]",

    [Parameter(Mandatory=$false)]
    [string]$BaseDir = "d:\GitHub\beFAMILY\30 WORK"
)

$ErrorActionPreference = "Stop"
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$safeName = $ProjectName.Trim()
$folderName = "${safeName}_beTRAIN_DIAMOND"
$targetRoot = Join-Path -Path $BaseDir -ChildPath $folderName

$today = Get-Date -Format "yyyyMMdd"
$now = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$dateIso = Get-Date -Format "yyyy-MM-dd"

Write-Host "💎 Đang khởi tạo bộ khung Định Giá Kim Cương beTRAIN cho: $safeName ..." -ForegroundColor Cyan

# 1. Tạo danh sách 6 rổ không gian cốt lõi (02_AREAS) & các thư mục bổ trợ
$dirs = @(
    "$targetRoot\01_PROJECTS\01.1_Lo_Trinh_Gang_Milestones",
    "$targetRoot\01_PROJECTS\01.2_Phan_Ra_Cong_Viec_WBS",
    "$targetRoot\01_PROJECTS\01.3_Sprint_Log_Hanh_Dong",
    "$targetRoot\02_AREAS\02.1_TamGiac1_Phap_Ly_Tuan_Thu",
    "$targetRoot\02_AREAS\02.2_TamGiac1_Cau_Truc_Tai_Chinh",
    "$targetRoot\02_AREAS\02.3_TamGiac1_Business_Model",
    "$targetRoot\02_AREAS\02.4_TamGiac2_Con_Nguoi_Nang_Luc",
    "$targetRoot\02_AREAS\02.5_TamGiac2_Cong_Nghe_He_Thong",
    "$targetRoot\02_AREAS\02.6_TamGiac2_Nguon_Von_M&A",
    "$targetRoot\03_RESOURCES\03.1_Kanban_Hien_Truong",
    "$targetRoot\03_RESOURCES\03.2_SOP_Quy_Trinh_Chuan",
    "$targetRoot\04_ARCHIVES"
)

foreach ($d in $dirs) {
    if (-not (Test-Path -Path $d)) {
        New-Item -ItemType Directory -Path $d -Force | Out-Null
    }
}

# 2. Tạo MOC Master Diamond
$mocPath = Join-Path -Path $targetRoot -ChildPath "MOC_${safeName}.md"
$mocContent = @"---
type: project-moc
project: "$safeName"
sponsor: "$Sponsor"
ipo_target: "$IpoTarget"
framework: "beTRAIN_DIAMOND_HEXAGON"
status: active
tags: [project, ipo, diamond-framework, beTRAIN, lean, beONE]
created: $dateIso
updated: $dateIso
---

# 💎 MOC_${safeName}: ĐỊNH GIÁ KIM CƯƠNG beTRAIN

> **Triết lý vận hành:** Quản trị Tinh gọn (Lean Management) & Tối ưu tỷ lệ chuyển đổi.
> **Kiến trúc:** Lục giác kim cương (Giao thoa Tam giác 1 Cấu trúc & Tam giác 2 Thị trường).

## 🎯 THÔNG TIN TỔNG QUAN
- **Dự án:** $safeName
- **Chủ quản dự án (Sponsor):** $Sponsor
- **Mục tiêu định giá & Niêm yết (IPO Target):** $IpoTarget
- **Xương sống số hóa:** Nền tảng beONE (GoHighLevel CRM & Automation) đồng bộ luồng dữ liệu trung tâm.

---

## 📐 TAM GIÁC 1: CẤU TRÚC (NỀN TẢNG BẢO VỆ GIÁ TRỊ)
*Kiểm soát rủi ro, xác lập lợi thế cạnh tranh và dòng tiền đơn vị (Unit Economics).*
- [[30 WORK/$folderName/02_AREAS/02.1_TamGiac1_Phap_Ly_Tuan_Thu/${today}_T1_PhapLy_Dieu_Le_Tu_Duy_Tuan_Thu_v1.0|⚖️ 02.1_Pháp lý & Tuân thủ ESG]]
- [[30 WORK/$folderName/02_AREAS/02.2_TamGiac1_Cau_Truc_Tai_Chinh/${today}_T1_TaiChinh_Mo_Hinh_Toi_Uu_EBITDA_v1.0|💰 02.2_Cấu trúc Tài chính & Tối ưu EBITDA]]
- [[30 WORK/$folderName/02_AREAS/02.3_TamGiac1_Business_Model/${today}_T1_Model_Loi_The_Canh_Tranh_Doc_Quyen_v1.0|🧩 02.3_Business Model & Chuỗi cung ứng]]

---

## 🚀 TAM GIÁC 2: THỊ TRƯỜNG (CỖ MÁY NHÂN BẢN GIÁ TRỊ)
*Đòn bẩy mở rộng quy mô, tự động hóa và định giá sức mạnh hệ sinh thái.*
- [[30 WORK/$folderName/02_AREAS/02.4_TamGiac2_Con_Nguoi_Nang_Luc/${today}_T2_ConNguoi_So_Do_C_Level_ESOP_v1.0|👥 02.4_Con người, Năng lực & Cơ chế ESOP]]
- [[30 WORK/$folderName/02_AREAS/02.5_TamGiac2_Cong_Nghe_He_Thong/${today}_T2_CongNghe_Kien_Truc_beONE_GoHighLevel_v1.0|⚙️ 02.5_Công nghệ: Kiến trúc beONE / GoHighLevel]]
- [[30 WORK/$folderName/02_AREAS/02.6_TamGiac2_Nguon_Von_M&A/${today}_T2_NguonVon_Ho_So_Goi_Von_IR_v1.0|💸 02.6_Nguồn vốn, Quan hệ IR & M&A]]

---

## 🗂️ HỆ THỐNG THỰC THI HIỆN TRƯỜNG (LEAN EXECUTION)
- [[30 WORK/$folderName/01_PROJECTS/01.1_Lo_Trinh_Gang_Milestones/${today}_Tang1_Kickoff_Khai_Phong_Nguon_Luc_v1.0|🚀 01.1_Kick-off: Khai phóng nguồn lực vô hình]]
- [[30 WORK/$folderName/01_PROJECTS/01.1_Lo_Trinh_Gang_Milestones/${today}_Tang1_Ho_So_Tham_Dinh_CTCK_v1.0|🗓️ 01.1_Lộ trình găng (Waterfall Milestones)]]
- [[30 WORK/$folderName/01_PROJECTS/01.2_Phan_Ra_Cong_Viec_WBS/${today}_WBS_Ke_Hoach_Phan_Bo_Ngan_Sach_CapEx|🏗️ 01.2_Phân rã công việc WBS & Dự toán CapEx/OpEx]]
- [[30 WORK/$folderName/01_PROJECTS/01.3_Sprint_Log_Hanh_Dong/${today}_Kanban_Theo_Doi_Tien_Do_Tung_Sprint|⚡ 01.3_Sprint Log & Tiến độ tuần hoàn]]
- [[30 WORK/$folderName/03_RESOURCES/03.1_Kanban_Hien_Truong/${today}_Tang3_Bang_Kanban_Hien_Truong_v1.0|📋 03.1_Kanban Hiện trường trực quan]]
- [[30 WORK/$folderName/03_RESOURCES/03.2_SOP_Quy_Trinh_Chuan/${today}_SOPs_Quy_Trinh_Van_Hanh_Chuan|📑 03.2_Hệ thống SOPs quy trình vận hành chuẩn]]
- [[30 WORK/$folderName/04_ARCHIVES/${today}_Kho_Luu_Tru_Tai_Lieu_v1.0|📦 04_Kho lưu trữ tài liệu]]

---
*Cập nhật lần cuối: $now*
"@

[System.IO.File]::WriteAllText($mocPath, $mocContent, [System.Text.Encoding]::UTF8)

# 3. Tạo các file tài liệu chuyên sâu theo 6 đỉnh Kim Cương

# 3.1. Công nghệ & Hệ thống (beONE / GoHighLevel)
$techDoc = "$targetRoot\02_AREAS\02.5_TamGiac2_Cong_Nghe_He_Thong\${today}_T2_CongNghe_Kien_Truc_beONE_GoHighLevel_v1.0.md"
$techContent = @"---
type: project-doc
project: "$safeName"
aspect: "02.5_TamGiac2_Cong_Nghe_He_Thong"
status: active
tags: [technology-scale, beONE, gohighlevel, automation, valuation-multiplier, ipo]
created: $dateIso
updated: $dateIso
---

# ⚙️ 02.5_Công nghệ: Kiến trúc Tự động hóa & Nền tảng (beONE Ecosystem)

> **Tư duy định giá:** Công nghệ không phải là "chi phí quản lý" mà là **Tài sản vô hình** đóng góp trực tiếp vào hệ số định giá (Valuation Multiplier). Dữ liệu khách hàng, luồng tự động hóa và kiến trúc CRM quyết định tốc độ scale-up nhân bản.

**Link Tham chiếu WBS:** [[30 WORK/$folderName/01_PROJECTS/01.2_Phan_Ra_Cong_Viec_WBS/${today}_WBS_Ke_Hoach_Phan_Bo_Ngan_Sach_CapEx|WBS & Ngân sách CapEx]]

---

## 1. Bản đồ Nền tảng (Platform Architecture)
- **CRM & Automation:** Cấu trúc tài khoản GoHighLevel (beONE) cấp Agency/Sub-account.
- **Tích hợp kênh (Omnichannel):** Zalo ZOA, Webhooks, n8n/Make, SMS Brandname, Email Marketing.
- **Data Indexing:** Luồng dữ liệu khách hàng trung tâm (Single Source of Truth), quản lý vòng đời (LTV/CAC).
- **Hạ tầng & Bảo mật:** Phân quyền vai trò (RBAC), chuẩn mã hóa dữ liệu người dùng, sẵn sàng kiểm toán IT Due Diligence.

## 2. Kiểm soát hao hụt vận hành số (Lean Digital Operations)
- Tự động hóa quy trình nuôi dưỡng lead từ phễu chuyển đổi đến chốt sales.
- Số hóa SOPs trực tiếp lên hệ thống quản trị nhiệm vụ, giảm thời gian chết (wait time).
- Dashboard báo cáo trực quan hiệu suất chuyển đổi theo thời gian thực (Real-time Analytics).
"@
[System.IO.File]::WriteAllText($techDoc, $techContent, [System.Text.Encoding]::UTF8)

# 3.2. Cấu trúc Tài chính & Tối ưu EBITDA
$finDoc = "$targetRoot\02_AREAS\02.2_TamGiac1_Cau_Truc_Tai_Chinh\${today}_T1_TaiChinh_Mo_Hinh_Toi_Uu_EBITDA_v1.0.md"
$finContent = @"---
type: project-financial-model
project: "$safeName"
aspect: "02.2_TamGiac1_Cau_Truc_Tai_Chinh"
status: active
tags: [financial-dd, ebitda, financial-model, lean, vas-ifrs]
currency: "VND"
model_period: "3Y6M"
created: $dateIso
updated: $dateIso
---

# 💰 02.2_Cấu trúc Tài chính: Mô hình Tối ưu EBITDA & Chuẩn VAS/IFRS

> **Tư duy cốt lõi:** Quản trị dòng tiền đơn vị (Unit Economics), tối ưu hóa Gross Margin và minh bạch số liệu tài chính để đón đầu dòng vốn từ Quỹ.

---

## 1. Bảng Dự Tính Dòng Tiền Vào (Inflow - Doanh Thu Phễu)
| Chỉ tiêu tài chính | 6 Tháng Đầu (Đầu tư) | Năm 1 (Vận hành) | Năm 2 (Tăng trưởng) | Năm 3 (Mốc IPO) |
|---|---|---|---|---|
| Sản lượng tiêu thụ | 0 | ... | ... | ... |
| Doanh thu SKU Cốt lõi | 0 VND | ... VND | ... VND | ... VND |
| Doanh thu bổ trợ (Cross-sell/Up-sell) | 0 VND | ... VND | ... VND | ... VND |
| **TỔNG DOANH THU (A)** | **0 VND** | **... VND** | **... VND** | **... VND** |

## 2. Bảng Dòng Tiền Ra Tinh Gọn (Outflow)
| Hạng mục chi phí | 6 Tháng Đầu | Năm 1 | Năm 2 | Năm 3 |
|---|---|---|---|---|
| Chi phí đầu tư (CapEx) | ... | ... | ... | ... |
| Chi phí vận hành (OpEx) | ... | ... | ... | ... |
| Giá vốn hàng bán (COGS) | 0 VND | ... | ... | ... |
| Tỷ lệ hao hụt / Lãng phí | [5-10%] | [< 5%] | [< 3%] | [Tối ưu] |
| **TỔNG CHI PHÍ (B)** | **... VND** | **... VND** | **... VND** | **... VND** |

## 3. Sức khỏe Tài chính Thẩm định (EBITDA & Margin)
- **Biên Lợi Nhuận Gộp (Gross Margin Target):** > 35%
- **EBITDA Target Năm 3:** Đạt ngưỡng định giá cam kết với nhà đầu tư.
- **Kế hoạch chuẩn hóa:** Lộ trình chuyển đổi từ VAS sang IFRS.
"@
[System.IO.File]::WriteAllText($finDoc, $finContent, [System.Text.Encoding]::UTF8)

# 3.3. Pháp lý & Tuân thủ
$legalDoc = "$targetRoot\02_AREAS\02.1_TamGiac1_Phap_Ly_Tuan_Thu\${today}_T1_PhapLy_Dieu_Le_Tu_Duy_Tuan_Thu_v1.0.md"
$legalContent = @"---
type: project-doc
project: "$safeName"
aspect: "02.1_TamGiac1_Phap_Ly_Tuan_Thu"
status: active
tags: [legal-dd, compliance, esg, corporate-governance]
created: $dateIso
updated: $dateIso
---

# ⚖️ 02.1_Pháp lý: Điều lệ Doanh nghiệp & Tư duy Tuân thủ

## 1. Cấu trúc Pháp nhân & Điều lệ Công ty
- Cấu trúc công ty mẹ - công ty con, cơ cấu sở hữu vốn.
- Điều lệ công ty qua các thời kỳ sửa đổi, điều khoản bảo vệ cổ đông thiểu số.
- Giấy chứng nhận ĐKKD và danh mục ngành nghề kinh doanh đủ điều kiện niêm yết.

## 2. Giấy phép Chuyên ngành & Sở hữu Trí tuệ (IP)
- Giấy phép con theo lĩnh vực hoạt động.
- Bản quyền thương hiệu, sáng chế, bí quyết công nghệ đã đăng ký bảo hộ.
- Hợp đồng chuyển giao công nghệ và hợp đồng li-xăng (Licensing).

## 3. Tuân thủ Môi trường, Xã hội & Quản trị (ESG)
- Báo cáo đánh giá tác động môi trường và xử lý chất thải.
- Chính sách an toàn lao động và chế độ an sinh cho người lao động.
- Bộ quy tắc ứng xử nội bộ và phòng chống gian lận.
"@
[System.IO.File]::WriteAllText($legalDoc, $legalContent, [System.Text.Encoding]::UTF8)

# 3.4. Business Model
$modelDoc = "$targetRoot\02_AREAS\02.3_TamGiac1_Business_Model\${today}_T1_Model_Loi_The_Canh_Tranh_Doc_Quyen_v1.0.md"
$modelContent = @"---
type: project-doc
project: "$safeName"
aspect: "02.3_TamGiac1_Business_Model"
status: active
tags: [business-model, competitive-moat, r&d, supply-chain]
created: $dateIso
updated: $dateIso
---

# 🧩 02.3_Business Model: Lợi thế Cạnh tranh Độc quyền & Chuỗi Giá trị

## 1. Nghiên cứu & Phát triển (R&D) và Định vị Sản phẩm
- Danh mục sản phẩm theo chu kỳ sống (Vòng đời sản phẩm).
- Điểm độc bản (USP) và hào kinh tế (Economic Moat) ngăn chặn đối thủ sao chép.
- Chiến lược định giá theo giá trị (Value-based Pricing).

## 2. Thiết kế Chuỗi Cung ứng & Mạng lưới Phân phối
- Quản lý nhà cung ứng chiến lược và cơ chế bảo hiểm nguồn nguyên liệu.
- Kênh phân phối cốt lõi (B2B, B2C, D2C, nhượng quyền, đại lý).
- Tối ưu hóa chu trình lưu kho và giao vận tinh gọn (Just-in-Time).
"@
[System.IO.File]::WriteAllText($modelDoc, $modelContent, [System.Text.Encoding]::UTF8)

# 3.5. Con người & Năng lực
$peopleDoc = "$targetRoot\02_AREAS\02.4_TamGiac2_Con_Nguoi_Nang_Luc\${today}_T2_ConNguoi_So_Do_C_Level_ESOP_v1.0.md"
$peopleContent = @"---
type: project-doc
project: "$safeName"
aspect: "02.4_TamGiac2_Con_Nguoi_Nang_Luc"
status: active
tags: [hr-dd, c-level, esop, kpi-okr, leadership]
created: $dateIso
updated: $dateIso
---

# 👥 02.4_Con người: Đội ngũ C-Level, Năng lực & Cơ chế ESOP

## 1. Cơ cấu Tổ chức Lãnh đạo C-Level
- Sơ đồ ban điều hành (CEO, CFO, CTO, COO, CMO) với phân quyền rõ ràng.
- Hội đồng quản trị độc lập và Ban kiểm soát nội bộ.
- Hồ sơ năng lực và uy tín cá nhân của đội ngũ then chốt.

## 2. Quản trị Hiệu suất & Phát triển (L&D - OKRs/KPIs)
- Khung năng lực tiêu chuẩn từng vị trí và lộ trình đào tạo nội bộ.
- Hệ thống đánh giá hiệu suất OKRs/KPIs liên kết trực tiếp với mục tiêu công ty.

## 3. Chính sách Thu hút & Giữ chân Nhân tài (ESOP & C&B)
- Quy chế ESOP: Tỷ lệ phát hành, thời gian vesting (3-5 năm), điều kiện cống hiến.
- Thỏa thuận bảo mật thông tin (NDA) và cam kết không cạnh tranh (NCA).
"@
[System.IO.File]::WriteAllText($peopleDoc, $peopleContent, [System.Text.Encoding]::UTF8)

# 3.6. Nguồn vốn & M&A
$capitalDoc = "$targetRoot\02_AREAS\02.6_TamGiac2_Nguon_Von_M&A\${today}_T2_NguonVon_Ho_So_Goi_Von_IR_v1.0.md"
$capitalContent = @"---
type: project-doc
project: "$safeName"
aspect: "02.6_TamGiac2_Nguon_Von_M&A"
status: active
tags: [capital-ir, m&a, valuation, ipo-roadshow, fundraising]
created: $dateIso
updated: $dateIso
---

# 💸 02.6_Nguồn vốn: Quan hệ Nhà đầu tư (IR), Định giá & Chiến lược M&A

## 1. Cấu trúc Vốn & Chiến lược Huy động (Capital Structure)
- Tỷ lệ đòn bẩy tài chính (Nợ vay vs Vốn chủ sở hữu).
- Lộ trình các vòng gọi vốn (Seed, Series A/B/Pre-IPO).
- Định giá doanh nghiệp theo phương pháp DCF, P/E và EV/EBITDA so sánh ngành.

## 2. Hồ sơ Quan hệ Nhà đầu tư (IR Package)
- Pitch Deck tóm tắt cơ hội đầu tư cho Quỹ.
- Teaser & Bản tóm tắt thẩm định thông tin (Information Memorandum - IM).
- Kế hoạch tổ chức Roadshow giới thiệu dự án đến các định chế tài chính.

## 3. Chiến lược M&A & Hợp tác Chiến lược
- Tiêu chí lựa chọn doanh nghiệp mục tiêu để mua bán/sáp nhập mở rộng quy mô.
- Kế hoạch hậu sáp nhập (Post-Merger Integration) về công nghệ và nhân sự.
"@
[System.IO.File]::WriteAllText($capitalDoc, $capitalContent, [System.Text.Encoding]::UTF8)

# 4. Tạo các file thực thi hiện trường (01_PROJECTS & 03_RESOURCES)
$files = @(
    @{
        Path = "$targetRoot\01_PROJECTS\01.1_Lo_Trinh_Gang_Milestones\${today}_Tang1_Kickoff_Khai_Phong_Nguon_Luc_v1.0.md"
        Title = "Kick-off Framework: Khai phóng nguồn lực vô hình"
        Tags = "project, ipo, kickoff, intangible-assets, lean"
        Content = @"
## 🕵️ Khai thác Lợi thế ngầm & Nguồn lực vô hình
1. **Lợi thế độc quyền:** Mối quan hệ, giấy phép đặc thù ngành.
2. **Hạ tầng ngầm:** Quỹ đất, kho bãi, cơ sở vật chất sẵn có.
3. **Bảo chứng uy tín:** Chuyên gia đầu ngành, cố vấn cấp cao.

## 📦 Danh mục SKUs & Cơ cấu phễu dòng tiền
- **Core SKU (80% doanh thu):**
- **Lead Magnet:**
- **High Margin:**
"@
    },
    @{
        Path = "$targetRoot\01_PROJECTS\01.1_Lo_Trinh_Gang_Milestones\${today}_Tang1_Ho_So_Tham_Dinh_CTCK_v1.0.md"
        Title = "Hồ sơ Thẩm định CTCK & Lộ trình găng (Waterfall Milestones)"
        Tags = "project, ipo, waterfall, milestones, ctck"
        Content = @"
## 🗓️ Cột mốc Lộ trình găng (Critical Path)
- [ ] **Giai đoạn 1 (Chuẩn hóa):** Tái cấu trúc theo 6 đỉnh Kim cương beTRAIN, chốt đơn vị kiểm toán.
- [ ] **Giai đoạn 2 (Thẩm định Due Diligence):** Hoàn thành hồ sơ 6 trụ cột (Legal, Finance, Model, HR, Tech, Capital).
- [ ] **Giai đoạn 3 (Nộp hồ sơ & Chào bán):** Hoàn thiện Bản cáo bạch, Roadshow và Niêm yết.
"@
    },
    @{
        Path = "$targetRoot\01_PROJECTS\01.2_Phan_Ra_Cong_Viec_WBS\${today}_WBS_Ke_Hoach_Phan_Bo_Ngan_Sach_CapEx.md"
        Title = "Kế hoạch Phân rã Công việc (WBS) & Dự toán CapEx/OpEx"
        Tags = "project, ipo, wbs, capex, opex"
        Content = @"
## 🏗️ Cấu trúc Phân rã Gói thầu & Đầu việc (WBS)
| Mã WBS | Hạng mục gói thầu | Đơn vị phụ trách | Dự toán CapEx | Dự toán OpEx | Trạng thái |
|---|---|---|---|---|---|
| WBS-01 | Triển khai nền tảng beONE / GoHighLevel | Tech Team | ... | ... | In Progress |
| WBS-02 | Chuẩn hóa hồ sơ pháp lý & ESG | Legal Team | ... | ... | Planning |
| WBS-03 | Xây dựng mô hình tài chính IFRS | Finance Team | ... | ... | In Progress |
| WBS-04 | Thiết lập cơ chế ESOP C-Level | HR Team | ... | ... | Planning |
"@
    },
    @{
        Path = "$targetRoot\01_PROJECTS\01.3_Sprint_Log_Hanh_Dong\${today}_Kanban_Theo_Doi_Tien_Do_Tung_Sprint.md"
        Title = "Nhật ký Sprint & Theo dõi tiến độ tuần hoàn"
        Tags = "project, ipo, sprint, log, hybrid"
        Content = @"
## ⚡ Chu kỳ Sprint Hành Động (2 - 4 tuần/vòng)

### Sprint #01: [Tên Sprint] (Từ: ... Đến: ...)
- **Trọng tâm:** 
- **Cam kết hành động:**
  - [ ] Triển khai Sub-account beONE cho chi nhánh.
  - [ ] Hoàn tất rà soát điều lệ công ty.
"@
    },
    @{
        Path = "$targetRoot\03_RESOURCES\03.1_Kanban_Hien_Truong\${today}_Tang3_Bang_Kanban_Hien_Truong_v1.0.md"
        Title = "Bảng Kanban Hiện trường trực quan"
        Tags = "resource, ipo, kanban, visual-management"
        Content = @"
## 📋 Bảng Kanban Hiện trường (Visual Management)
| Cần làm (To Do) | Đang thực hiện (Doing) | Đã xong (Done) |
|---|---|---|
| Tích hợp Zalo ZOA vào beONE | Rà soát hợp đồng lao động C-Level | Kick-off dự án kim cương |
| Thiết lập Dashboard EBITDA | Chuẩn hóa SOP kiểm kho | |
"@
    },
    @{
        Path = "$targetRoot\03_RESOURCES\03.2_SOP_Quy_Trinh_Chuan\${today}_SOPs_Quy_Trinh_Van_Hanh_Chuan.md"
        Title = "Hệ thống Quy trình Vận hành Chuẩn (SOPs)"
        Tags = "resource, ipo, sops, lean, waste-reduction"
        Content = @"
## 📑 Danh mục Quy trình Vận hành Chuẩn (SOPs)
- **SOP-TECH-01:** Quy trình bàn giao và phân quyền trên beONE / GoHighLevel.
- **SOP-OPS-01:** Quy trình kiểm soát chất lượng và triệt tiêu 7 loại lãng phí.
- **SOP-FIN-01:** Quy trình đối soát doanh thu và kiểm soát dòng tiền ngày/tuần.
"@
    },
    @{
        Path = "$targetRoot\04_ARCHIVES\${today}_Kho_Luu_Tru_Tai_Lieu_v1.0.md"
        Title = "Kho lưu trữ tài liệu cũ & Bản thảo"
        Tags = "archive, ipo, history"
        Content = @"
## 📦 Kho Lưu Trữ Bản Thảo Cũ
Nơi lưu trữ các tài liệu, biên bản và phiên bản dự thảo trước khi hoàn thiện chuẩn kim cương.
"@
    }
)

foreach ($f in $files) {
    $itemContent = @"---
type: project-doc
project: "$safeName"
status: active
tags: [$($f.Tags)]
created: $dateIso
updated: $dateIso
---

# $($f.Title)

$($f.Content)
"@
    [System.IO.File]::WriteAllText($f.Path, $itemContent, [System.Text.Encoding]::UTF8)
}

# 5. Cập nhật wiki/index.md và wiki/log.md
$wikiIndex = "d:\GitHub\beFAMILY\wiki\index.md"
$wikiLog = "d:\GitHub\beFAMILY\wiki\log.md"

if (Test-Path $wikiIndex) {
    $linkEntry = "- [[30 WORK/$folderName/MOC_${safeName}|MOC_$safeName]] - Dự án Định giá Kim Cương beTRAIN 6 khía cạnh (Sponsor: $Sponsor, Target: $IpoTarget)"
    $content = Get-Content -Path $wikiIndex -Raw -Encoding UTF8
    if ($content -notmatch [regex]::Escape("MOC_$safeName")) {
        Add-Content -Path $wikiIndex -Value "`n$linkEntry" -Encoding UTF8
        Write-Host "✅ Đã đăng ký link MOC vào wiki/index.md" -ForegroundColor Green
    }
}

if (Test-Path $wikiLog) {
    $logEntry = "- **$now** [SCAFFOLD]: Khởi tạo dự án Định giá Kim Cương beTRAIN `30 WORK/$folderName` (Sponsor: $Sponsor, Target: $IpoTarget)"
    Add-Content -Path $wikiLog -Value "`n$logEntry" -Encoding UTF8
    Write-Host "✅ Đã ghi nhận nhật ký vào wiki/log.md" -ForegroundColor Green
}

Write-Host "🎉 HOÀN TẤT! Cây thư mục dự án Định giá Kim cương beTRAIN đã sẵn sàng tại: 30 WORK/$folderName" -ForegroundColor Green
