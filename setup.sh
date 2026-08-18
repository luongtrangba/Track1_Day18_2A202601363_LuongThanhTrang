#!/bin/bash

# Setup script for Track1_Day18 Repository
# Creates directory structure and markdown templates

PROJECT_DIR="/workspaces/Track1_Day18_2A202601363_LuongThanhTrang"

# Create directory if it doesn't exist
mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR"

echo "📁 Creating project structure for Track1_Day18_2A202601363_LuongThanhTrang..."

# ============================================================================
# 1. README.md
# ============================================================================
cat > README.md << 'EOF'
# Track1_Day18 - AI Support Radar

## 1. Thông tin cá nhân và nhóm

| Thông tin | Chi tiết |
|-----------|----------|
| **MHV** | 2A202601363 |
| **Họ tên** | Lương Thanh Trang |
| **Tên nhóm** | Track1_badao |
| **Case Study** | Case C: AI Support Radar |
| **Các thành viên** | [Liệt kê các thành viên khác] |

---

## 2. Hypothesis Problem

[Vấn đề chốt từ Day 17 mang qua Day 18 - Mô tả problem hypothesis]

---

## 3. Three Solution Options

### Option A: [Tên Option A]
**Mô tả:** [Mô tả ngắn về option A]  
**Prototype Link:** [Link Figma/Prototype Tool]

### Option B: [Tên Option B]
**Mô tả:** [Mô tả ngắn về option B]  
**Prototype Link:** [Link Figma/Prototype Tool]

### Option C: [Tên Option C]
**Mô tả:** [Mô tả ngắn về option C]  
**Prototype Link:** [Link Figma/Prototype Tool]

**Bảng so sánh chi tiết:** Xem [three-option-design-sheet.md](three-option-design-sheet.md)

---

## 4. Đóng góp của tôi trong nhóm

### Phụ trách
[Phụ trách thiết kế Option nào? (A/B/C)]

### Chi tiết công việc
- **Thiết kế Human-AI:** [Mô tả]
- **Facilitation:** [Mô tả]
- **Quan sát & Tổng hợp:** [Mô tả]

---

## 5. Prototype Feedback

### Tổng quan Observation
[Tổng hợp observation từ phiên facilitate cá nhân]

### 3 Feedback Synthesis
1. **Feedback 1:** [Chi tiết]
2. **Feedback 2:** [Chi tiết]
3. **Feedback 3:** [Chi tiết]

### Next Change
[Các thay đổi cần thực hiện tiếp theo]

### Still Unproven
[Những điểm chưa được kiểm chứng]

**Chi tiết đầy đủ:** Xem [prototype-feedback-note.md](prototype-feedback-note.md)

---

## 6. AI Support Log

**Tóm tắt:** [Mô tả ngắn AI hỗ trợ gì]

| Điểm mạnh AI | Điểm AI sai/hời hợt | Cách tôi tự sửa |
|--------------|-------------------|----------------|
| [Điểm mạnh 1] | [Sai lầm 1] | [Cách sửa 1] |
| [Điểm mạnh 2] | [Sai lầm 2] | [Cách sửa 2] |
| [Điểm mạnh 3] | [Sai lầm 3] | [Cách sửa 3] |

**Chi tiết đầy đủ:** Xem [ai-support-log.md](ai-support-log.md)

---

EOF

echo "✅ README.md created"

# ============================================================================
# 2. three-option-design-sheet.md
# ============================================================================
cat > three-option-design-sheet.md << 'EOF'
# Three Solution Options - Design Sheet

## Tổng quan So sánh 3 Options

### Bảng So sánh Option A / B / C

| Tiêu chí | Option A | Option B | Option C |
|----------|----------|----------|----------|
| **Tên Option** | [Option A Name] | [Option B Name] | [Option C Name] |
| **Mô tả** | [Description] | [Description] | [Description] |
| **Mechanism** | [How it works] | [How it works] | [How it works] |

---

## Human-AI Decision Framework

### User – AI Phân chia việc

| Khía cạnh | Option A | Option B | Option C |
|----------|----------|----------|----------|
| **AI chủ động** | [Mô tả] | [Mô tả] | [Mô tả] |
| **User quyết định** | [Mô tả] | [Mô tả] | [Mô tả] |
| **Collaboration** | [Mô tả] | [Mô tả] | [Mô tả] |

