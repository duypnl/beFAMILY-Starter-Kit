---
name: FP&A Driver Planning
description: Tự động phân tích Business Drivers, phân rã chênh lệch Price-Volume-Mix, chạy Rolling Forecast 13 tuần dòng tiền và soạn thảo Management Decision Memo.
description_en: "Analyze business drivers, decompose Price-Volume-Mix variances, run 13-week rolling cash forecasts, and draft Management Decision Memos."
group: Finance
---

# FP&A Driver Planning — Kỹ Năng Lập Kế Hoạch Tài Chính & Dự Báo Động Lực

## Khi Nào Dùng

Kích hoạt khi người dùng:
- Yêu cầu phân tích biến động doanh thu, biên lợi nhuận gộp hoặc dòng tiền.
- Muốn phân rã chênh lệch kế hoạch theo phương pháp **Price-Volume-Mix (PVM)**.
- Yêu cầu chạy **Rolling Forecast 13 tuần (Cash Flow)** hoặc **12–18 tháng (P&L)**.
- Muốn mô phỏng kịch bản What-If (Base / Upside / Downside) cho mục tiêu tài chính.
- Cần soạn thảo **Management Decision Memo (Bản ghi đề xuất quyết định quản trị)** trình CFO/CEO.

---

## Nguyên Tắc Cốt Tử

1. **Tuân thủ Cây 4 Động Lực (4-Pillar Driver Tree):**
   - Doanh thu: $\text{Revenue} = N \times F \times Q \times \text{ASP}$
   - Biên lãi gộp: $\text{Gross Margin} = \text{ASP} - (\text{Giá Mua} \pm \Delta\text{FX} + \text{Freight} + \text{Duty}) - (\text{Discount} + \text{Rebate})$
   - Chi phí vận hành: $\text{OPEX} = \text{Fixed OPEX} + (\text{Revenue} \times \% \text{Variable OPEX})$
   - Vốn lưu động: $\text{CCC} = \text{DSO} + \text{DIO} - \text{DPO}$
2. **Không báo cáo sai lệch bề mặt:** Luôn bóc tách nguyên nhân sâu (Do sản lượng $Q$, do giá bán $\text{ASP}$, do tỷ giá $\text{FX}$, hay do cơ cấu sản phẩm $\text{Mix}$).
3. **Trigger-to-Decision:** Mỗi khi phát hiện sai lệch (Variance) $>2\%$, bắt buộc phải đề xuất tối thiểu 3 phương án đối sách bù đắp.

---

## Quy Trình 5 Bước Thực Hiện

### Bước 1: Thu Thập & Đối Soát Tham Số (Parameters Intake)
- Đọc các biến số từ `DRIVER_ASSUMPTIONS` hoặc file dữ liệu đầu vào.
- Xác định mục tiêu ngân sách (Budget Baseline) vs Số liệu thực tế / Dự báo mới nhất (Forecast).

### Bước 2: Phân Rã Chênh Lệch (Price-Volume-Mix Decomposition)
Áp dụng công thức chuẩn:
- **Tác động Sản Lượng (Volume Impact):** $(Q_{\text{Actual}} - Q_{\text{Budget}}) \times P_{\text{Budget}} \times \text{Mix}_{\text{Budget}}$
- **Tác động Đơn Giá (Price Impact):** $(P_{\text{Actual}} - P_{\text{Budget}}) \times Q_{\text{Actual}}$
- **Tác động Cơ Cấu (Mix Impact):** $Q_{\text{Actual}} \times \sum ((\text{Mix}_{\text{Actual}, i} - \text{Mix}_{\text{Budget}, i}) \times P_{\text{Budget}, i})$

### Bước 3: Cập Nhật Rolling Forecast & Cảnh Báo Thanh Khoản
- Cập nhật dòng tiền 13 tuần: $\text{Tiền Cuối Kỳ} = \text{Tiền Đầu Kỳ} + \text{Thu Hồi AR} - \text{Thanh Toán AP} - \text{Lương} - \text{OPEX}$.
- Cảnh báo ngay nếu bất kỳ tuần nào số dư tiền rơi xuống dưới **Ngưỡng An Toàn Tối Thiểu (Minimum Buffer)**.

### Bước 4: Chạy Mô Phỏng 3 Kịch Bản (Scenario Simulation)
- **Base Case:** Theo quán tính thực tế.
- **Upside Case:** Các yếu tố thuận lợi diễn ra (tăng Win-rate, giảm giá mua).
- **Downside Case:** Rủi ro xảy ra (FX tăng 3%, sản lượng giảm 5%, DSO kéo dài).

### Bước 5: Soạn Thảo Management Decision Memo
Xuất bản báo cáo 1 trang theo cấu trúc chuẩn:
```markdown
# MANAGEMENT DECISION MEMO — FLASH FINANCIAL BRIEFING
- Ngày báo cáo: YYYY-MM-DD
- Người nhận: CFO & CEO

## 1. TỔNG QUAN ĐỘ LỆCH (GAP ANALYSIS)
- Doanh thu dự phóng: ... tỷ VNĐ (Budget: ... tỷ | Gap: ... tỷ)
- Gross Margin dự phóng: ...% (Mục tiêu: ...% | Gap: ... điểm %)

## 2. NGUYÊN NHÂN CỐT LÕI (DRIVER BREAKDOWN)
- Tác động Sản lượng (Volume): ... tỷ VNĐ
- Tác động Giá bán (ASP) & Tỷ giá FX: ... tỷ VNĐ
- Tác động Cơ cấu (Mix): ... tỷ VNĐ

## 3. CẢNH BÁO THANH KHOẢN (LIQUIDITY RADAR)
- Tình trạng quỹ 13 tuần: An toàn / Thiếu hụt tại Tuần X (Số tiền thiếu: ... tỷ)

## 4. MA TRẬN ĐỐI SÁCH ĐỀ XUẤT (RECOMMENDED ACTIONS)
| Phương Án | Hành Động Cụ Thể | Tác Động Phục Hồi Margin / Tiền | Đánh Giá Rủi Ro |
|---|---|---|---|
| Phương án A | Tăng giá bán +1.5% ở SKU chủ lực | +... tỷ VNĐ Lợi nhuận | Thấp |
| Phương án B | Giảm chiết khấu thương mại 1.0% | +... tỷ VNĐ Lợi nhuận | Trung bình |
| Phương án C | Siết hạn mức nợ DSO về 40 ngày | Giải phóng +... tỷ VNĐ Tiền mặt | Thấp |
| Phương án D | Kết hợp cả 3 biện pháp | Đưa Gross Margin về mức mục tiêu | Tối ưu nhất |
```
