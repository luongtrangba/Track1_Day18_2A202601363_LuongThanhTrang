# Chặng 6: Prototype Feedback Note (Cá nhân Facilitate)

- **Facilitator:** Lương Thanh Trang
- **Tester:** Bạn cùng nhóm (đóng vai học viên, thử cả 3 phân hệ trên bản prototype hợp nhất tại Slide 14)
- **Observation Log:**
  - **Option A — Confidence Self-Declaration:** Tester hiểu ngay checklist và bấm thẳng vào `[ 🚨 Cần Coach hỗ trợ ]` sau khi tích chọn mục "Ý nghĩa hàm range(start, stop)", không hỏi lại facilitator. Không có hesitation đáng kể ở màn này — flow tự khai báo rõ ràng, dễ dùng.
  - **Option B — AI Diagnostic Micro-Quiz:** Banner "Bạn đã dừng ở slide này khá lâu..." xuất hiện đúng lúc tester đang thao tác ở phần khác trên màn hình, gây bối rối nhẹ ("cái gì đây?"). Tester phát hiện lỗi: banner/quiz hiện ra ở nhiều slide chứ không chỉ riêng slide checkpoint như kỳ vọng thiết kế ban đầu — bug này được tester chủ động chỉ ra khi facilitator thao tác demo. Khi chuyển sang xem màn Coach, tester xác nhận đúng là yêu cầu hỗ trợ (kèm nội dung trả lời sai) đã được đẩy sang Coach view.
  - **Option C — AI Proactive Tutor Chatbot:** Tester chủ động khen UI/UX của khung chat: *"thích cái tính năng này, nó rất là tinh tế"*. Thử click canned suggestion *"Tại sao range(2, 6) không in ra số 6?"*, nhận phản hồi đúng kịch bản. Tuy nhiên tester nêu rõ: nếu chat tự bật lên **ở mọi slide** (không riêng checkpoint) trong lúc đang đọc/nghe giảng thì gây phiền — ban đầu đề xuất "thêm nút tắt", nhưng sau khi facilitator giải thích nút `[ Bỏ qua ]` hiện có, tester đổi ý và chốt lại: gốc vấn đề không phải thiếu nút tắt mà là **tần suất/vị trí trigger sai** — chỉ nên bật ở slide checkpoint, giống lúc học sinh làm bài tập, không phải từng slide.

- **Key Trade-offs & Preference:**
  - Tester không chọn dứt khoát 1 option duy nhất mà đánh giá cả 3 phân hệ đều "ok" khi dùng đúng bối cảnh (checkpoint), đổi lại là chấp nhận bị gián đoạn học đôi lúc để đổi lấy hỗ trợ kịp thời.
  - Trade-off chính tester nêu ra: giữa "AI chủ động can thiệp sớm" (Option B & C) và "không làm phiền học viên đang tập trung" — tester nghiêng về việc giới hạn phạm vi can thiệp (chỉ checkpoint) hơn là thêm nút tắt thủ công, vì tắt thủ công vẫn phải chịu phiền ít nhất 1 lần trước khi tắt được.
  - Với màn Coach, tester đồng tình cấu trúc 2 lựa chọn xử lý (gửi câu trả lời AI hỗ trợ / tương tác trực tiếp) là đủ dùng, chỉ góp ý thêm nên có **mức độ ưu tiên/khẩn cấp + filter** để Coach xử lý đúng thứ tự khi có nhiều yêu cầu cùng lúc.