---

## Human-AI Expectations & Agency

### Expectation (Kỳ vọng người dùng)

| Option | Kỳ vọng |
|--------|---------|
| **Option A** | [Mô tả kỳ vọng] |
| **Option B** | [Mô tả kỳ vọng] |
| **Option C** | [Mô tả kỳ vọng] |

### Agency (Quyền kiểm soát người dùng)

| Option | Mức độ Agency |
|--------|---------------|
| **Option A** | [Cao/Trung bình/Thấp] - [Mô tả] |
| **Option B** | [Cao/Trung bình/Thấp] - [Mô tả] |
| **Option C** | [Cao/Trung bình/Thấp] - [Mô tả] |

---

## Evidence & Uncertainty

### Điểm đã chứng minh

- [Điểm 1]
- [Điểm 2]
- [Điểm 3]

### Điểm chưa chứng minh (Uncertainty)

- [Điểm 1]
- [Điểm 2]
- [Điểm 3]

---

## Recovery (Xử lý lỗi & Phục hồi)

| Option | Chiến lược Recovery |
|--------|-------------------|
| **Option A** | [Cách xử lý khi AI sai] |
| **Option B** | [Cách xử lý khi AI sai] |
| **Option C** | [Cách xử lý khi AI sai] |

---

## Link tài liệu thiết kế

- **Figma Board:** [Link Figma]
- **Miro Board:** [Link Miro]
- **Prototype Link:** Xem [prototype-link.md](prototype-link.md)

EOF

echo "✅ three-option-design-sheet.md created"

# ============================================================================
# 3. prototype-link.md
# ============================================================================
cat > prototype-link.md << 'EOF'
# Prototype Links

Danh sách các bản micro-prototype của nhóm.

## Option A: [Tên Option A]

**Link Prototype:** [Chèn link Figma/Prototype Tool tại đây]

**Descripton:** [Mô tả ngắn]

---

## Option B: [Tên Option B]

**Link Prototype:** [Chèn link Figma/Prototype Tool tại đây]

**Description:** [Mô tả ngắn]

---

## Option C: [Tên Option C]

**Link Prototype:** [Chèn link Figma/Prototype Tool tại đây]

**Description:** [Mô tả ngắn]

---

## Ghi chú

- Các prototype được thiết kế chung bởi nhóm Track1_badao
- Chi tiết so sánh: Xem [three-option-design-sheet.md](three-option-design-sheet.md)
- Feedback từ test: Xem [group-feedback-synthesis.md](group-feedback-synthesis.md)

EOF

echo "✅ prototype-link.md created"

# ============================================================================
# 4. prototype-feedback-note.md
# ============================================================================
cat > prototype-feedback-note.md << 'EOF'
# Prototype Feedback Note - Facilitation Session

**Ngày test:** [DD/MM/YYYY]  
**Facilitator:** Lương Thanh Trang  
**Option(s) tested:** [Option A / B / C]

---

## Thông tin Tester

| Thông tin | Chi tiết |
|-----------|----------|
| **Tên** | [Tên tester] |
| **Background** | [Background/Expertise] |
| **Kinh nghiệm liên quan** | [Kinh nghiệm] |
| **Động lực tham gia** | [Lý do tham gia] |

---

## Task

**Mô tả task:** [Mô tả chi tiết task mà tester cần thực hiện]

**Thời gian dự kiến:** [Số phút]

**Mục tiêu:** [Mục tiêu của task này]

---

## Observation Log

### Phase 1: [Phase name - ví dụ: Onboarding]
- **Thời gian:** [mm:ss - mm:ss]
- **Observation:** [Ghi chú quan sát]
- **Behavioral cue:** [Hành động, bộ mặt, phản ứng của tester]

### Phase 2: [Phase name]
- **Thời gian:** [mm:ss - mm:ss]
- **Observation:** [Ghi chú quan sát]
- **Behavioral cue:** [Hành động, bộ mặt, phản ứng của tester]

### Phase 3: [Phase name]
- **Thời gian:** [mm:ss - mm:ss]
- **Observation:** [Ghi chú quan sát]
- **Behavioral cue:** [Hành động, bộ mặt, phản ứng của tester]

---

## Feedback Chi tiết

