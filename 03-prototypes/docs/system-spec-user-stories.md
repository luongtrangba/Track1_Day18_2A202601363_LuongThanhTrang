# Tài liệu Phân tích Hệ thống & Danh sách User Stories
## Dự án: AI Support Radar (VLearn)

Tài liệu này được xây dựng dựa trên việc phân tích dữ liệu nghiên cứu thực tế (**Evidence Snapshot**) và các phương án thiết kế (**Solution Options**) của dự án **AI Support Radar** trên hệ thống học tập VLearn. Hệ thống hướng đến giải quyết bài toán phát hiện sớm học viên đang gặp khó khăn (đặc biệt trong bối cảnh học online hoặc lớp học đông người) để Lab Coach / Giảng viên có thể chủ động hỗ trợ đúng lúc, đúng chỗ.

---

## 1. Tổng quan Hệ thống (Components Overview)

Hệ thống **AI Support Radar** được chia thành **6 phân hệ (Components)** chính để phục vụ đầy đủ nhu cầu của Học viên và Lab Coach:

| STT | Phân hệ (Component) | Chức năng chính | Mô tả chi tiết |
|:---|:---|:---|:---|
| 1 | **Learning Telemetry & Activity Tracker** *(Phân hệ Theo dõi Học tập & Telemetry)* | Ghi nhận hoạt động và hành vi của học viên | Thu thập dữ liệu thời gian dừng trên từng slide (dwell time), tốc độ chuyển slide, hoạt động bôi đen, ghi chú, tương tác với AI ngoài. So sánh với mật độ kiến thức thực tế của slide để đưa ra các cảnh báo lệch chuẩn. |
| 2 | **Confidence Self-Declaration Module** *(Phân hệ Tự đánh giá & Khai báo - Option A)* | Cho phép học viên chủ động báo cáo độ tự tin | Cung cấp giao diện checkpoint ở cuối các module kiến thức quan trọng. Học viên tự đánh giá mức độ hiểu bài, chọn khái niệm còn mơ hồ và gửi yêu cầu trợ giúp trực tiếp cho Coach mà không cần AI tự suy luận. |
| 3 | **AI Diagnostic Micro-Quiz Engine** *(Phân hệ Micro-Quiz Chẩn đoán AI - Option B)* | Tự động kiểm tra và chẩn đoán lỗ hổng kiến thức | Khi phát hiện telemetry bất thường (dừng quá lâu) **và học viên đang ở một slide checkpoint** (không phải mọi slide), hệ thống tự động kích hoạt 1 câu hỏi trắc nghiệm ngắn (micro-quiz) ngay trên slide để kiểm tra lỗi hiểu sai cận trên loại trừ hoặc các lỗ hổng kiến thức tiềm ẩn (unknown-unknown). |
| 4 | **AI Proactive Tutor Chatbot** *(Phân hệ AI Tutor Chủ động - Option C Student-side)* | AI chủ động kèm cặp và hỗ trợ giải thích kiến thức | Tự động mở khung chat thảo luận khi học viên gặp khó khăn **tại slide checkpoint** (không tự mở ở slide thường). Giải thích các khái niệm học thuật. Nhận diện khi hội thoại rơi vào bế tắc hoặc theo yêu cầu của học viên để chuẩn bị quy trình bàn giao ấm (warm handover) cho Coach. **Bắt buộc phản hồi trong vài giây (≤ 10 giây)** — theo H2', học viên từng bỏ AI tutor cũ của VLearn vì chậm 1–2 phút/câu và chuyển hẳn câu hỏi/ghi chú sang app ngoài; nếu phân hệ này chậm tương tự, tín hiệu sẽ lại chảy ra ngoài hệ thống. |
| 5 | **Coach Support Queue & Handover Dashboard** *(Hàng đợi Hỗ trợ & Dashboard của Coach)* | Giao diện quản lý tập trung dành cho Lab Coach | Hiển thị danh sách học viên cần hỗ trợ theo thứ tự ưu tiên, kèm **filter theo mức độ ưu tiên (khẩn cấp / bình thường)**. Cung cấp chi tiết chẩn đoán: khái niệm bị hổng (Option A), câu hỏi quiz trả lời sai (Option B), hoặc tóm tắt chat bế tắc kèm dự thảo câu trả lời (Option C) cùng nút tiếp quản (takeover). |
| 6 | **Privacy & Settings Control Panel** *(Phân hệ Cấu hình & Quyền riêng tư)* | Quản lý quyền riêng tư và chia sẻ dữ liệu | Cho phép học viên bật/tắt theo dõi nhịp độ học (telemetry), tắt tự động gợi ý quiz, hoặc xóa lịch sử chat và rút quyền chia sẻ log hội thoại với Coach. Hỗ trợ tự động ẩn danh hóa dữ liệu telemetry thô sau khi buổi học kết thúc. |

