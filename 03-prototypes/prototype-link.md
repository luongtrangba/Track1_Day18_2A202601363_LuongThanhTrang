# Chặng 4: Three Micro-prototypes & Specifications

## 1. Danh sách Link Prototype (Nhóm điền sau khi thiết kế xong)
* **Option A:** [prototype-A](https://www.figma.com/make/29NneLfyQsCqNtj91bZqVn/Sleep-Monitoring-App?t=DQZ3RXS4SijDtnzu-1)(Phụ trách chính: Lương Thanh Trang)
* **Option B:** [Link Figma/V0/Code] (Phụ trách chính: Đào Ngọc Bích)
* **Option C:** [Link Figma/V0/Code] (Phụ trách chính: Đặng Thái Nam Sơn)

---

## 2. Bản Tả Cảnh & Kịch Bản Thiết Kế (Specs)

Cả ba Option đều chia sẻ **70% giao diện chung (Common Context)** để tester không phải làm quen lại từ đầu.

### 2.1. Common Context (Bối cảnh dùng chung)
* **Giao diện bắt đầu:** Giao diện xem Slide bài học trên VLearn.
* **Bài học giả định:** Lớp "Lập trình Python cơ bản", Slide số 14 về chủ đề **"Vòng lặp For và Hàm range()"**.
* **Nội dung slide (Data Fixture):**
  ```python
  # Ví dụ 1: Lặp từ 0 đến 4
  for i in range(5):
      print(i)
  
  # Ví dụ 2: Lặp từ 2 đến 5
  for i in range(2, 6):
      print(i)
  ```
* **Task cho Tester:** Đóng vai trò là học viên đang đọc slide này nhưng bị hổng kiến thức nghiêm trọng: **Không hiểu tại sao `range(2, 6)` lại in ra đến `5` chứ không phải đến `6`** (lỗi cận trên loại trừ trong Python) và đang cảm thấy bối tắc.
* **Đường dẫn Reset (Reset path):** Mọi Option đều có một nút **"🔄 Reset"** ở góc phải phía trên màn hình để đưa Tester quay lại trạng thái ban đầu của Common Context.

---

### 2.2. Kịch bản màn hình chi tiết từng Option

#### 🏷️ Option A: Confidence Self-Declaration (Confidence Checkpoints)
* **Màn hình 1 (Slide học & Checkpoint tự khai báo):**
  * Học viên đang đọc slide 14. Phía dưới cùng slide xuất hiện một khung cố định: *"Xác nhận mức độ hiểu bài của bạn ở Slide 14"*.
  * Checklist tự đánh giá:
    1. `[ ]` Cách hoạt động của vòng lặp `for` với danh sách.
    2. `[ ]` Ý nghĩa của hàm `range(n)` (chỉ số chạy từ 0 đến n-1).
    3. `[ ]` Ý nghĩa của hàm `range(start, stop)` (chỉ số chạy từ start đến stop-1).
  * 3 nút trạng thái: `[ Rất tự tin ]` `[ Cần tự ôn thêm ]` `[ 🚨 Cần Coach hỗ trợ ]`.
  * *Hành động của tester:* Tích chọn mục 3 và bấm nút `[ 🚨 Cần Coach hỗ trợ ]`.
* **Màn hình 2 (Form ghi chú & Control/Recovery):**
  * Một pop-up hiện ra: *"Bạn đang cần Coach giải thích về: range(start, stop). Hãy viết một ghi chú ngắn cho Coach (nếu muốn):"*.
  * Ô nhập text có sẵn canned text: *"Mình không hiểu tại sao range(2, 6) lại in ra 2, 3, 4, 5 mà không in số 6 ạ."*
  * Nút: `[ Gửi yêu cầu ]` và nút `[ Hủy / Tự học tiếp ]` (Nút recovery để lấy lại quyền kiểm soát).
  * *Hành động của tester:* Bấm `[ Gửi yêu cầu ]`.
* **Màn hình 3 (Trạng thái đã gửi & Mô phỏng Coach):**
  * Giao diện học viên chuyển thành banner trạng thái: *"Yêu cầu của bạn đã được gửi tới Coach. Bạn đang xếp thứ 3 trong hàng đợi. [ Hủy yêu cầu ]"* (Nút Control/Recovery).
  * Phía bên cạnh hiển thị màn hình **Lab Coach**: Có một hàng đợi (Support Queue) hiển thị tên học viên kèm nội dung: *"Yêu cầu: Giải thích range(start, stop). Ghi chú: range(2, 6) không in ra số 6"*.

#### 🏷️ Option B: AI-Triggered Diagnostic Micro-Quizzes
* **Màn hình 1 (Slide học & AI Trigger Quiz):**
  * Học viên dừng ở slide 14 lâu (mô phỏng dwell time lâu).
  * Một banner trượt vào góc phải slide: *"Bạn đã dừng ở slide này khá lâu, hãy thử sức nhanh bằng 1 câu hỏi để củng cố kiến thức nhé?"* kèm 2 nút: `[ Làm Quiz nhanh ]` và `[ Bỏ qua ]` (Nút Control/Recovery).
  * *Hành động của tester:* Bấm `[ Làm Quiz nhanh ]`.
* **Màn hình 2 (Nội dung Micro-Quiz chẩn đoán):**
  * Câu hỏi trắc nghiệm: *"Kết quả in ra của đoạn code `for i in range(2, 6): print(i)` là gì?"*
  * Các phương án lựa chọn:
    * A. `2, 3, 4, 5, 6`
    * B. `2, 3, 4, 5` (Đáp án đúng)
    * C. `0, 1, 2, 3, 4, 5`
  * *Hành động của tester:* Click chọn đáp án sai **A** và bấm `[ Nộp bài ]`.
* **Màn hình 3 (Xác thực lỗ hổng & Đẩy vào Queue):**
  * Học viên nhận thông báo: *"Rất tiếc, câu trả lời chưa đúng. Hàm range(start, stop) sẽ lặp từ start đến stop-1. Hệ thống đã báo cho Lab Coach để chủ động liên hệ hỗ trợ bạn làm rõ. [ Xóa thông báo / Tự học tiếp ]"* (Nút Recovery).
  * Phía bên cạnh hiển thị màn hình **Lab Coach**: Queue hiển thị cảnh báo đỏ: *"Học viên Lương Thanh Trang trả lời sai câu hỏi range(2, 6) trên Slide 14. Chọn đáp án: 2, 3, 4, 5, 6 (thiếu quy tắc stop-1)"* -> Coach bấm `[ Chủ động liên hệ ]`.

#### 🏷️ Option C: AI-Led Proactive Tutoring & Warm Handover
* **Màn hình 1 (Slide học & AI Tutor chủ động bắt chuyện):**
  * Học viên đang đọc slide 14. Cửa sổ chat AI Tutor ở góc dưới tự động mở ra:
  * AI Tutor: *"Chào bạn, mình thấy bạn đang dừng khá lâu ở slide range(start, stop). Bạn có thắc mắc gì về cận trên của hàm range không?"*
  * Canned chat gợi ý: `[ Tại sao range(2, 6) không in ra số 6? ]` hoặc `[ Không, mình tự học được ]` (Nút Recovery).
  * *Hành động của tester:* Click vào câu gợi ý thắc mắc về số 6.
* **Màn hình 2 (Hội thoại bế tắc & Đề xuất chuyển giao):**
  * AI phản hồi giải thích: *"Trong Python, range(start, stop) chạy đến stop-1, tức là dừng trước stop. Do đó range(2, 6) dừng ở 5."*
  * Canned chat tiếp theo của học viên: *"Nhưng tại sao Python lại thiết kế kỳ lạ như vậy? Nó có tác dụng gì?"* (Câu hỏi sâu về triết lý thiết kế mà AI khó trả lời trực quan).
  * AI Tutor nhận diện bế tắc và chat: *"Câu hỏi của bạn rất hay về kiến trúc Python. Để bạn hiểu rõ nhất, mình xin phép chuyển câu hỏi này kèm tóm tắt cuộc chat cho Lab Coach hỗ trợ bạn trực tiếp nhé?"*
  * Nút lựa chọn: `[ Đồng ý kết nối Coach ]` và `[ Không cần, tắt chat ]` (Control/Recovery).
  * *Hành động của tester:* Bấm `[ Đồng ý kết nối Coach ]`.
* **Màn hình 3 (Trạng thái chuyển giao & Giao diện Coach):**
  * Học viên nhận thông báo trong box chat: *"Đang kết nối với Coach. Đã gửi tóm tắt đoạn chat..."*.
  * Phía bên cạnh hiển thị màn hình **Lab Coach**: Nhận được một ticket hỗ trợ:
    * *Tóm tắt hiểu lầm:* Học viên chưa hiểu triết lý thiết kế chỉ số cận trên của range(start, stop).
    * *Đoạn chat nghi vấn chính:* Link xem log hội thoại.
    * *Bản nháp câu trả lời đề xuất (Draft response):* *"Chào Trang, Python thiết kế cận trên loại trừ để dễ dàng tính độ dài chuỗi (stop - start) và an toàn khi kết hợp với mảng. Để anh gọi giải thích trực tiếp cho dễ nhé..."*
    * Nút hành động của Coach: `[ Chỉnh sửa & Gửi câu trả lời ]` hoặc `[ Trực tiếp Takeover Chat ]`.

---

## 3. Prototype Annotation (Chú thích bên ngoài Frame Figma)

*Đặt ngoài các frame của Figma để hướng dẫn cho nhóm và Coach, không hiển thị cho tester trong buổi test:*

```markdown
### OPTION A
* **We expect the tester to:** Trải nghiệm cảm giác tự chủ hoàn toàn khi tự đánh giá độ tự tin và tích chọn khái niệm bị hổng, sau đó gửi yêu cầu trực tiếp cho Coach.
* **Watch for:** Tester có cảm thấy phiền khi phải tự tick chọn checklist không? Họ có ngần ngại bấm nút "Cần Coach hỗ trợ" khi tự mình thấy chưa hiểu bài không? Họ có tìm ra cách hủy yêu cầu không?
* **Do not explain.**

### OPTION B
* **We expect the tester to:** Trải nghiệm việc bị AI ngầm phát hiện chậm trễ qua telemetry và trả lời sai một câu hỏi quiz ngắn để tự nhận diện lỗ hổng kiến thức của mình (unknown-unknown).
* **Watch for:** Tester có cảm thấy bị gián đoạn trải nghiệm học khi quiz xuất hiện không? Họ có tìm cách bấm "Bỏ qua quiz" không? Phản ứng của họ khi biết kết quả sai của mình tự động đẩy lên Coach.
* **Do not explain.**

### OPTION C
* **We expect the tester to:** Trải nghiệm tương tác hội thoại tự nhiên với AI Tutor và quá trình bàn giao mượt mà (warm handover) sang cho Coach kèm tóm tắt và câu trả lời nháp.
* **Watch for:** Tester có đồng ý kết nối với Coach khi AI gợi ý không? Họ có cảm thấy thoải mái với việc AI chia sẻ tóm tắt đoạn chat riêng tư cho Coach không?
* **Do not explain.**
```