### 1. Feedback về [Khía cạnh A]

**Tester nói:** [Trích dẫn trực tiếp hoặc tóm tắt]

**Ý nghĩa:** [Giải thích ý nghĩa của feedback này]

**Hàm ý:** [Hàm ý với design - Design này giúp gì? Hay gây khó khăn gì?]

### 2. Feedback về [Khía cạnh B]

**Tester nói:** [Trích dẫn trực tiếp hoặc tóm tắt]

**Ý nghĩa:** [Giải thích ý nghĩa của feedback này]

**Hàm ý:** [Hàm ý với design]

### 3. Feedback về [Khía cạnh C]

**Tester nói:** [Trích dẫn trực tiếp hoặc tóm tắt]

**Ý nghĩa:** [Giải thích ý nghĩa của feedback này]

**Hàm ý:** [Hàm ý với design]

---

## Khám phá thêm (Follow-up questions & answers)

| Câu hỏi | Trả lời | Insight |
|--------|--------|---------|
| [Câu 1] | [Trả lời] | [Insight] |
| [Câu 2] | [Trả lời] | [Insight] |
| [Câu 3] | [Trả lời] | [Insight] |

---

## Summary

**3 điểm chính:** 
1. [Điểm 1]
2. [Điểm 2]
3. [Điểm 3]

**Next Change:** [Thay đổi cần làm tiếp theo]

**Still Unproven:** [Những điểm chưa được kiểm chứng]

EOF

echo "✅ prototype-feedback-note.md created"

# ============================================================================
# 5. group-feedback-synthesis.md
# ============================================================================
cat > group-feedback-synthesis.md << 'EOF'
# Group Feedback Synthesis

Tổng hợp kết quả test từ cả 3 tester của nhóm Track1_badao.

---

## Tester Overview

| Tester | Option tested | Facilitator | Ngày test |
|--------|---------------|-------------|-----------|
| Tester 1: [Tên] | [Option A/B/C] | [Tên] | [DD/MM/YYYY] |
| Tester 2: [Tên] | [Option A/B/C] | [Tên] | [DD/MM/YYYY] |
| Tester 3: [Tên] | [Option A/B/C] | [Tên] | [DD/MM/YYYY] |

---

## Pattern & Khác biệt

### Pattern (Điểm chung giữa các tester)

| Pattern | Xuất hiện ở tester | Mô tả |
|---------|------------------|-------|
| [Pattern 1] | Tester 1, 2, 3 | [Mô tả] |
| [Pattern 2] | Tester 1, 3 | [Mô tả] |
| [Pattern 3] | Tester 2 | [Mô tả] |

### Khác biệt (Điểm khác nhau giữa các tester)

| Khác biệt | Tester | Mô tả |
|----------|--------|-------|
| [Khác biệt 1] | [Tester X] | [Mô tả] |
| [Khác biệt 2] | [Tester Y] | [Mô tả] |
| [Khác biệt 3] | [Tester Z] | [Mô tả] |

---

## Group Next Change

### Priority 1 (Phải làm ngay)
- **Vấn đề:** [Vấn đề]
- **Tại sao:** [Lý do từ feedback]
- **Solution:** [Giải pháp]

### Priority 2 (Nên làm)
- **Vấn đề:** [Vấn đề]
- **Tại sao:** [Lý do từ feedback]
- **Solution:** [Giải pháp]

### Priority 3 (Xem xét)
- **Vấn đề:** [Vấn đề]
- **Tại sao:** [Lý do từ feedback]
- **Solution:** [Giải pháp]

---

## Điểm chưa kiểm chứng (Still Unproven)

| Điểm | Tại sao chưa kiểm chứng | Cách kiểm chứng tiếp theo |
|-----|----------------------|--------------------------|
| [Điểm 1] | [Lý do] | [Phương pháp] |
| [Điểm 2] | [Lý do] | [Phương pháp] |
| [Điểm 3] | [Lý do] | [Phương pháp] |

---

## Chi tiết feedback từng tester

- **Tester 1:** Xem [prototype-feedback-note.md](prototype-feedback-note.md) (Facilitator: [Tên])
- **Tester 2:** Xem tài liệu từ facilitator [Tên]
- **Tester 3:** Xem tài liệu từ facilitator [Tên]

