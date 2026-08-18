# Chặng 2 & 3: Three Solution Options & Human–AI Design

## 1. So sánh 3 Solution Options (Chặng 2)

### 1.1. Những thứ phải giữ nguyên (Quyết định chung cho A/B/C)
| Thành phần | Quyết định chung cho A/B/C |
| :--- | :--- |
| **Target user** | **Lab Coach / Giảng viên** quản lý lớp học online hoặc lớp học quy mô lớn. |
| **Situation** | Hỗ trợ lớp học online/quy mô lớn nơi Coach không thể đi vòng quanh xem màn hình từng học viên, trong khi học viên gặp khó khăn có xu hướng im lặng tự giải quyết bằng AI/ghi chú ngoài và không để lại tín hiệu trên hệ thống VLearn. |
| **Task** | Phát hiện kịp thời những học viên đang gặp khó khăn (đuối, hổng kiến thức hoặc có nguy cơ tụt lại) để chủ động hỗ trợ đúng lúc. |
| **Desired outcome** | Trợ giúp đúng người, đúng chỗ hổng trước khi quá muộn (giảm tỷ lệ học viên tích tụ hổng kiến thức gây bất an/nản khi ôn thi, hoặc âm thầm bỏ cuộc). |
| **Content/data fixture** | Dữ liệu hoạt động của học viên trên VLearn (tiến độ slide, dwell time, quiz nhanh, log chat với AI tutor, checklist tự khai báo) và giao diện Hàng đợi Hỗ trợ (Support Queue) của Coach. |

### 1.2. Những thứ được phép khác (So sánh chi tiết 3 Options)
| Thành phần | Option A: User-declared Confidence Checkpoints (User-Led / No-Inference) | Option B: AI-Triggered Diagnostic Micro-Quizzes (User + AI Co-create) | Option C: AI-Led Proactive Tutoring & Warm Handover (AI-Led / User Reviews) |
| :--- | :--- | :--- | :--- |
| **Cơ chế giải quyết (Solution mechanism)** | **Tự khai báo độ tự tin (Confidence Self-Declaration).** Không suy đoán dựa trên hành vi thô. Học viên tự đánh giá mức độ hiểu bài qua checklist khái niệm chốt ở cuối mỗi module để yêu cầu hỗ trợ. | **Kiểm tra chẩn đoán thông minh (AI Diagnostic Quizzing).** AI theo dõi nhịp độ học slide, nếu nghi ngờ sẽ kích hoạt micro-quiz 1 câu hỏi để xác thực trực tiếp lỗ hổng kiến thức của học viên. | **Trợ lý kèm cặp & Bàn giao tự động (AI Proactive Tutoring & Warm Handover).** AI tutor chủ động chat hỗ trợ học viên; nếu đi vào bế tắc, AI tự động tóm tắt lỗi sai và chuyển giao (escalate) cho Coach. |
| **User làm gì?** | **Học viên**: Chọn mức độ tự tin và tích chọn khái niệm cần giảng lại.<br>**Coach**: Xem danh sách học viên tự khai báo cần trợ giúp để liên hệ hỗ trợ. | **Học viên**: Trả lời micro-quiz xuất hiện khi AI nghi ngờ hổng kiến thức.<br>**Coach**: Xem dashboard học viên trả lời sai quiz kèm chẩn đoán chi tiết để can thiệp. | **Học viên**: Chat tự nhiên với AI Tutor.<br>**Coach**: Nhận ticket hỗ trợ có sẵn lịch sử chat, lỗi sai tóm tắt và câu trả lời đề xuất để duyệt/takeover. |
| **AI làm gì?** | Không suy luận hay đoán định. Chỉ gom nhóm học viên theo các khái niệm bị hổng và xếp thứ tự ưu tiên trong hàng đợi hỗ trợ cho Coach. | Theo dõi telemetry (dwell time vs slide density), kích hoạt micro-quiz phù hợp ngữ cảnh, chấm điểm và đẩy báo cáo chi tiết cho Coach nếu học viên làm sai. | Chủ động bắt đầu cuộc đối thoại kèm cặp, nhận biết giới hạn của AI (khi chat đi vào ngõ cụt), tóm tắt vấn đề khái niệm và soạn sẵn bản nháp câu trả lời cho Coach. |
| **Trigger** | Học viên đọc xong slide cuối của module kiến thức quan trọng hoặc tự click "Cần Coach hỗ trợ". | Telemetry học viên (dwell time, nhịp đọc slide) lệch chuẩn của hệ thống, kích hoạt bộ lọc nghi ngờ. | AI phát hiện hội thoại chat với học viên đi vào vòng lặp bế tắc (loop/sentiment tiêu cực) hoặc học viên yêu cầu kết nối với Coach. |
| **Trade-off chính** | **Ưu**: Tín hiệu chính xác tuyệt đối, không có sai số/nhiễu từ hành vi thô (lơ đãng).<br>**Nhược**: Ma sát cao; học viên ngại/không nhận biết được lỗ hổng (unknown-unknown) sẽ không khai báo. | **Ưu**: Phát hiện chính xác unknown-unknown; lọc nhiễu lơ đãng hiệu quả bằng hành động trả lời thực tế.<br>**Nhược**: Làm gián đoạn trải nghiệm đọc slide; tạo cảm giác bị kiểm tra liên tục nếu tần suất quiz quá dày. | **Ưu**: Trải nghiệm tự nhiên, mượt mà cho học viên; lọc hỗ trợ tầng 1 tốt giúp giảm tải tối đa cho Coach.<br>**Nhược**: Phụ thuộc nặng vào khả năng hiểu ngôn ngữ/tóm tắt của AI; rủi ro AI tóm tắt sai hoặc escalate nhầm. |
| **Distance check** | Học viên tự đánh giá và gửi tín hiệu thủ công, AI không can thiệp phán đoán. | AI và học viên đồng kiến tạo tín hiệu khó khăn thông qua vòng lặp: Telemetry -> Quiz -> Phản hồi. | AI chủ động dạy và tự ra quyết định bàn giao cho con người khi quá giới hạn, Coach chỉ duyệt và tiếp quản chặng cuối. |

