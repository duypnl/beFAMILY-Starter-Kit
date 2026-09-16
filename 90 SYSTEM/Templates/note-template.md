<%*
const typeLabels = [
  "Ghi chú — note",
  "Nguồn — source",
  "Tri thức — knowledge",
  "Dự án — project",
  "Quyết định — decision",
  "Đầu ra — output"
];
const typeValues = ["note", "source", "knowledge", "project", "decision", "output"];
const type = await tp.system.suggester(typeLabels, typeValues, false, "Note này dùng để làm gì?") || "note";

const domainLabels = [
  "Tâm linh — faith",
  "Cá nhân và gia đình — life",
  "Tổ chức và công việc — work",
  "Tri thức dùng chung — knowledge",
  "Nội dung đầu ra — outputs",
  "Cấu trúc hệ thống — system"
];
const domainValues = ["faith", "life", "work", "knowledge", "outputs", "system"];
const domain = await tp.system.suggester(domainLabels, domainValues, false, "Note thuộc miền chính nào?") || "life";

const subtypeByType = {
  note: [
    ["Ghi chú thông thường — general", "general"],
    ["Nhật ký — daily", "daily"],
    ["Hồi ký — memoir", "memoir"],
    ["Suy ngẫm — reflection", "reflection"],
    ["Cuộc họp — meeting", "meeting"],
    ["Con người — person", "person"]
  ],
  source: [
    ["Tài liệu tham khảo — reference", "reference"],
    ["Sách — book", "book"],
    ["Chương sách — book-chapter", "book-chapter"],
    ["Bài viết web — web-article", "web-article"],
    ["Media/video — media", "media"]
  ],
  knowledge: [
    ["Tri thức tổng hợp — synthesis", "synthesis"],
    ["Keyword — keyword", "keyword"],
    ["Chứng cớ — evidence", "evidence"],
    ["Hỏi đáp — qa", "qa"]
  ],
  project: [["Dự án — project", "project"]],
  decision: [["Quyết định — decision", "decision"]],
  output: [
    ["Bài viết — article", "article"],
    ["Giáo trình — curriculum", "curriculum"],
    ["Bài trình bày — presentation", "presentation"],
    ["Nội dung khác — general", "general"]
  ]
};
const subtypeOptions = subtypeByType[type] || [["Thông thường — general", "general"]];
const subtype = await tp.system.suggester(
  subtypeOptions.map(item => item[0]),
  subtypeOptions.map(item => item[1]),
  false,
  "Chọn subtype"
) || subtypeOptions[0][1];
-%>
---
type: <% type %>
domain: <% domain %>
subtype: <% subtype %>
status: draft
---

# <% tp.file.title %>

## Ghi nhận
-

## Ý nghĩa
-

## Liên kết
-