---

## Kết luận & Hướng tiếp theo

[Mô tả hướng tiếp theo sau khi tổng hợp feedback từ 3 tester]

EOF

echo "✅ group-feedback-synthesis.md created"

# ============================================================================
# 6. ai-support-log.md
# ============================================================================
cat > ai-support-log.md << 'EOF'
# AI Support Log - Day 18

**Tác giả:** Lương Thanh Trang  
**Ngày:** [DD/MM/YYYY]  
**Session:** Track1_Day18 Lab Work

---

## Tóm tắt

[Mô tả ngắn về cách AI hỗ trợ trong suốt buổi Lab Day 18]

---

## Sử dụng AI - Chi tiết

### 1. AI hỗ trợ gì?

#### Task 1: [Tên task]
- **Mục đích:** [Mục đích]
- **Prompt/Request:** [Yêu cầu tôi đặt ra]
- **AI Response:** [AI trả lời gì]
- **Kết quả:** [Kết quả - Có hữu ích không?]

#### Task 2: [Tên task]
- **Mục đích:** [Mục đích]
- **Prompt/Request:** [Yêu cầu tôi đặt ra]
- **AI Response:** [AI trả lời gì]
- **Kết quả:** [Kết quả - Có hữu ích không?]

#### Task 3: [Tên task]
- **Mục đích:** [Mục đích]
- **Prompt/Request:** [Yêu cầu tôi đặt ra]
- **AI Response:** [AI trả lời gì]
- **Kết quả:** [Kết quả - Có hữu ích không?]

---

## Điểm AI sai / Hời hợt & Cách tôi tự sửa

### Error 1: [Mô tả lỗi]

**AI nói:** [Trích dẫn AI response]

**Vấn đề:** [Tại sao sai?]

**Cách tôi sửa:** [Cách tôi tự sửa]

**Lesson learned:** [Bài học rút ra]

### Error 2: [Mô tả lỗi]

**AI nói:** [Trích dẫn AI response]

**Vấn đề:** [Tại sao sai?]

**Cách tôi sửa:** [Cách tôi tự sửa]

**Lesson learned:** [Bài học rút ra]

### Error 3: [Mô tả lỗi]

**AI nói:** [Trích dẫn AI response]

**Vấn đề:** [Tại sao sai?]

**Cách tôi sửa:** [Cách tôi tự sửa]

**Lesson learned:** [Bài học rút ra]

---

## Reflection

### Điểm AI làm tốt
1. [Điểm mạnh 1]
2. [Điểm mạnh 2]
3. [Điểm mạnh 3]

### Giới hạn AI / Khi nào không nên dùng
1. [Giới hạn 1]
2. [Giới hạn 2]
3. [Giới hạn 3]

### Cách tôi sẽ dùng AI hiệu quả hơn lần tới
1. [Cách 1]
2. [Cách 2]
3. [Cách 3]

---

EOF

echo "✅ ai-support-log.md created"

echo ""
echo "════════════════════════════════════════════════════════════"
echo "✨ Setup completed successfully!"
echo "════════════════════════════════════════════════════════════"
echo ""
echo "📁 Created files:"
echo "  ✓ README.md"
echo "  ✓ three-option-design-sheet.md"
echo "  ✓ prototype-link.md"
echo "  ✓ prototype-feedback-note.md"
echo "  ✓ group-feedback-synthesis.md"
echo "  ✓ ai-support-log.md"
echo ""
echo "📍 Location: $PROJECT_DIR"
echo ""
echo "📝 Next steps:"
echo "  1. Fill in the templates with your actual content"
echo "  2. Add links to Figma prototypes in prototype-link.md"
echo "  3. Document your findings and insights"
echo ""
EOF

chmod +x setup.sh

echo "✅ setup.sh created and made executable!"

# ============================================================================
# Also create PowerShell version for Windows users
# ============================================================================
cat > setup.ps1 << 'EOF'
# Setup script for Track1_Day18 Repository (PowerShell)
# Creates directory structure and markdown templates

$ProjectDir = "Track1_Day18_2A202601363_LuongThanhTrang"

# Create directory if it doesn't exist
if (-not (Test-Path $ProjectDir)) {
    New-Item -ItemType Directory -Path $ProjectDir | Out-Null
}

