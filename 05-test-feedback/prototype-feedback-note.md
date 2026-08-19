# Prototype Feedback Note (Cá nhân Facilitate)

**Facilitator:** Lương Thanh Trang
**Tester/context:** Bạn nhóm khác, đóng vai học viên bí kiến thức ở Slide 14 "range(2,6) không in ra số 6", thử bản prototype hợp nhất (Confidence Check + AI Micro-Quiz + AI Tutor Chat) trên cùng một giao diện.

| Observation                                         | Note                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| --------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **First action**                              | Đọc checklist Confidence Check ở cuối slide, tích chọn mục "Ý nghĩa hàm range(start, stop)" ngay không cần hỏi lại facilitator.                                                                                                                                                                                                                                                                                                        |
| **Chỗ dừng, do dự hoặc hiểu sai**        | Khựng lại khi banner Micro-Quiz*"Bạn đã dừng ở slide này khá lâu..."* tự bật lên giữa lúc đang thao tác chỗ khác trên màn hình và phản ứng "cái gì đây?", không hiểu vì sao xuất hiện đúng lúc đó.                                                                                                                                                                                                            |
| **Evidence được đọc hay bỏ qua**        | Đọc kỹ nội dung banner và khung chat AI Tutor (đọc cả canned text lẫn phản hồi giải thích range(start, stop)); không lướt qua.                                                                                                                                                                                                                                                                                                       |
| **Cách tester sửa hoặc lấy lại control** | Không chủ động bấm nút Hủy/Bỏ qua để thoát thay vào đó tự nêu thẳng vấn đề bằng lời (nói ra là thấy phiền), ban đầu đề xuất thêm nút tắt riêng; sau khi facilitator chỉ ra nút`[ Bỏ qua ]` đã có sẵn, tester đổi ý ("quay xe") và xác định gốc vấn đề là **vị trí/tần suất trigger sai**, không phải thiếu nút tắt.                                                          |
| **Option được chọn**                      | Không chọn 1 option duy nhất coi cả 3 phân hệ đều hợp lệ nếu giới hạn đúng phạm vi (chỉ slide checkpoint). Option C (AI Tutor Chat) được khen UI/UX rõ nhất.                                                                                                                                                                                                                                                                  |
| **Lý do và trade-off**                      | Đổi lấy hỗ trợ kịp thời (AI chủ động phát hiện + đẩy Coach), tester chấp nhận bị gián đoạn nhưng chỉ trong phạm vi checkpoint, không phải mọi slide. Với Coach dashboard, đồng tình 2 lựa chọn xử lý (gửi câu trả lời AI hỗ trợ / tương tác trực tiếp) là đủ, đổi lại đề xuất thêm mức ưu tiên + filter để không phải rà toàn bộ hàng đợi khi nhiều yêu cầu tới cùng lúc. |

## Evidence chống lại kỳ vọng của nhóm

**OBSERVED**
Banner Micro-Quiz và khung chat AI Tutor tự bật ở nhiều slide, không riêng slide checkpoint như spec ban đầu mô tả. Tester phải dừng lại, hỏi lại facilitator, và ban đầu đề xuất thêm nút tắt thay vì dùng nút `[ Bỏ qua ]` sẵn có.

**INTERPRETED**
Nhóm kỳ vọng nút Recovery (`[ Bỏ qua ]`) đủ để giải quyết cảm giác phiền, nhưng thực tế root cause không nằm ở thiếu control — nằm ở **trigger condition sai phạm vi**. Học viên không phân biệt được lúc nào AI "được phép" chủ động can thiệp, nên mọi lần xuất hiện đều bị coi là gián đoạn ngoài dự đoán, kể cả khi có nút thoát.

**DECIDED — NEXT CHANGE**
Giữ cả 3 option, sửa interaction chung: giới hạn trigger của Micro-Quiz (Option B) và AI Tutor tự mở (Option C) về đúng slide checkpoint, thay vì mọi slide có dwell time bất thường. Đã cập nhật AC tương ứng trong [system-spec-user-stories.md](../03-prototypes/docs/system-spec-user-stories.md) (US-3.1, US-4.1) và bổ sung US-5.1b (priority + filter) cho Coach dashboard.

**STILL UNPROVEN**
Chưa rõ, chỉ với 1 tester: (1) giới hạn về checkpoint có thực sự đủ, hay tester vẫn thấy phiền nếu 1 slide checkpoint có nhiều lần trigger liên tiếp; (2) có cần thêm cấp độ tắt hẳn (theo phân hệ 6 Privacy Settings) hay giới hạn checkpoint là đủ; (3) mức ưu tiên/filter bên Coach có đúng nhu cầu thật khi vận hành lớp đông người hay chỉ là góp ý cảm tính lúc xem demo.