### 1.3. Khoảng cách khác biệt (Distance check)
- **A khác B vì**: Option A dựa hoàn toàn vào việc học viên chủ động tự đánh giá và khai báo khó khăn thông qua các checkpoint cố định mà không dùng AI để suy đoán hay kiểm tra; trong khi Option B dùng AI để chủ động theo dõi hành vi và kích hoạt các bài quiz ngắn nhằm ngầm kiểm tra và xác thực lỗ hổng kiến thức của học viên.
- **B khác C vì**: Option B yêu cầu học viên phải giải quyết các câu hỏi trắc nghiệm kiến thức ngắn do AI đưa ra để tạo tín hiệu xác định khó khăn; trong khi Option C cho phép học viên tương tác qua hội thoại tự nhiên với AI Tutor, và AI sẽ tự động nhận diện khi nào không thể giải thích tiếp để tóm tắt và chuyển giao toàn bộ ngữ cảnh cho Coach.
- **A khác C vì**: Option A chuyển thẳng yêu cầu trợ giúp của học viên lên Coach một cách thủ công thông qua việc tự tick chọn checklist mà không có sự hỗ trợ giải đáp hay tóm tắt nào từ AI; trong khi Option C dùng AI làm bộ lọc hỗ trợ đầu tiên qua hội thoại chat và chỉ leo thang lên Coach kèm theo bản tóm tắt chẩn đoán và câu trả lời đề xuất khi AI không tự giải quyết được.

---

## 2. Thiết kế Human–AI Design (Chặng 3)

### 2.1. Bốn quyết định thiết kế (Critical Interaction Review)

#### 1. Expectation (Kỳ vọng & Mô hình tinh thần)
* **Trước khi AI hoạt động:** Cả học viên và Coach cần hiểu rõ AI có quyền can thiệp đến mức nào. 
* **Capability & Limit cần làm rõ:** 
  * AI không thể thay thế Coach giải thích các ca logic code sâu sắc (giới hạn capability).
  * AI chỉ đóng vai trò chẩn đoán sớm và chuẩn bị ngữ cảnh hỗ trợ chứ không tự quyết định cho điểm hay báo cáo kết quả học tập xấu cho học viên.