---

## 2. Danh sách User Stories & Tiêu chuẩn nghiệm thu (Acceptance Criteria)

Dưới đây là danh sách chi tiết các User Stories được phân nhóm theo từng Component tương ứng, đi kèm Tiêu chuẩn nghiệm thu (Acceptance Criteria - AC) dạng **Given - When - Then**.

### Phân hệ 1: Learning Telemetry & Activity Tracker (Thu thập telemetry học tập)

#### 🏷️ US-1.1: Ghi nhận thời gian học (Dwell time) thực tế trên slide
* **Là** Học viên,
* **Tôi muốn** hệ thống tự động ghi nhận thời gian tôi dừng lại đọc trên từng slide,
* **Để** hệ thống có dữ liệu hành vi thực tế nhằm phát hiện khi tôi đang gặp khó khăn một cách khách quan.

* **Tiêu chuẩn nghiệm thu (AC):**
  * **Given (Bối cảnh):** Học viên đang đăng nhập và đọc Slide số 14 về chủ đề "Vòng lặp For và Hàm range()" trên hệ thống VLearn.
  * **When (Hành động):** Học viên dừng lại trên slide này mà không thực hiện chuyển slide tiếp theo.
  * **Then (Kết quả):** Hệ thống bắt đầu tính giờ và ghi nhận thời gian dừng (dwell time) theo thời gian thực, đồng thời lưu trữ thông tin slide hiện tại của học viên.
  * **Given (Bối cảnh bổ sung):** Slide 14 có mật độ kiến thức trung bình (khoảng 2 đoạn mã code Python ngắn).
  * **When (Hành động):** Học viên vượt quá thời gian đọc trung bình của hệ thống đối với slide này (ví dụ: > 5 phút).
  * **Then (Kết quả):** Hệ thống gắn nhãn trạng thái "Nghi ngờ gặp khó khăn" cho học viên này trong cơ sở dữ liệu để làm đầu vào cho các phân hệ AI khác.

#### 🏷️ US-1.2: Ẩn danh hóa dữ liệu telemetry sau buổi học
* **Là** Lab Coach,
* **Tôi muốn** dữ liệu telemetry thô của học viên tự động được ẩn danh hóa sau khi buổi học kết thúc,
* **Để** bảo vệ tối đa quyền riêng tư của học viên trong khi vẫn thu được các chỉ số thống kê chất lượng giảng dạy chung của lớp.

* **Tiêu chuẩn nghiệm thu (AC):**
  * **Given (Bối cảnh):** Buổi học trực tuyến lớp Python cơ bản đã kết thúc (lớp học đóng hoặc hết thời gian quy định).
  * **When (Hành động):** Hệ thống chuyển trạng thái buổi học sang "Đã kết thúc".
  * **Then (Kết quả):** Tất cả các bản ghi telemetry thô (chi tiết thời gian dừng từng slide của từng cá nhân học viên cụ thể) phải được ẩn danh hóa (xóa liên kết với ID học viên) và chỉ giữ lại số liệu thống kê thời gian đọc trung bình trên mỗi slide của toàn bộ lớp học.

---

### Phân hệ 2: Confidence Self-Declaration Module (Option A)

#### 🏷️ US-2.1: Học viên tự khai báo độ tự tin và chọn khái niệm chưa hiểu
* **Là** Học viên,
* **Tôi muốn** tự đánh giá mức độ hiểu bài và chọn cụ thể khái niệm tôi còn mơ hồ ở cuối module học,
* **Để** tôi có thể gửi yêu cầu hỗ trợ chính xác cho Coach về đúng lỗ hổng kiến thức của mình.

