---
name: Khởi tạo dự án Định giá Kim Cương beTRAIN
description: Tự động tạo cây thư mục và khung Lục Giác Kim Cương chuẩn beTRAIN cho SME chuẩn bị IPO.
group: Vận hành
---

# Khởi tạo dự án SME theo Chuẩn Định Giá Kim Cương beTRAIN (Diamond Hexagon Scaffold)

## Khi nào dùng

Kích hoạt khi người dùng yêu cầu:
- "Khởi tạo dự án IPO/Kim cương mới: [Tên dự án]"
- "Tạo cấu trúc dự án SME chuẩn Định giá Kim Cương beTRAIN"
- "Setup bộ khung quản trị 6 khía cạnh (Tam giác 1 Cấu trúc x Tam giác 2 Thị trường) cho [Tên]"
- "Mở dự án [Tên] - Sponsor: [Tên] - Target: [Năm/Sàn]"

## Kiến trúc Lục Giác Kim Cương beTRAIN (6 Khía cạnh cốt lõi)

- **📐 TAM GIÁC 1: CẤU TRÚC (Móng nền phòng thủ & Luật chơi)**
  - `02.1_TamGiac1_Phap_Ly_Tuan_Thu`: Cấu trúc pháp nhân, Giấy phép ngành, IP, ESG.
  - `02.2_TamGiac1_Cau_Truc_Tai_Chinh`: VAS/IFRS, Quản trị thuế, Ngân quỹ, EBITDA & Dòng tiền.
  - `02.3_TamGiac1_Business_Model`: R&D, Chuỗi cung ứng, Định vị sản phẩm, Định giá giá trị.

- **🚀 TAM GIÁC 2: THỊ TRƯỜNG (Cỗ máy tấn công & Scale-up nhân bản)**
  - `02.4_TamGiac2_Con_Nguoi_Nang_Luc`: Định biên, L&D, C&B, OKR/KPI, C-Level & ESOP.
  - `02.5_TamGiac2_Cong_Nghe_He_Thong`: Chuyển đổi số, CRM beONE (GoHighLevel), API/Webhooks, Data Indexing (Tài sản vô hình nhân bội định giá).
  - `02.6_TamGiac2_Nguon_Von_M&A`: Quan hệ Nhà đầu tư (IR), Định giá vốn, Hồ sơ IPO, M&A.

## Quy trình khởi tạo

### Bước 1: Thực thi Script Scaffold
Chạy script PowerShell `automation/new-ipo-project.ps1` hoặc `skills/ipo-project-scaffold/scripts/scaffold.ps1`:
```powershell
powershell -ExecutionPolicy Bypass -File "d:\GitHub\beFAMILY\automation\new-ipo-project.ps1" -ProjectName "<TÊN_DỰ_ÁN>" -Sponsor "<SPONSOR>" -IpoTarget "<TARGET>"
```

### Bước 2: Cây cấu trúc sinh ra
Dự án được tạo tại `30 WORK/<TÊN_DỰ_ÁN>_beTRAIN_DIAMOND/` gồm:
- `MOC_<TÊN_DỰ_ÁN>.md` (Bản đồ Master điều hướng 6 đỉnh Kim cương & Thực thi hiện trường)
- `01_PROJECTS/`
  - `01.1_Lo_Trinh_Gang_Milestones/`
  - `01.2_Phan_Ra_Cong_Viec_WBS/`
  - `01.3_Sprint_Log_Hanh_Dong/`
- `02_AREAS/`
  - `02.1_TamGiac1_Phap_Ly_Tuan_Thu/`
  - `02.2_TamGiac1_Cau_Truc_Tai_Chinh/`
  - `02.3_TamGiac1_Business_Model/`
  - `02.4_TamGiac2_Con_Nguoi_Nang_Luc/`
  - `02.5_TamGiac2_Cong_Nghe_He_Thong/` (beONE / GoHighLevel)
  - `02.6_TamGiac2_Nguon_Von_M&A/`
- `03_RESOURCES/`
  - `03.1_Kanban_Hien_Truong/`
  - `03.2_SOP_Quy_Trinh_Chuan/`
- `04_ARCHIVES/`

### Bước 3: Tự động ánh xạ
- Append đường dẫn MOC vào `wiki/index.md` dưới mục `## Dự án & Vận hành (30 WORK)`.
- Ghi log vào `wiki/log.md`.