Set-Location $ProjectDir

Write-Host "📁 Creating project structure for Track1_Day18_2A202601363_LuongThanhTrang..." -ForegroundColor Cyan

# Create README.md
@"
# Track1_Day18 - AI Support Radar

## 1. Thông tin cá nhân và nhóm

| Thông tin | Chi tiết |
|-----------|----------|
| **MHV** | 2A202601363 |
| **Họ tên** | Lương Thanh Trang |
| **Tên nhóm** | Track1_badao |
| **Case Study** | Case C: AI Support Radar |
| **Các thành viên** | [Liệt kê các thành viên khác] |

---

## 2. Hypothesis Problem

[Vấn đề chốt từ Day 17 mang qua Day 18 - Mô tả problem hypothesis]

---

## 3. Three Solution Options

### Option A: [Tên Option A]
**Mô tả:** [Mô tả ngắn về option A]  
**Prototype Link:** [Link Figma/Prototype Tool]

### Option B: [Tên Option B]
**Mô tả:** [Mô tả ngắn về option B]  
**Prototype Link:** [Link Figma/Prototype Tool]

### Option C: [Tên Option C]
**Mô tả:** [Mô tả ngắn về option C]  
**Prototype Link:** [Link Figma/Prototype Tool]

**Bảng so sánh chi tiết:** Xem [three-option-design-sheet.md](three-option-design-sheet.md)

---

## 4. Đóng góp của tôi trong nhóm

### Phụ trách
[Phụ trách thiết kế Option nào? (A/B/C)]

### Chi tiết công việc
- **Thiết kế Human-AI:** [Mô tả]
- **Facilitation:** [Mô tả]
- **Quan sát & Tổng hợp:** [Mô tả]

---

## 5. Prototype Feedback

### Tổng quan Observation
[Tổng hợp observation từ phiên facilitate cá nhân]

### 3 Feedback Synthesis
1. **Feedback 1:** [Chi tiết]
2. **Feedback 2:** [Chi tiết]
3. **Feedback 3:** [Chi tiết]

### Next Change
[Các thay đổi cần thực hiện tiếp theo]

### Still Unproven
[Những điểm chưa được kiểm chứng]

**Chi tiết đầy đủ:** Xem [prototype-feedback-note.md](prototype-feedback-note.md)

---

## 6. AI Support Log

**Tóm tắt:** [Mô tả ngắn AI hỗ trợ gì]

| Điểm mạnh AI | Điểm AI sai/hời hợt | Cách tôi tự sửa |
|--------------|-------------------|----------------|
| [Điểm mạnh 1] | [Sai lầm 1] | [Cách sửa 1] |
| [Điểm mạnh 2] | [Sai lầm 2] | [Cách sửa 2] |
| [Điểm mạnh 3] | [Sai lầm 3] | [Cách sửa 3] |

**Chi tiết đầy đủ:** Xem [ai-support-log.md](ai-support-log.md)

---
"@ | Out-File -FilePath README.md -Encoding UTF8

Write-Host "✅ README.md created" -ForegroundColor Green

# Create three-option-design-sheet.md
@"
# Three Solution Options - Design Sheet

## Tổng quan So sánh 3 Options

### Bảng So sánh Option A / B / C

| Tiêu chí | Option A | Option B | Option C |
|----------|----------|----------|----------|
| **Tên Option** | [Option A Name] | [Option B Name] | [Option C Name] |
| **Mô tả** | [Description] | [Description] | [Description] |
| **Mechanism** | [How it works] | [How it works] | [How it works] |

---

## Human-AI Decision Framework

### User – AI Phân chia việc

| Khía cạnh | Option A | Option B | Option C |
|----------|----------|----------|----------|
| **AI chủ động** | [Mô tả] | [Mô tả] | [Mô tả] |
| **User quyết định** | [Mô tả] | [Mô tả] | [Mô tả] |
| **Collaboration** | [Mô tả] | [Mô tả] | [Mô tả] |

---

## Human-AI Expectations & Agency

### Expectation (Kỳ vọng người dùng)

| Option | Kỳ vọng |
|--------|---------|
| **Option A** | [Mô tả kỳ vọng] |
| **Option B** | [Mô tả kỳ vọng] |
| **Option C** | [Mô tả kỳ vọng] |