* **Tiêu chuẩn nghiệm thu (AC):**
  * **Given (Bối cảnh):** Học viên đã đọc đến slide cuối cùng của module "Vòng lặp và Range".
  * **When (Hành động):** Học viên cuộn xuống chân trang,
  * **Then (Kết quả):** Hệ thống phải hiển thị một khung Checkpoint cố định với tiêu đề: *"Xác nhận mức độ hiểu bài của bạn ở Slide 14"*, chứa checklist các khái niệm cốt lõi (Ví dụ: *Cách hoạt động của vòng lặp for*, *Ý nghĩa hàm range(n)*, *Ý nghĩa hàm range(start, stop)*) và 3 nút lựa chọn độ tự tin: `[ Rất tự tin ]`, `[ Cần tự ôn thêm ]`, `[ 🚨 Cần Coach hỗ trợ ]`.
  * **Given (Bối cảnh bổ sung):** Học viên đã chọn tích vào ô *"Ý nghĩa hàm range(start, stop)"* và click chọn nút `[ 🚨 Cần Coach hỗ trợ ]`.
  * **When (Hành động):** Hệ thống hiển thị một hộp thoại pop-up yêu cầu viết ghi chú ngắn gửi cho Coach.
  * **Then (Kết quả):** Hộp thoại hiển thị dòng gợi ý văn bản mẫu (canned text): *"Mình không hiểu tại sao range(2, 6) lại in ra 2, 3, 4, 5 mà không in số 6 ạ."* Học viên có thể chỉnh sửa văn bản này và click `[ Gửi yêu cầu ]` để đẩy thông tin lên hệ thống.

#### 🏷️ US-2.2: Học viên kiểm soát và hủy yêu cầu hỗ trợ (Recovery)
* **Là** Học viên,
* **Tôi muốn** có thể xem vị trí xếp hàng của mình và dễ dàng hủy yêu cầu hỗ trợ từ slide bài học,
* **Để** tôi không cảm thấy bị gò bó bởi hệ thống và có thể tự học tiếp nếu tự giải quyết được.

* **Tiêu chuẩn nghiệm thu (AC):**
  * **Given (Bối cảnh):** Học viên đã gửi thành công yêu cầu hỗ trợ từ checkpoint của slide 14.
  * **When (Hành động):** Học viên đang xem lại slide 14,
  * **Then (Kết quả):** Hệ thống phải hiển thị một banner thông báo trạng thái: *"Yêu cầu của bạn đã được gửi tới Coach. Bạn đang xếp thứ 3 trong hàng đợi."* cùng một nút `[ Hủy yêu cầu ]`.
  * **When (Hành động):** Học viên click vào nút `[ Hủy yêu cầu ]`,
  * **Then (Kết quả):** Hệ thống ngay lập tức xóa yêu cầu hỗ trợ này, tắt banner trạng thái trên màn hình học viên và loại tên học viên ra khỏi Hàng đợi hỗ trợ của Coach.

---

### Phân hệ 3: AI Diagnostic Micro-Quiz Engine (Option B)

#### 🏷️ US-3.1: Kích hoạt Micro-Quiz khi phát hiện telemetry bất thường
* **Là** Học viên,
* **Tôi muốn** hệ thống tự động gợi ý một câu hỏi quiz ngắn khi tôi dừng ở một slide quá lâu,
* **Để** tôi có thể tự kiểm tra xem mình có đang thực sự hiểu bài hay không (phát hiện unknown-unknown).