#### 2. Role & Agency (Quyền quyết định & Vai trò)
* **Phân chia:** Học viên chịu trách nhiệm thực hiện hành động học tập và tương tác; AI chịu trách nhiệm phát hiện các điểm tắc nghẽn thô; Coach là người ra quyết định can thiệp sư phạm cuối cùng.
* **AI Act, Ask hay Don't Act tại critical moment:** 
  * *Option A:* **Don't Act** — Chờ học viên tự khai báo.
  * *Option B:* **Ask** — Nghi ngờ telemetry thì đưa quiz để hỏi chứ không tự ý báo cáo Coach.
  * *Option C:* **Ask/Proactive Act** — AI chủ động đề xuất escalate khi bế tắc trước khi tự động đẩy ticket cho Coach.
* **Hậu quả khi AI sai:** Nếu AI báo cáo sai (false positive), Coach mất 1-2 phút đọc nhầm thông tin, học viên cảm thấy hơi phiền nhưng dễ dàng phát hiện ra vì Coach sẽ liên hệ hỏi và học viên có thể giải thích ngay là mình đã hiểu.

#### 3. Evidence & Uncertainty (Bằng chứng & Độ bất định)
* **Tín hiệu làm bằng chứng:** Coach cần nhìn thấy đúng dữ liệu chứng minh học viên đang bí (ví dụ: khái niệm bị tick chọn ở Option A, câu trả lời sai cụ thể ở Option B, hay câu hỏi lặp lại của học viên ở Option C).
* **Thể hiện độ bất định:** Khi AI không chắc chắn (ví dụ: telemetry thô bị nhiễu do học viên dừng màn hình đi ra ngoài), hệ thống sẽ gắn nhãn cảnh báo độ bất định thấp hoặc không đưa học viên vào hàng đợi ưu tiên cao.

#### 4. Control & Recovery (Kiểm soát & Phục hồi)
* **Vị trí kiểm soát:** Học viên có thể bấm "Bỏ qua" quiz, "Hủy yêu cầu" Coach, hoặc tắt/mở tính năng AI. Coach có thể edit câu trả lời nháp của AI hoặc loại bỏ học viên khỏi hàng đợi chỉ bằng 1 click.
* **Đường phục hồi:** Sau khi AI đoán sai, học viên tiếp tục đọc slide bình thường. Coach có thể đóng ticket hỗ trợ và quay lại danh sách lớp học bình thường.

---

### 2.2. Human–AI Decision Table

