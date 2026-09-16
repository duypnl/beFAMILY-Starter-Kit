---
name: Ingest Source
description: Tiêu hóa một source thô vào Second Brain, chưng cất thành tri thức wiki tích lũy.
description_en: "Digest one raw source into the Second Brain and distil it into wiki knowledge that compounds."
group: AI
---

# INGEST - tiêu hoá 1 source thành wiki (compounding)

## Khi nào dùng

Kích hoạt khi người dùng nói những câu như: "tiêu hoá source này", "xử lý bài này vào
wiki", "đọc file này rồi ghi lại kiến thức", hoặc khi có file mới thả vào `sources/`.

Skill làm theo đúng 3 kỷ luật của vault.

Đọc schema vault (`CLAUDE.md`/`AGENTS.md` ở gốc brain) trước; đây là bản thao tác của phép INGEST.

## Trước khi làm
- Kiểm frontmatter source: `status: processed` -> DỪNG, báo đã xử lý, hỏi có re-ingest không. `unprocessed`/chưa có -> làm.
- Phân loại độ dài. Source dài (>= ~10.000 dòng / sách / transcript) -> BẮT BUỘC 3-pass:
  1. Đọc lướt, lập mục lục theo số dòng (vd "1-1300: giới thiệu"). Báo người dùng xác nhận trọng tâm.
  2. Đọc sâu từng đoạn ~1.000-1.500 dòng, viết wiki NGAY từng đoạn (đừng nén cả file 1 lần - mất 25-40% chi tiết).
  3. Tự hỏi 5 câu về các vùng khác nhau; wiki không trả lời được câu nào -> quét bổ sung vùng đó.

## Các bước
1. Đọc source (kèm ảnh nếu có).
2. Tóm tắt 3-5 ý chính; rút insight/framework; liên hệ khái niệm đã có.
3. Xác định thư mục lưu trữ đích thích hợp trong beFAMILY:
   - `10 FAITH`: Tâm linh, Kinh Thánh, bài học WATV.
   - `20 LIFE`: Đời sống cá nhân, gia đình, sức khỏe, thói quen.
   - `30 WORK`: Vận hành dự án, công việc kinh doanh (vòng đời ngắn/trung hạn).
   - `40 KNOWLEDGE`: Nguyên lý, công thức, bài học trường tồn (evergreen notes).
   - `50 OUTPUTS`: Bài viết, nội dung xuất bản.
4. Viết/cập nhật file text nội dung gốc trực tiếp vào thư mục beFAMILY đã chọn. Đảm bảo file có Metadata (Frontmatter) chuẩn:
   - `type: wiki`
   - `status: active`
   - `tags: [wiki, <nhóm>]`
   - `aliases: [...]` (tên viết tắt, tên tiếng Anh nếu có để sau này AI dễ tìm kiếm)
   - `created: <YYYY-MM-DD HH:mm>`
   - `updated: <YYYY-MM-DD HH:mm>`
   - `source: [[<tên-file-nguồn>]]`
   Tuân thủ 3 kỷ luật (citation cứng trỏ về `[[Nguồn]]`, phân rõ "(mục tiêu)"/"(thực tế)", ghi nhận mâu thuẫn vào `## Mâu thuẫn` + append `wiki/_open-questions.md`).
5. Đăng ký liên kết ánh xạ (link mapping) vào file bản đồ điều hướng `wiki/index.md`.
   - Cú pháp liên kết trong index PHẢI bao gồm cả thư mục số để AI dễ định vị: `-[[40 KNOWLEDGE/Marketing/Value Equation]]: mô tả ngắn gọn.`
6. Set source `status: processed`, `processed_at`, `wiki_links: [...]`.
7. Append nhật ký vào `wiki/log.md`: `## [YYYY-MM-DD] ingest | <tên source>` + đường dẫn file gốc đã lưu + insight.
8. Đề xuất task nếu source mở ra hành động (chỉ đề xuất). Báo cáo ngắn: tóm tắt + đường dẫn file đã tạo + insight.