* **Tiêu chuẩn nghiệm thu (AC):**
  * **Given (Bối cảnh):** Học viên đang đọc Slide 14 — **một slide được đánh dấu checkpoint** — và thời gian dwell time ghi nhận đã vượt ngưỡng 5 phút (lệch chuẩn so với mật độ slide).
  * **When (Hành động):** Hệ thống kích hoạt bộ lọc nghi ngờ hổng kiến thức.
  * **Then (Kết quả):** Một banner trượt xuất hiện ở góc slide thông báo: *"Bạn đã dừng ở slide này khá lâu, hãy thử sức nhanh bằng 1 câu hỏi để củng cố kiến thức nhé?"* kèm 2 nút: `[ Làm Quiz nhanh ]` và `[ Bỏ qua ]`.
  * **Given (Bối cảnh loại trừ):** Học viên đang dừng lâu ở một slide **không phải checkpoint**.
  * **Then (Kết quả):** Hệ thống không kích hoạt banner quiz, kể cả khi dwell time vượt ngưỡng — tránh gây gián đoạn liên tục khi học viên chỉ đang đọc/nghe giảng bình thường (feedback tester: hiện quiz ở mọi slide gây phiền).
  * **Given (Bối cảnh thời điểm hiển thị):** Điều kiện dwell time > 5 phút ở slide checkpoint đã thỏa mãn.
  * **When (Hành động):** Học viên nhấn **Enter** (hoặc nút chuyển tiếp) để chuyển sang mục lớn nội dung tiếp theo.
  * **Then (Kết quả):** Banner quiz chỉ xuất hiện đúng tại thời điểm chuyển mục này, không tự bật ngay giữa lúc học viên còn đang đọc slide hiện tại — tránh cắt ngang mạch đọc.

#### 🏷️ US-3.2: Học viên làm Quiz chẩn đoán và nhận phản hồi trực tiếp
* **Là** Học viên,
* **Tôi muốn** nhận phản hồi giải thích chi tiết ngay lập tức khi tôi làm sai câu hỏi quiz,
* **Để** tôi nhận ra ngay lỗi sai cận trên loại trừ của hàm range mà không phải đợi đến lúc ôn thi mới phát hiện ra.

* **Tiêu chuẩn nghiệm thu (AC):**
  * **Given (Bối cảnh):** Học viên click chọn `[ Làm Quiz nhanh ]` trên slide 14. Hệ thống hiển thị câu hỏi trắc nghiệm: *"Kết quả in ra của đoạn code for i in range(2, 6): print(i) là gì?"*.
  * **When (Hành động):** Học viên click chọn đáp án sai: *"A. 2, 3, 4, 5, 6"* và click nút `[ Nộp bài ]`.
  * **Then (Kết quả):** Hệ thống hiển thị thông báo kết quả: *"Rất tiếc, câu trả lời chưa đúng. Hàm range(start, stop) sẽ lặp từ start đến stop-1. Hệ thống đã báo cho Lab Coach để chủ động liên hệ hỗ trợ bạn làm rõ."* cùng một nút `[ Xóa thông báo / Tự học tiếp ]`.
  * **When (Hành động):** Học viên click chọn `[ Xóa thông báo / Tự học tiếp ]`,
  * **Then (Kết quả):** Pop-up quiz đóng lại lập tức, trả lại giao diện slide học bình thường cho học viên tiếp tục nghiên cứu.

#### 🏷️ US-3.3: Bỏ qua quiz chẩn đoán để tránh phiền toái (Snooze)
* **Là** Học viên,
* **Tôi muốn** có quyền bỏ qua câu hỏi quiz chẩn đoán khi đang tập trung đọc slide,
* **Để** không bị gián đoạn trải nghiệm học tập của mình.

* **Tiêu chuẩn nghiệm thu (AC):**
  * **Given (Bối cảnh):** Banner gợi ý làm Quiz nhanh đang hiển thị trên Slide 14.
  * **When (Hành động):** Học viên click nút `[ Bỏ qua ]`.
  * **Then (Kết quả):** Banner quiz ngay lập tức ẩn đi, hệ thống ghi nhận lựa chọn "Snooze" của học viên và không gợi ý lại câu hỏi quiz trên slide này trong suốt phiên học hiện tại.

---

### Phân hệ 4: AI Proactive Tutor Chatbot (Option C Student-side)

#### 🏷️ US-4.0: AI Tutor phản hồi tức thời để giữ tín hiệu trong hệ thống (H2')
* **Là** Học viên,
* **Tôi muốn** AI Tutor trong VLearn trả lời nhanh như (hoặc nhanh hơn) công cụ AI ngoài mà tôi đang dùng,
* **Để** tôi không còn lý do phải chụp màn hình/gõ câu hỏi sang app ngoài, và hệ thống vẫn nhìn thấy được câu hỏi cũng như ghi chú của tôi.