### Agency (Quyền kiểm soát người dùng)

| Option | Mức độ Agency |
|--------|---------------|
| **Option A** | [Cao/Trung bình/Thấp] - [Mô tả] |
| **Option B** | [Cao/Trung bình/Thấp] - [Mô tả] |
| **Option C** | [Cao/Trung bình/Thấp] - [Mô tả] |

---

## Evidence & Uncertainty

### Điểm đã chứng minh

- [Điểm 1]
- [Điểm 2]
- [Điểm 3]

### Điểm chưa chứng minh (Uncertainty)

- [Điểm 1]
- [Điểm 2]
- [Điểm 3]

---

## Recovery (Xử lý lỗi & Phục hồi)

| Option | Chiến lược Recovery |
|--------|-------------------|
| **Option A** | [Cách xử lý khi AI sai] |
| **Option B** | [Cách xử lý khi AI sai] |
| **Option C** | [Cách xử lý khi AI sai] |

---

## Link tài liệu thiết kế

- **Figma Board:** [Link Figma]
- **Miro Board:** [Link Miro]
- **Prototype Link:** Xem [prototype-link.md](prototype-link.md)

---
"@ | Out-File -FilePath three-option-design-sheet.md -Encoding UTF8

Write-Host "✅ three-option-design-sheet.md created" -ForegroundColor Green

# Create prototype-link.md
@"
# Prototype Links

Danh sách các bản micro-prototype của nhóm.

## Option A: [Tên Option A]

**Link Prototype:** [Chèn link Figma/Prototype Tool tại đây]

**Description:** [Mô tả ngắn]

---

## Option B: [Tên Option B]

**Link Prototype:** [Chèn link Figma/Prototype Tool tại đây]

**Description:** [Mô tả ngắn]

---

## Option C: [Tên Option C]

**Link Prototype:** [Chèn link Figma/Prototype Tool tại đây]

**Description:** [Mô tả ngắn]

---

## Ghi chú

- Các prototype được thiết kế chung bởi nhóm Track1_badao
- Chi tiết so sánh: Xem [three-option-design-sheet.md](three-option-design-sheet.md)
- Feedback từ test: Xem [group-feedback-synthesis.md](group-feedback-synthesis.md)

---
"@ | Out-File -FilePath prototype-link.md -Encoding UTF8

Write-Host "✅ prototype-link.md created" -ForegroundColor Green

# Create prototype-feedback-note.md
@"
# Prototype Feedback Note - Facilitation Session

**Ngày test:** [DD/MM/YYYY]  
**Facilitator:** Lương Thanh Trang  
**Option(s) tested:** [Option A / B / C]

---

## Thông tin Tester

| Thông tin | Chi tiết |
|-----------|----------|
| **Tên** | [Tên tester] |
| **Background** | [Background/Expertise] |
| **Kinh nghiệm liên quan** | [Kinh nghiệm] |
| **Động lực tham gia** | [Lý do tham gia] |

---

## Task

**Mô tả task:** [Mô tả chi tiết task mà tester cần thực hiện]

**Thời gian dự kiến:** [Số phút]

**Mục tiêu:** [Mục tiêu của task này]

---

## Observation Log

### Phase 1: [Phase name - ví dụ: Onboarding]
- **Thời gian:** [mm:ss - mm:ss]
- **Observation:** [Ghi chú quan sát]
- **Behavioral cue:** [Hành động, bộ mặt, phản ứng của tester]

### Phase 2: [Phase name]
- **Thời gian:** [mm:ss - mm:ss]
- **Observation:** [Ghi chú quan sát]
- **Behavioral cue:** [Hành động, bộ mặt, phản ứng của tester]

### Phase 3: [Phase name]
- **Thời gian:** [mm:ss - mm:ss]
- **Observation:** [Ghi chú quan sát]
- **Behavioral cue:** [Hành động, bộ mặt, phản ứng của tester]

---

## Feedback Chi tiết

### 1. Feedback về [Khía cạnh A]

**Tester nói:** [Trích dẫn trực tiếp hoặc tóm tắt]

**Ý nghĩa:** [Giải thích ý nghĩa của feedback này]

**Hàm ý:** [Hàm ý với design - Design này giúp gì? Hay gây khó khăn gì?]

### 2. Feedback về [Khía cạnh B]