| Tiêu chí | Option A: Confidence Checkpoints (User-Led / No-Inference) | Option B: Diagnostic Micro-Quizzes (User + AI Co-create) | Option C: AI Tutoring & Handover (AI-Led / User Reviews) |
| :--- | :--- | :--- | :--- |
| **User làm gì? AI làm gì?** | **Học viên:** Tự chọn mức độ tự tin và tick khái niệm chưa hiểu.<br>**AI:** Gom nhóm yêu cầu hỗ trợ theo chủ đề, không tự đoán định. | **Học viên:** Trả lời quiz chẩn đoán 1 câu hỏi xuất hiện trên slide.<br>**AI:** Giám sát telemetry, kích hoạt quiz và chấm điểm để phát hiện lỗ hổng. | **Học viên:** Chat tự nhiên với AI Tutor.<br>**AI:** Chủ động dạy, tóm tắt lỗi sai khái niệm và soạn sẵn bản nháp phản hồi khi bế tắc. |
| **AI Act / Ask / Don't Act? Vì sao?** | **Don't Act.** AI chỉ là công cụ tĩnh nhận tín hiệu. Vì học viên chủ động tự đánh giá, không có phán đoán sai từ AI gây phiền nhiễu. | **Ask (Hỏi trước khi báo cáo).** AI đưa quiz để xác thực nghi ngờ từ telemetry thô trước khi đưa học viên vào Queue của Coach. | **Ask (Đề xuất trước khi chuyển giao).** AI xin phép học viên trước khi chuyển đoạn chat cho Coach, tránh vi phạm quyền riêng tư. |
| **User hiểu capability/limit bằng gì?** | Banner thông tin tại checkpoint: *"Checklist này giúp kết nối trực tiếp với Coach. AI sẽ không tự động giải đáp ở đây."* | Dòng thông báo trên box quiz: *"Đây là câu hỏi nhanh giúp bạn tự kiểm tra. Kết quả sai sẽ được gửi tới Coach để hỗ trợ bạn."* | Lời chào của AI: *"Mình là trợ lý AI. Mình có thể giải thích nhanh slide; nếu gặp bài tập code khó, mình sẽ kết nối bạn với Coach."* |
| **Evidence/uncertainty thể hiện thế nào?** | **Evidence:** Đúng checklist khái niệm và ghi chú của học viên.<br>**Uncertainty:** 0% (vì do con người chủ động chọn gửi). | **Evidence:** Câu hỏi quiz, đáp án sai của học viên và slide liên quan.<br>**Uncertainty:** Dành cho Coach: *"Học viên đọc slide X trong Y phút và trả lời sai câu hỏi Z."* | **Evidence:** Đoạn chat log bế tắc và tóm tắt lỗi sai.<br>**Uncertainty:** Nhãn cảnh báo: *"AI tóm tắt dựa trên đoạn chat ngắn, Coach nên kiểm tra lại log."* |
| **User kiểm soát và recovery thế nào?** | **Học viên:** Bấm "Hủy yêu cầu Coach".<br>**Coach:** Bấm "Đã hỗ trợ xong" để xóa khỏi Queue. | **Học viên:** Bấm "Bỏ qua quiz" (Snooze).<br>**Coach:** Bấm "Đánh giá sai" để loại bỏ học viên khỏi Radar và sửa lỗi nhiễu AI. | **Học viên:** Chọn "Không chuyển cho Coach".<br>**Coach:** Chỉnh sửa 100% bản nháp câu trả lời của AI hoặc bấm "Từ chối ticket". |

---

### 2.3. Feedback and data check

#### 1. Cơ chế phản hồi (Feedback Effect)
* **Option A:** Phản hồi (hủy yêu cầu) chỉ có tác dụng tức thì cho phiên học hiện tại. Không lưu lại lịch sử làm ảnh hưởng đến đánh giá học lực của học viên.
* **Option B:** Câu trả lời sai được dùng để Coach hỗ trợ ngay. Lịch sử trả lời sai được lưu lại để hệ thống tự động cá nhân hóa, gợi ý các câu hỏi tương tự trong các phiên tự ôn tập trước kỳ thi của học viên (ảnh hưởng lần sau). Hành vi báo cáo sai của AI (false positive) do Coach tích chọn sẽ lập tức hiệu chỉnh ngưỡng telemetry của hệ thống ngay trong phiên tiếp theo.
* **Option C:** Các chỉnh sửa của Coach trên bản nháp câu trả lời của AI được ghi nhận để tinh chỉnh (fine-tune) mô hình tóm tắt và soạn thảo phản hồi của AI cho các phiên sau.

#### 2. Quản lý dữ liệu và quyền riêng tư (Data Ownership & Withdrawal)
* **Dữ liệu nhạy cảm sử dụng:** Telemetry thời gian học slide, lịch sử câu hỏi trắc nghiệm kiến thức, và nội dung hội thoại chat riêng tư giữa học viên và AI.
* **Cách rút quyền:** 
  * Học viên có toàn quyền vào mục *Cài đặt tài khoản* để tắt tính năng "Theo dõi nhịp độ học để gợi ý quiz" (Option B) hoặc chọn "Xóa lịch sử chat và không chia sẻ với Coach" (Option C).
  * Dữ liệu telemetry thô của học viên sẽ tự động ẩn danh hóa sau khi buổi học kết thúc và chỉ lưu lại dưới dạng số liệu thống kê chung của lớp học.


