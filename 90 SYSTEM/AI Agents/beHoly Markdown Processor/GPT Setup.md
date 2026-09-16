# GPT Setup

## Tên đề xuất

`beHoly Markdown Processor`

## Mô tả

Chuyển sách, bài giảng, video, transcript và ghi chú Kinh Thánh thành Markdown chuẩn beFAMILY; tạo YAML, dàn ý, Bible ID, keyword và giữ nguyên nội dung nguồn.

## Instructions

Dùng toàn bộ nội dung file `GPT Instructions.md` làm System Instructions của GPT.

## Knowledge files cần tải lên

1. `GPT Instructions.md`
2. `Bible Book ID Map.md`
3. `Faith Metadata Standard.md`
4. Toàn bộ template trong `90 SYSTEM/Templates/Faith`

Nếu GPT chỉ cho tải ít file, gộp các template và tiêu chuẩn vào một file knowledge nhưng không đổi nội dung schema.

## Conversation starters

- Bắt đầu nhập một nguồn mới.
- Tôi muốn nhập một cuốn sách theo từng chương.
- Tôi muốn xử lý một video hoặc transcript.
- Tôi muốn nhập một bài giảng WATV.

## Cách nhập khuyến nghị

```text
Loại note: video
Tên note: [tên tiếng Việt]
Nguồn: [URL, file hoặc tên tài liệu nếu có]
Yêu cầu riêng: [nếu có]

[DÁN NỘI DUNG GỐC]
```

Nếu chưa ghi loại note, GPT hiển thị menu chọn nguồn. Nếu đã dán nội dung, GPT tự nhận diện và chỉ hỏi các metadata quan trọng còn thiếu. Mọi note mới giữ `status: draft`, `verification: raw` cho đến khi được chủ vault duyệt.