**Tester nói:** [Trích dẫn trực tiếp hoặc tóm tắt]

**Ý nghĩa:** [Giải thích ý nghĩa của feedback này]

**Hàm ý:** [Hàm ý với design]

### 3. Feedback về [Khía cạnh C]

**Tester nói:** [Trích dẫn trực tiếp hoặc tóm tắt]

**Ý nghĩa:** [Giải thích ý nghĩa của feedback này]

**Hàm ý:** [Hàm ý với design]

---

## Khám phá thêm (Follow-up questions & answers)

| Câu hỏi | Trả lời | Insight |
|--------|--------|---------|
| [Câu 1] | [Trả lời] | [Insight] |
| [Câu 2] | [Trả lời] | [Insight] |
| [Câu 3] | [Trả lời] | [Insight] |

---

## Summary

**3 điểm chính:** 
1. [Điểm 1]
2. [Điểm 2]
3. [Điểm 3]

**Next Change:** [Thay đổi cần làm tiếp theo]

**Still Unproven:** [Những điểm chưa được kiểm chứng]

---
"@ | Out-File -FilePath prototype-feedback-note.md -Encoding UTF8

Write-Host "✅ prototype-feedback-note.md created" -ForegroundColor Green

# Create group-feedback-synthesis.md
@"
# Group Feedback Synthesis

Tổng hợp kết quả test từ cả 3 tester của nhóm Track1_badao.

---

## Tester Overview

| Tester | Option tested | Facilitator | Ngày test |
|--------|---------------|-------------|-----------|
| Tester 1: [Tên] | [Option A/B/C] | [Tên] | [DD/MM/YYYY] |
| Tester 2: [Tên] | [Option A/B/C] | [Tên] | [DD/MM/YYYY] |
| Tester 3: [Tên] | [Option A/B/C] | [Tên] | [DD/MM/YYYY] |

---

## Pattern & Khác biệt

### Pattern (Điểm chung giữa các tester)

| Pattern | Xuất hiện ở tester | Mô tả |
|---------|------------------|-------|
| [Pattern 1] | Tester 1, 2, 3 | [Mô tả] |
| [Pattern 2] | Tester 1, 3 | [Mô tả] |
| [Pattern 3] | Tester 2 | [Mô tả] |

### Khác biệt (Điểm khác nhau giữa các tester)

| Khác biệt | Tester | Mô tả |
|----------|--------|-------|
| [Khác biệt 1] | [Tester X] | [Mô tả] |
| [Khác biệt 2] | [Tester Y] | [Mô tả] |
| [Khác biệt 3] | [Tester Z] | [Mô tả] |

---

## Group Next Change

### Priority 1 (Phải làm ngay)
- **Vấn đề:** [Vấn đề]
- **Tại sao:** [Lý do từ feedback]
- **Solution:** [Giải pháp]

### Priority 2 (Nên làm)
- **Vấn đề:** [Vấn đề]
- **Tại sao:** [Lý do từ feedback]
- **Solution:** [Giải pháp]

### Priority 3 (Xem xét)
- **Vấn đề:** [Vấn đề]
- **Tại sao:** [Lý do từ feedback]
- **Solution:** [Giải pháp]

---

## Điểm chưa kiểm chứng (Still Unproven)

| Điểm | Tại sao chưa kiểm chứng | Cách kiểm chứng tiếp theo |
|-----|----------------------|--------------------------|
| [Điểm 1] | [Lý do] | [Phương pháp] |
| [Điểm 2] | [Lý do] | [Phương pháp] |
| [Điểm 3] | [Lý do] | [Phương pháp] |

---

## Chi tiết feedback từng tester

- **Tester 1:** Xem [prototype-feedback-note.md](prototype-feedback-note.md) (Facilitator: [Tên])
- **Tester 2:** Xem tài liệu từ facilitator [Tên]
- **Tester 3:** Xem tài liệu từ facilitator [Tên]

---

## Kết luận & Hướng tiếp theo

[Mô tả hướng tiếp theo sau khi tổng hợp feedback từ 3 tester]

---
"@ | Out-File -FilePath group-feedback-synthesis.md -Encoding UTF8

Write-Host "✅ group-feedback-synthesis.md created" -ForegroundColor Green

