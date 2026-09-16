---
name: arex-disco
description: Chưng cất mã nguồn GitHub và tài liệu kỹ thuật thành Agent Skills tự vận hành theo chuẩn AREX-Skill & DisCo (arXiv:2609.02749).
---

# Kỹ Năng Chưng Cất Tri Thức Mã Nguồn Mở (AREX-DisCo)

Kỹ năng này hiện thực hóa quy trình chưng cất tri thức vận hành (*Operating Knowledge Distillation*) từ các kho mã nguồn mở trên GitHub thành các kỹ năng tự thực thi chuẩn Agent Skills theo phương pháp luận **AREX-Skill** (VectorSpaceLab, arXiv:2609.02749).

## 1. Khi nào nên dùng
- Khi cần phân tích một GitHub Repository mới và đóng gói thành một kỹ năng `SKILL.md` tự vận hành cho beONE hoặc Subagents.
- Khi cần tra cứu và tích hợp các giải pháp từ thư viện 5.000+ skills của AREX-Skill Library (ML, LLMs, Computer Vision, Data Science, Bioinformatics).
- Khi cần xây dựng kịch bản kiểm thử (test scripts), bộ quy tắc phục hồi lỗi (recovery guidance) và tài liệu tham chiếu (references) cho một module công nghệ nội bộ.

## 2. Quy trình chưng cất 4 bước chuẩn DisCo (Creator Workflow)
1. **Quét Cấu Trúc & Điểm Vào (Repository Inspection & Entrypoints):**
   - Đọc `README.md`, `package.json` hoặc `pyproject.toml`, cấu trúc thư mục và các ví dụ chạy thực tế (`examples/`).
   - Xác định ranh giới áp dụng: Khi nào nên kích hoạt kỹ năng này?
2. **Trích Xuất Tri Thức Vận Hành (Operating Knowledge Extraction):**
   - Rút tỉa các lệnh thực thi cốt lõi (CLI commands, API scripts).
   - Xác định các biến môi trường, tham số cấu hình bắt buộc và phần cứng tối thiểu.
3. **Thiết Lập Khung Phục Hồi Lỗi & Kiểm Thử (Recovery Guidance & Test Scripts):**
   - Liệt kê các lỗi ngoại lệ thường gặp và hướng xử lý tự động khi thử nghiệm thất bại.
   - Viết script kiểm thử độc lập trong thư mục `scripts/` để chạy trong Sandbox.
4. **Đóng Gói Theo Chuẩn Agent Skills (.agents/skills/):**
   - Soạn thảo `SKILL.md` với frontmatter chuẩn: `name`, `description`.
   - Cung cấp hướng dẫn từng bước rõ ràng, ngắn gọn, có thể tái lập 100%.

## 3. Đầu ra chuẩn hóa
- Thư mục kỹ năng mới tại `.agents/skills/<tên-kỹ-năng>/SKILL.md`.
- Các tệp tài nguyên bổ trợ trong `references/` và `scripts/` (nếu cần).
