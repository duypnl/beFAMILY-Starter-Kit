---
type: knowledge
domain: system
status: canonical
---

# beFAMILY Metadata Standard

## 1. Mục tiêu

Metadata giúp tìm lại, kiểm chứng, liên kết và chia sẻ; không được biến việc ghi chép thành thủ tục hành chính.

> Chỉ thêm một thuộc tính khi nó phục vụ tìm kiếm, quản trị, kiểm chứng hoặc chia sẻ.

## 2. Hai thuộc tính lõi

Mọi note đã được xử lý chỉ bắt buộc:

```yaml
---
type: note
domain: life
---
```

Inbox và ghi nhanh chưa xử lý không bắt buộc YAML.

### `type` — note này dùng để làm gì?

```text
source     — tài liệu hoặc thông tin nguồn
note       — ghi chú, suy ngẫm hoặc ký ức
knowledge  — tri thức đã xử lý và có thể dùng lại
project    — mục tiêu và hoạt động cần kết quả
decision   — quyết định quan trọng và căn cứ
output     — nội dung được biên tập cho người đọc
```

### `domain` — note thuộc miền trách nhiệm chính nào?

```text
faith      — tâm linh
life       — cá nhân và gia đình
work       — tổ chức và công việc
knowledge  — tri thức dùng chung
outputs    — nội dung dành cho người đọc
system     — cấu trúc và quy tắc của vault
```

Một note chỉ có một `domain` chính (home domain). `domain` quyết định nơi lưu vật lý và miền chịu trách nhiệm duy trì note; wikilink và metadata mô tả các quan hệ còn lại.

Chọn home domain theo thứ tự, dừng ở điều kiện đầu tiên phù hợp:

1. Note phục vụ trực tiếp một dự án cụ thể → `work` và liên kết dự án trong `projects`.
2. Note là tri thức trường tồn, tái sử dụng cho nhiều dự án → `knowledge`.
3. Nếu không thuộc hai trường hợp trên → miền trách nhiệm sử dụng note thường xuyên nhất (`faith`, `life`, `work`, `outputs` hoặc `system`).
4. Chưa rõ → giữ ở `00 - Dashboard` để phân loại trong Weekly Review; không đoán miền.

Khi cần truy vấn quan hệ xuyên miền, dùng trường tùy chọn `related_domains` với đúng controlled values của `domain`:

```yaml
domain: knowledge
related_domains: [faith, work]
```

Không dùng `related_domains` để tạo bản sao hoặc thay thế wikilink đến note/dự án cụ thể.

## 3. Thuộc tính quản trị

Chỉ thêm khi khác giá trị mặc định hoặc có nhu cầu kiểm soát:

```yaml
status: draft
access: internal
```

### `status`

```text
draft       — đang hình thành, giá trị mặc định
reviewed    — đã được xem xét
canonical   — bản chuẩn đã duyệt
deprecated  — không còn dùng làm chuẩn
archived    — chỉ giữ lịch sử
```

### `access`

```text
internal    — dùng trong beFAMILY hoặc tổ chức, giá trị mặc định
shared      — chia sẻ cho nhóm trong audience
public      — có thể công bố
restricted  — có nghĩa vụ bảo vệ
```

## 4. Cơ sở và kiểm chứng

Áp dụng cho `source`, `knowledge`, `decision` hoặc nội dung có kết luận quan trọng:

```yaml
basis: scientific
verification: reviewed
sources:
  - "[[Tên nguồn]]"
```

### `basis`

```text
document-Standard Source       — Tài liệu được giải nghĩa theo Standard Source
scientific           — nghiên cứu khoa học
legal                — văn bản và căn cứ pháp lý
practice             — dữ liệu hoặc kết quả thực tiễn
source-report        — thông tin được nguồn ghi nhận
personal-experience  — trải nghiệm cá nhân
inference            — suy luận từ thông tin hiện có
creative             — ý tưởng mới chưa kiểm chứng
```

### `verification`

```text
raw       — mới thu thập
reviewed  — đã đọc và xem xét
verified  — đã đối chiếu nguồn phù hợp
```

`verified` có nghĩa là đã kiểm tra theo đúng hệ quy chiếu của `basis`; không đồng nghĩa mọi loại nội dung đều được khoa học chứng minh.

## 5. Thuộc tính ngữ cảnh

Chỉ thêm những quan hệ thực sự giúp tìm lại:

```yaml
topics:
  - "[[Chủ đề]]"
organizations:
  - "[[Tổ chức]]"
projects:
  - "[[Dự án]]"
people:
  - "[[Con người]]"
related_domains:
  - work
```

Quy tắc:

- Dùng danh sách YAML kể cả khi chỉ có một giá trị.
- Wikilink trong YAML phải đặt trong dấu ngoặc kép.
- Không tạo link chỉ để làm Graph View đẹp.
- Không thêm `keywords` nếu từ khóa đã có trong tiêu đề hoặc nội dung.
- Dùng `aliases` khi một thực thể có nhiều tên gọi thực tế.

## 6. Nguồn, dẫn xuất và sáng tạo

```yaml
sources:
  - "[[Nguồn gốc]]"
derived_from:
  - "[[Tri thức chuẩn]]"
creative: true
```

- `sources`: bằng chứng hoặc tài liệu làm căn cứ.
- `derived_from`: canonical note mà nội dung này được chuyển thể từ đó.
- `creative: true`: có phần sáng tạo mới; phần đó phải được chỉ rõ trong thân note.

## 7. Đối tượng chia sẻ

Chỉ dùng khi `access: shared`:

```yaml
access: shared
audience:
  - students
  - project-members
```

`access` là mức quyền; `audience` là nhóm người nhận. Không tạo một mức access mới cho từng khóa học hoặc dự án.

## 8. Thuộc tính theo từng loại note

### Source

```yaml
---
type: source
domain: faith
status: draft
basis: document-Standard Source
verification: raw
sources: []
---
```

Có thể thêm: `author`, `published`, `retrieved`, `language`.

### Note

```yaml
---
type: note
domain: life
subtype: memoir
---
```

`subtype` thường dùng: `daily`, `memoir`, `reflection`, `meeting`, `person`.

### Knowledge

```yaml
---
type: knowledge
domain: knowledge
status: draft
basis: practice
verification: raw
sources: []
creative: false
---
```

### Project

```yaml
---
type: project
domain: work
project_status: active
kind: project
started: 2026-07-18
target_date: 2026-12-31
---
```

`project_status`: `planned`, `active`, `on-hold`, `completed`, `cancelled`.

Với thực thể công việc trong `30 WORK`, chỉ thêm `kind` khi cần tách nhịp review:

- `kind: project` — có kết quả hoàn thành cụ thể; dùng `target_date` khi đã có ngày cam kết thực tế.
- `kind: area` — trách nhiệm vận hành liên tục; dùng `review_cadence`: `weekly`, `biweekly`, `monthly` hoặc `quarterly`.

Không tự đặt `target_date`, không đổi hàng loạt note cũ, và không coi tên nhóm A/B/C/D là bằng chứng đủ để gán `kind`.

### Decision

```yaml
---
type: decision
domain: work
status: draft
decision_date: 2026-07-18
projects: []
organizations: []
---
```

Khi quyết định được duyệt, đổi `status` thành `canonical`.

### Output

```yaml
---
type: output
domain: outputs
status: draft
access: internal
audience: []
derived_from: []
creative: false
---
```

Có thể thêm `published` và `publication_url` sau khi phát hành.

## 9. Ngày tháng

- Dùng ISO 8601: `YYYY-MM-DD`.
- Không bắt buộc `created` và `updated` trên mọi note; Obsidian đã có thời gian file.
- Chỉ lưu ngày có ý nghĩa nghiệp vụ: `date`, `started`, `deadline`, `decision_date`, `published`, `retrieved`.

## 10. Tags (beTAG 2026)

Hệ thống Tag tuân thủ toàn diện theo quy chuẩn [[90 SYSTEM/Standards/tag-taxonomy-standard|Chuẩn Hệ Thống Tag beFAMILY OS (beTAG 2026)]].

- Tags đóng vai trò là trục phân loại chủ đề phân cấp `#[domain]/[subdomain]/[topic]` và nhãn trạng thái vận hành xuyên miền (`#status/active`, `#status/draft`, `#status/archived`).
- Tags không thay thế `type`, `domain` hay Wikilink thực thể.
- 100% tag viết thường (lowercase), dạng `kebab-case`, không dùng ký tự gạch ngang dài.
- Mọi tài liệu tri thức, dự án và nhật ký được khuyến nghị gắn ít nhất 1 tag phân cấp theo đúng domain gốc.

## 11. Nguyên tắc Lean

```text
Inbox                    → không bắt buộc YAML
Note thông thường        → type + domain
Tri thức quan trọng      → thêm basis + verification + sources
Nội dung chia sẻ         → thêm access + audience
Nội dung sáng tạo        → thêm creative + mô tả phần sáng tạo
Project/Decision/Output  → dùng phần mở rộng theo loại
```

Không chuẩn hóa hàng loạt note cũ. Chỉ chuẩn hóa khi note được mở lại, sử dụng, chia sẻ hoặc nâng thành bản chuẩn.