# Create ai-support-log.md
@"
# AI Support Log - Day 18

**Tác giả:** Lương Thanh Trang  
**Ngày:** [DD/MM/YYYY]  
**Session:** Track1_Day18 Lab Work

---

## Tóm tắt

[Mô tả ngắn về cách AI hỗ trợ trong suốt buổi Lab Day 18]

---

## Sử dụng AI - Chi tiết

### 1. AI hỗ trợ gì?

#### Task 1: [Tên task]
- **Mục đích:** [Mục đích]
- **Prompt/Request:** [Yêu cầu tôi đặt ra]
- **AI Response:** [AI trả lời gì]
- **Kết quả:** [Kết quả - Có hữu ích không?]

#### Task 2: [Tên task]
- **Mục đích:** [Mục đích]
- **Prompt/Request:** [Yêu cầu tôi đặt ra]
- **AI Response:** [AI trả lời gì]
- **Kết quả:** [Kết quả - Có hữu ích không?]

#### Task 3: [Tên task]
- **Mục đích:** [Mục đích]
- **Prompt/Request:** [Yêu cầu tôi đặt ra]
- **AI Response:** [AI trả lời gì]
- **Kết quả:** [Kết quả - Có hữu ích không?]

---

## Điểm AI sai / Hời hợt & Cách tôi tự sửa

### Error 1: [Mô tả lỗi]

**AI nói:** [Trích dẫn AI response]

**Vấn đề:** [Tại sao sai?]

**Cách tôi sửa:** [Cách tôi tự sửa]

**Lesson learned:** [Bài học rút ra]

### Error 2: [Mô tả lỗi]

**AI nói:** [Trích dẫn AI response]

**Vấn đề:** [Tại sao sai?]

**Cách tôi sửa:** [Cách tôi tự sửa]

**Lesson learned:** [Bài học rút ra]

### Error 3: [Mô tả lỗi]

**AI nói:** [Trích dẫn AI response]

**Vấn đề:** [Tại sao sai?]

**Cách tôi sửa:** [Cách tôi tự sửa]

**Lesson learned:** [Bài học rút ra]

---

## Reflection

### Điểm AI làm tốt
1. [Điểm mạnh 1]
2. [Điểm mạnh 2]
3. [Điểm mạnh 3]

### Giới hạn AI / Khi nào không nên dùng
1. [Giới hạn 1]
2. [Giới hạn 2]
3. [Giới hạn 3]

### Cách tôi sẽ dùng AI hiệu quả hơn lần tới
1. [Cách 1]
2. [Cách 2]
3. [Cách 3]

---
"@ | Out-File -FilePath ai-support-log.md -Encoding UTF8

Write-Host "✅ ai-support-log.md created" -ForegroundColor Green

Write-Host ""
Write-Host "════════════════════════════════════════════════════════════" -ForegroundColor Yellow
Write-Host "✨ Setup completed successfully!" -ForegroundColor Green
Write-Host "════════════════════════════════════════════════════════════" -ForegroundColor Yellow
Write-Host ""
Write-Host "📁 Created files:" -ForegroundColor Cyan
Write-Host "  ✓ README.md"
Write-Host "  ✓ three-option-design-sheet.md"
Write-Host "  ✓ prototype-link.md"
Write-Host "  ✓ prototype-feedback-note.md"
Write-Host "  ✓ group-feedback-synthesis.md"
Write-Host "  ✓ ai-support-log.md"
Write-Host ""
Write-Host "📍 Location: $ProjectDir" -ForegroundColor Cyan
Write-Host ""
Write-Host "📝 Next steps:" -ForegroundColor Cyan
Write-Host "  1. Fill in the templates with your actual content"
Write-Host "  2. Add links to Figma prototypes in prototype-link.md"
Write-Host "  3. Document your findings and insights"
Write-Host ""

EOF

echo "✅ setup.ps1 created (for Windows users)"

# Show summary
echo ""
echo "════════════════════════════════════════════════════════════"
echo "📦 Both scripts created!"
echo "════════════════════════════════════════════════════════════"
echo ""
echo "🐧 Linux/Mac users - run:"
echo "   bash setup.sh"
echo ""
echo "💻 Windows users - run:"
echo "   powershell -ExecutionPolicy Bypass -File setup.ps1"
echo ""