* **Bối cảnh evidence (H2'):** U4 từng dùng AI tutor của VLearn rồi bỏ hẳn vì *"mất cỡ 1 phút 2 phút"* mỗi câu, chuyển toàn bộ câu hỏi và ghi chú sang app ngoài; U1 cũng đi thẳng qua Gemini thay vì hỏi trong hệ thống. Nếu AI Tutor mới lặp lại độ trễ cũ, tín hiệu sẽ tiếp tục chảy ra ngoài đúng như hiện trạng.

* **Tiêu chuẩn nghiệm thu (AC):**
  * **Given (Bối cảnh):** Học viên vừa gửi một câu hỏi hoặc tin nhắn cho AI Tutor trong khung chat của VLearn.
  * **When (Hành động):** Hệ thống xử lý và tạo câu trả lời.
  * **Then (Kết quả):** AI Tutor phải hiển thị phản hồi (hoặc bắt đầu stream câu trả lời) trong vòng **tối đa 10 giây**; nếu vượt ngưỡng này, hệ thống phải hiển thị trạng thái "đang soạn câu trả lời..." để học viên biết hệ thống vẫn đang xử lý, tránh việc học viên bỏ dở và chuyển sang hỏi AI ngoài.
  * **Given (Bối cảnh bổ sung):** AI Tutor không thể trả lời trong ngưỡng thời gian cam kết (ví dụ lỗi hệ thống, quá tải).
  * **When (Hành động):** Thời gian chờ vượt quá 10 giây mà chưa có phản hồi.
  * **Then (Kết quả):** Hệ thống ghi nhận sự cố độ trễ này vào log vận hành để Coach/Admin theo dõi, vì đây chính là điều kiện khiến tín hiệu học viên rời khỏi hệ thống (theo H2').

#### 🏷️ US-4.1: AI Tutor chủ động mở chat và gợi ý câu hỏi khi học viên bí
* **Là** Học viên,
* **Tôi muốn** trợ lý AI Tutor chủ động bắt chuyện và gợi ý câu hỏi khi phát hiện tôi dừng lâu ở slide khó,
* **Để** tôi có thể thảo luận và giải đáp thắc mắc ngay lập tức mà không cần chuyển sang app ngoài.

* **Tiêu chuẩn nghiệm thu (AC):**
  * **Given (Bối cảnh):** Học viên đang dừng lâu ở slide 14 — **một slide checkpoint**.
  * **When (Hành động):** Hệ thống ghi nhận tín hiệu telemetry bất thường và kích hoạt AI Tutor.
  * **Then (Kết quả):** Cửa sổ chat AI ở góc dưới tự động mở ra, gửi tin nhắn: *"Chào bạn, mình thấy bạn đang dừng khá lâu ở slide range(start, stop). Bạn có thắc mắc gì về cận trên của hàm range không?"* kèm hai gợi ý tin nhắn nhanh (canned chats): `[ Tại sao range(2, 6) không in ra số 6? ]` và `[ Không, mình tự học được ]`.
  * **Given (Bối cảnh loại trừ):** Học viên đang dừng lâu ở slide **không phải checkpoint**.
  * **Then (Kết quả):** AI Tutor không tự mở chat — chỉ hiển thị icon chat thu nhỏ ở góc màn hình để học viên tự bấm khi cần (feedback tester: chat tự mở liên tục ở mọi slide gây phiền khi đang đọc/nghe giảng).

#### 🏷️ US-4.2: AI xin phép học viên trước khi chuyển giao cho Coach
* **Là** Học viên,
* **Tôi muốn** AI Tutor xin phép tôi trước khi gửi dữ liệu chat cá nhân lên hệ thống hỗ trợ của Coach,
* **Để** bảo mật nội dung thảo luận riêng tư và chỉ nhờ đến con người khi thực sự bế tắc.

* **Tiêu chuẩn nghiệm thu (AC):**
  * **Given (Bối cảnh):** Học viên và AI Tutor đang thảo luận. Học viên gửi câu hỏi sâu: *"Nhưng tại sao Python lại thiết kế kỳ lạ như vậy? Nó có tác dụng gì?"* và AI Tutor phát hiện câu hỏi này đi vào giới hạn giải thích của AI (hoặc phát hiện vòng lặp bế tắc).
  * **When (Hành động):** AI Tutor trả lời: *"Câu hỏi của bạn rất hay về kiến trúc Python. Để bạn hiểu rõ nhất, mình xin phép chuyển câu hỏi này kèm tóm tắt cuộc chat cho Lab Coach hỗ trợ bạn trực tiếp nhé?"*
  * **Then (Kết quả):** Hệ thống hiển thị 2 nút tương tác nổi bật dưới câu trả lời: `[ Đồng ý kết nối Coach ]` và `[ Không cần, tắt chat ]`.
  * **When (Hành động):** Học viên click `[ Đồng ý kết nối Coach ]`,
  * **Then (Kết quả):** Trạng thái chat chuyển sang: *"Đang kết nối với Coach. Đã gửi tóm tắt đoạn chat..."*, đồng thời hệ thống đóng gói log hội thoại và tạo một ticket hỗ trợ chuyển sang cho Coach.

---

### Phân hệ 5: Coach Support Queue & Handover Dashboard (Giao diện Coach)

#### 🏷️ US-5.1: Coach xem danh sách học viên cần hỗ trợ theo thứ tự ưu tiên
* **Là** Lab Coach,
* **Tôi muốn** theo dõi danh sách học viên gặp khó khăn được sắp xếp theo mức độ khẩn cấp trong Hàng đợi Hỗ trợ,
* **Để** tôi biết chính xác cần can thiệp hỗ trợ ai trước trong lớp học online quy mô lớn.

* **Tiêu chuẩn nghiệm thu (AC):**
  * **Given (Bối cảnh):** Coach đang mở màn hình Hàng đợi Hỗ trợ (Support Queue) của lớp học Python trực tuyến.
  * **When (Hành động):** Có học viên gửi yêu cầu hỗ trợ (Option A), trả lời sai quiz chẩn đoán (Option B) hoặc đồng ý kết nối sau khi chat bế tắc với AI (Option C).
  * **Then (Kết quả):** Giao diện Hàng đợi phải tự động cập nhật danh sách học viên, sắp xếp các trường hợp khẩn cấp lên đầu (Ví dụ: Ưu tiên 1: Học viên đồng ý bàn giao từ AI Chat; Ưu tiên 2: Học viên trả lời sai quiz; Ưu tiên 3: Học viên tự khai báo 🚨 ở Checkpoint).

#### 🏷️ US-5.1b: Coach lọc hàng đợi theo mức độ ưu tiên
* **Là** Lab Coach,
* **Tôi muốn** lọc danh sách Hàng đợi Hỗ trợ theo mức độ ưu tiên (Khẩn cấp / Bình thường),
* **Để** khi có nhiều yêu cầu cùng lúc, tôi xử lý đúng học viên cần hỗ trợ gấp trước mà không phải lướt qua toàn bộ danh sách.

* **Tiêu chuẩn nghiệm thu (AC):**
  * **Given (Bối cảnh):** Hàng đợi Hỗ trợ đang có nhiều yêu cầu ở các mức ưu tiên khác nhau.
  * **When (Hành động):** Coach chọn filter *"Khẩn cấp"* trên thanh công cụ của Hàng đợi.
  * **Then (Kết quả):** Danh sách chỉ hiển thị các ticket được gắn nhãn Khẩn cấp (mặc định: bàn giao từ AI Chat bế tắc và trả lời sai quiz); ticket tự khai báo mức "Cần tự ôn thêm" bị ẩn khỏi view cho đến khi Coach bỏ filter.
  * **When (Hành động):** Có từ 3 ticket Khẩn cấp trở lên đang chờ xử lý cùng lúc.
  * **Then (Kết quả):** Hệ thống hiển thị một cảnh báo nổi bật (badge đỏ đếm số lượng) trên tab Hàng đợi để Coach nhận biết ngay cả khi không đang mở filter.

#### 🏷️ US-5.2: Xem chi tiết chẩn đoán và hội thoại chuyển giao
* **Là** Lab Coach,
* **Tôi muốn** xem tóm tắt lỗi sai khái niệm của học viên và toàn bộ log chat trước đó khi tiếp nhận một ticket chuyển giao từ AI Tutor,
* **Để** tôi hiểu ngay vấn đề của học viên mà không cần hỏi lại từ đầu.

* **Tiêu chuẩn nghiệm thu (AC):**
  * **Given (Bối cảnh):** Có ticket hỗ trợ của học viên Lương Thanh Trang chuyển từ phân hệ AI Tutor (Option C).
  * **When (Hành động):** Coach click vào ticket của học viên Trang trong Hàng đợi.
  * **Then (Kết quả):** Hệ thống hiển thị giao diện chi tiết chứa:
    1. **Tóm tắt hiểu lầm (AI Summary):** *"Học viên chưa hiểu triết lý thiết kế chỉ số cận trên của range(start, stop)."*
    2. **Log chat chi tiết:** Link hoặc khung hiển thị toàn bộ lịch sử chat giữa Trang và AI Tutor.
    3. **Bản nháp câu trả lời đề xuất (Draft response):** *"Chào Trang, Python thiết kế cận trên loại trừ để dễ dàng tính độ dài chuỗi (stop - start)..."* do AI tự động soạn thảo dựa trên lỗi sai của học viên.

#### 🏷️ US-5.3: Coach tiếp quản chat và phản hồi học viên (Takeover & Control)
* **Là** Lab Coach,
* **Tôi muốn** có quyền chỉnh sửa câu trả lời nháp của AI hoặc trực tiếp tiếp quản cuộc chat với học viên,
* **Để** tôi kiểm soát hoàn toàn thông tin hỗ trợ chuyên môn gửi đi và giải quyết dứt điểm khó khăn của học viên.

* **Tiêu chuẩn nghiệm thu (AC):**
  * **Given (Bối cảnh):** Coach đang xem ticket chuyển giao của học viên Lương Thanh Trang.
  * **When (Hành động):** Coach thực hiện chỉnh sửa nội dung trong ô Draft Response và bấm `[ Chỉnh sửa & Gửi câu trả lời ]`.
  * **Then (Kết quả):** Hệ thống gửi câu trả lời đã chỉnh sửa đó trực tiếp vào box chat của học viên Lương Thanh Trang dưới tên của Coach, đồng thời đánh dấu ticket này là "Đã phản hồi".
  * **When (Hành động):** Coach bấm nút `[ Trực tiếp Takeover Chat ]`,
  * **Then (Kết quả):** AI Tutor bị ngắt tương tác trên box chat của học viên, hệ thống thiết lập cuộc trò chuyện trực tiếp 1-1 giữa Coach và học viên Trang, cho phép Coach gửi tin nhắn tự do.

---

### Phân hệ 6: Privacy & Settings Control Panel (Quản lý Quyền riêng tư)

#### 🏷️ US-6.1: Học viên tự cấu hình mức độ chia sẻ dữ liệu và theo dõi AI
* **Là** Học viên,
* **Tôi muốn** dễ dàng tắt tính năng theo dõi nhịp độ học và tùy chọn không chia sẻ lịch sử chat AI với Coach trong phần Cài đặt,
* **Để** tôi chủ động bảo vệ quyền riêng tư cá nhân khi học tập trên hệ thống VLearn.

* **Tiêu chuẩn nghiệm thu (AC):**
  * **Given (Bối cảnh):** Học viên đang ở giao diện "Cài đặt tài khoản" của hệ thống VLearn.
  * **When (Hành động):** Học viên gạt nút chuyển trạng thái (Toggle) của mục *"Theo dõi nhịp độ học để gợi ý quiz"* sang trạng thái OFF.
  * **Then (Kết quả):** Hệ thống lập tức dừng việc ghi nhận telemetry thời gian dừng slide (dwell time) đối với tài khoản học viên này.
  * **When (Hành động):** Học viên tích chọn mục *"Xóa lịch sử chat và không chia sẻ với Coach"*.
  * **Then (Kết quả):** Hệ thống xóa toàn bộ log chat lịch sử của học viên với AI Tutor khỏi cơ sở dữ liệu dùng chung, và vô hiệu hóa cơ chế tự động tóm tắt/gửi ticket sang cho Coach của phân hệ AI Tutor (Option C) đối với tài khoản này.
