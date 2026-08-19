# Group Feedback Synthesis, sau khi có đủ ba bản

Tổng hợp kết quả test của nhóm Track1_badao, Case C: AI Support Radar, ngày 19/08/2026. Đã có đủ ba Feedback Note độc lập.

Về cách đánh số tester: ba facilitator đánh số chồng nhau, mỗi người gọi tester của mình là "Tester 1", hoặc đánh số hai người kia theo thứ tự khác. Tài liệu này gọi theo facilitator để khỏi nhầm, gồm T-Sơn, T-Trang, T-Bích.

Lưu ý về phạm vi trong repo cá nhân này: chỉ file prototype-feedback-note.md, tương ứng cột T-Trang, có mặt như một tài liệu độc lập trong thư mục 05-test-feedback. Dữ liệu của T-Sơn và T-Bích được đưa vào bảng dưới theo nội dung nhóm cung cấp, nhưng chưa có file gốc riêng trong repo này để trích dẫn đường link.

## Đọc trước: ba facilitator đã test ba bộ option khác nhau, trên ba fixture khác nhau

| | Bộ Sơn | Bộ Trang | Bộ Bích |
|---|---|---|---|
| A | Mark ẩn danh. Chỉ đếm, không AI, không map về người | Confidence Self-Declaration. Checklist khái niệm và 3 nút tự tin, gửi ticket có danh tính | Signal Board. Danh sách học viên tự bấm hoặc viết nháp, có tên, theo thời điểm |
| B | AI gom chủ đề từ tín hiệu đã có, coach bấm ngược kiểm rồi chốt | AI Diagnostic Micro-Quiz. Kích hoạt bằng dwell time ở slide checkpoint | Confusion Map. Gom khi từ 3 học viên trở lên gặp chung một tình huống, kèm nút Thông báo chung cho cả lớp |
| C | Checkpoint AI sinh từ slide, coach duyệt từng đề xuất | AI Proactive Tutor Chatbot. AI tự mở chat, warm handover | Support Queue. AI suy đoán từng người từ hành vi, có nút Xem toàn bộ dữ liệu gốc và Máy đoán sai |
| Fixture | Buổi tổng kết prompt engineering, 12 học viên, sau buổi | Python Basics, Slide 14/28, trong buổi | Buổi thực hành gọi dữ liệu và xử lý lỗi, 28 học viên, phút 60/90, trong buổi |
| Tester | Vai chưa xác định, nói xen kẽ cả học viên lẫn giảng viên | Bạn cùng nhóm, đóng vai học viên | Lab Coach, đúng target user |
| Prototype | 3 file HTML | https://coat-snake-65740622.figma.site/ | vlearn_prototypes-a-b-c_BichDao.html |

Hệ quả: không gộp được kết quả theo nhãn A/B/C, vì ba bộ dùng cùng nhãn cho những cơ chế khác nhau. Mọi pattern dưới đây được rút ra qua cơ chế, không qua nhãn.

Nhưng có một chỗ ba bộ vô tình tạo thành một thí nghiệm tốt: vì ba người dựng độc lập, chỗ nào cả ba cùng đi tới thì đáng tin hơn hẳn một buổi test đơn lẻ. Ba pattern trong bảng dưới thuộc loại đó.

Cần nhóm quyết: giữ ba bộ như ba nhánh song song, hay hợp nhất thành một bộ chung. Nếu giữ thì phải đổi tên để hết chồng nhãn.

## Bảng tổng hợp

| Nội dung | Feedback 1, T-Sơn | Feedback 2, T-Trang | Feedback 3, T-Bích | Pattern hoặc khác biệt |
|---|---|---|---|---|
| First action | Không mô tả rõ một hành động mở đầu độc lập; facilitator mô tả toàn bộ sản phẩm ngay từ đầu buổi, tester bắt đầu bằng việc hỏi lại cơ chế | Đọc checklist Confidence Check ở cuối slide, tích chọn mục "Ý nghĩa hàm range(start, stop)" ngay, không hỏi lại facilitator | Khựng lại ngay từ đầu, không tự hiểu được bài toán chỉ qua màn hình | Khác biệt rõ: chỉ T-Trang tự vào việc trơn tru ngay từ đầu. T-Sơn và T-Bích đều cần facilitator can thiệp trước khi thao tác được |
| Breakdown chính | Phải hỏi lại để xác nhận cơ chế bốn lần: nút map tới slide nào, nhiều người cùng đánh dấu thì hiện ra sao, ẩn danh hay không, "Bỏ đề xuất này là sao" | Khựng khi banner Micro-Quiz tự bật lên giữa lúc đang thao tác chỗ khác, phản ứng "cái gì đây" | Sau khi thao tác vẫn hỏi lại "tư duy của ba option này là gì" | Pattern 3 nguồn: không tester nào tự đọc ra được cơ chế từ màn hình. Cả ba đều cần facilitator giải thích, dù ở thời điểm khác nhau trong buổi |
| Cách lấy lại control | Không có mô tả thao tác phục hồi cụ thể; vấn đề chính của T-Sơn là chưa hiểu cơ chế, chưa tới bước cần recovery | Không chủ động bấm nút Bỏ qua có sẵn, nói thẳng vấn đề bằng lời, ban đầu đề xuất thêm nút tắt riêng, sau khi facilitator chỉ ra nút Bỏ qua đã có, tester đổi ý và xác định gốc vấn đề là vị trí và tần suất trigger sai | Chưa đi tới bước cần dùng nút Xem toàn bộ dữ liệu gốc hay Máy đoán sai, vì tester chưa đi tới chỗ nghi ngờ AI | Không tester nào tự tìm ra control có sẵn mà không cần facilitator chỉ hoặc chưa đi đủ xa để cần dùng nó |
| Option được chọn | Không được hỏi câu chọn | Không chốt, "cả 3 đều ok", riêng Option C được khen UI và UX rõ nhất | Chọn Option B, Confusion Map | Chỉ T-Bích chọn một option, và chỉ T-Bích đúng target user là Lab Coach. Hai buổi kia không thu được câu chọn |
| Trade-off | Lo về công bằng: "hỗ trợ người này lại không hỗ trợ người kia thì nó..."; muốn AI tổng hợp câu sai chung để giải đáp một thể cho lớp đông | Chấp nhận bị gián đoạn để đổi lấy hỗ trợ kịp thời, nhưng chỉ trong phạm vi checkpoint; đề xuất thêm mức ưu tiên và filter cho hàng đợi coach | Chấp nhận kém tiện hơn Option C để giữ lại không gian tự mình đến gặp học viên, mục tiêu không phải sửa lỗi nhanh nhất mà là giữ được kết nối | Pattern 2, mạnh nhất vòng này: danh sách phẳng từng người không xử lý nổi ở lớp đông. Ba tester, ba bộ, ba fixture khác nhau cùng chỉ về một chỗ, và tester duy nhất được hỏi câu chọn đã chọn đúng bộ hiện thực hoá pattern này |

## Ba pattern ba nguồn, xếp theo độ tin cậy

Pattern 1, không tester nào tự đọc ra được cơ chế từ màn hình. Cả ba facilitator đều phá luật im lặng, nhưng phá vì cùng một lý do: Bích giải thích sau khi tester khựng và tự ghi lại rằng chưa trả lời được câu hỏi tester có tự nhìn ra khác biệt nếu không có người đứng cạnh giải thích hay không. Trang giải thích nút Bỏ qua có sẵn khiến tester đổi ý khỏi đề xuất ban đầu. Sơn mô tả toàn bộ sản phẩm ngay từ đầu, khác hai người kia ở chỗ đây là narration mở đầu, không phải cứu tester đang bí. Hệ quả nặng: mọi phát biểu về thứ hạng hay lựa chọn giữa các option ở cả ba buổi đều đã bị neo bởi lời facilitator, bao gồm cả lựa chọn Option B của T-Bích, chính Bích đã ghi rõ điều đó.

Pattern 2, danh sách phẳng từng người không xử lý nổi ở lớp đông. Đây là pattern mạnh nhất của cả vòng. Ba tester, ba bộ prototype, ba fixture, ba bối cảnh nội dung, cùng chỉ một chỗ. Hai bộ còn lại đều đặt hành động cá nhân làm hành động chính, Sơn với nút Duyệt hoặc Bỏ từng học viên ở C2, Trang với hàng đợi ticket từng người. Chỉ bộ Bích có hành động cấp lớp là nút bấm hạng nhất.

Pattern 3, khoảnh khắc can thiệp nằm trong buổi, không phải sau buổi. Sơn muốn sửa thành giải đáp sau khi hết một phần nào đó thay vì cuối bài giảng, vì hổng ở slide 14 làm hỏng cả phần sau. Fixture của Trang đặt trong giờ, trigger tại slide checkpoint. Fixture của Bích ghi thẳng phút 60/90, coach đang đứng lớp. Hai trong ba người dựng độc lập chọn đặt bối cảnh trong buổi, và tester của người thứ ba chủ động xin chuyển vào trong buổi. Cộng với evidence-snapshot đã kết luận từ Day 17 rằng khoảnh khắc thật của job xảy ra trong buổi, không phải sau buổi, thì quyết định "sau buổi" ở three-option-design-sheet mục 1 là chỗ lạc lõng duy nhất và cần sửa.

## Dwell time, ba cách xử lý khác nhau cho cùng một tín hiệu đã bị evidence loại

Evidence của nhóm nói rõ dwell time là thói quen, không phải tín hiệu độ khó: U4 dành 3 đến 5 phút cho mọi slide nội dung bất kể khó dễ, U1 dừng lâu vì lơ đãng. Nguồn evidence-snapshot mục 1.1, và design sheet chốt rằng không option nào dựa vào dwell time.

Bộ Sơn không dùng, bỏ hẳn theo đúng design sheet. Nhất quán với evidence, nhưng cũng bỏ mất một tín hiệu rẻ.

Bộ Trang dùng dwell time làm trigger chính của cả B lẫn C, ngưỡng trên 5 phút gắn nhãn "Nghi ngờ gặp khó khăn", không có cảnh báo nào về độ tin cậy của tín hiệu. Rủi ro cao: ngưỡng 5 phút nằm đúng trong nhịp đọc bình thường của U4, gây báo động giả trên chính người đã phỏng vấn. Chốt chặn chỉ bật ở slide checkpoint giảm tần suất làm phiền nhưng không sửa được tính hợp lệ.

Bộ Bích dùng, nhưng ngưỡng 22 phút, và UI tự nói ra giới hạn của mình, kèm nút Máy đoán sai và Xem toàn bộ dữ liệu gốc. Đây là cách dùng phòng thủ được: không tuyên bố dwell time là tín hiệu độ khó, nó chỉ là cớ để coach đi kiểm, và ngưỡng 22 phút nằm xa nhịp 3 đến 5 phút của U4.

Kết luận cho nhóm: vấn đề không phải được dùng dwell time hay không, mà là được tuyên bố gì từ nó. Bộ Bích cho thấy cách dùng hợp lệ, coi nó là gợi ý cần người xác nhận, không phải kết luận. Bộ Trang đang coi nó là kết luận. Cần quyết: hoặc bộ Trang hạ dwell time xuống mức gợi ý cần xác nhận như bộ Bích, hoặc bỏ nó làm trigger.

## Khác biệt giữa các tester

Phản ứng trái ngược với Option A, giữa T-Sơn và T-Trang. T-Sơn bác cơ chế vì họ chỉ biết là tôi không hiểu chứ không biết tôi không hiểu chỗ nào, nên vẫn phải thắc mắc. T-Trang thấy rõ ràng, dễ dùng, không do dự. Đây không phải bất đồng giữa hai người, mà là hai thiết kế khác nhau: A của Sơn gửi một con số trần, A của Trang gửi checklist khái niệm kèm ghi chú soạn sẵn, A của Bích gửi cả tên lẫn câu viết nháp nguyên văn. Hai bản sau đã giải đúng lời phàn nàn của T-Sơn.

Lý do chọn option, chỉ T-Bích. Lý do không phải về giao diện, mà là giữ lại không gian tự mình đến gặp học viên, mục tiêu không phải sửa lỗi nhanh nhất mà là giữ được kết nối. Đây là lý do duy nhất trong ba buổi gắn với một mục tiêu sư phạm chứ không phải độ dễ đọc.

Ẩn danh, chỉ T-Sơn. T-Sơn hỏi có biết mình là ai hay ẩn danh, và nhận hai câu trả lời mâu thuẫn trong 40 giây. Hai tester kia không nêu, hợp lý vì bộ Trang và bộ Bích đều có danh tính ngay từ thiết kế.

Chi phí áp lên học viên, giữa T-Sơn và T-Trang. T-Trang lo bị làm phiền khi đang đọc hoặc nghe giảng. T-Sơn lo công bằng, sợ hỗ trợ người này lại không hỗ trợ người kia. Hai loại chi phí khác nhau, cùng một trục.

Vùng mù, không ai nhắc tới. Bộ Sơn hiện 8 trên 12 và 0 trên 12, bộ Bích hiện 24 trên 28 học viên không phát tín hiệu gì, kèm câu máy tính không tự đoán ai đang gặp khó khăn. Không tester nào nhắc tới con số này ở bất kỳ buổi nào. T-Bích chưa đi tới đó vì khựng từ đầu.

## Một Next Change nhóm chốt

Viết lại màn hình bối cảnh mở đầu ở cả ba bộ, rồi test lại với im lặng tuyệt đối.

Ba việc đi kèm, theo thứ tự ưu tiên:

Đưa hành động cấp lớp lên làm hành động chính ở cả ba bộ. Bộ Sơn và bộ Trang cần đưa "giảng lại chung cho vấn đề phổ biến" thành nút hạng nhất, ngang hàng với hành động cá nhân, như nút Thông báo chung cho cả lớp của bộ Bích. Danh sách cá nhân xuống dưới, chỉ cho phần còn sót.

Chuyển khoảnh khắc can thiệp vào trong buổi. Sửa mục 1 của three-option-design-sheet.md, mọi can thiệp neo vào kết thúc một phần nội dung, không neo vào hết buổi và không neo vào ngưỡng thời gian.

Chốt xử lý dwell time. Bộ Trang hạ dwell time xuống mức gợi ý cần người xác nhận kèm cảnh báo và nút Máy đoán sai như bộ Bích, hoặc bỏ hẳn làm trigger. Ghi quyết định vào design sheet.

## Evidence nào dẫn tới quyết định này

Ba trên ba tester không tự đọc ra cơ chế từ màn hình. T-Bích khựng ngay từ đầu và phải hỏi lại tư duy ba option. T-Sơn phải hỏi lại xác nhận cơ chế bốn lần. T-Trang không hiểu vì sao banner quiz bật lên đúng lúc. Đây là nguyên nhân khiến hai trong ba facilitator phải phá luật im lặng, và vì thế làm hỏng chính câu hỏi mà buổi test sinh ra để trả lời, là option nào được chọn và vì sao.

Trade-off: mất thêm một vòng test, và phải hoãn câu hỏi "chọn option nào", nhưng nếu không sửa thì mọi vòng test sau vẫn tiếp tục đo phản ứng với lời facilitator thay vì với thiết kế.

Điều không được viết vào bất kỳ đâu sau vòng này: rằng nhóm đã chọn được option, rằng Option B thắng, hoặc rằng vấn đề đã được chứng minh là đáng giải. Có đúng một tester chọn một option, sau khi được giải thích trước, và chính người facilitate buổi đó đã ghi rõ là chưa kết luận được.

## Still Unproven sau ba feedback

Tester có tự chọn được option nếu không ai giải thích không. Cả ba buổi đều có facilitator nói hộ, chính điều kiện để trả lời đã bị phá. Cách kiểm tiếp theo: sửa màn hình bối cảnh trước, rồi test lại với im lặng tuyệt đối.

Vùng mù có vô hình với coach không. Bộ Sơn hiện 8 trên 12 và 0 trên 12, bộ Bích hiện 24 trên 28, không tester nào nhắc tới. Cách kiểm tiếp theo: cho xem thẳng bảng trống, hỏi tester hiểu buổi đó thế nào.

Coach có kiểm chứng ngược khi nghi AI không. T-Bích không dùng nút Xem toàn bộ dữ liệu gốc vì chưa đi tới chỗ nghi ngờ AI, T-Sơn không chạm màn hình cụm gom sai. Cách kiểm tiếp theo: cho buổi test đủ dài để tester đi tới chỗ nghi ngờ, rồi quan sát.

Lý do sư phạm của T-Bích có bền không. Chỉ một người, và đã bị neo bởi lời giải thích trước đó. Cách kiểm tiếp theo: hỏi lại hai coach khác, sau khi đã sửa màn hình bối cảnh.

Dwell time có phải tín hiệu độ khó không. Evidence Day 17 nói không, hai bộ vẫn dùng, chưa ai đo lại. Cách kiểm tiếp theo: đối chứng artifact, so nhịp đọc thật với nhãn hệ thống gắn.

Học viên có tin "không tính điểm" không. Chưa hỏi ở buổi nào. Cách kiểm tiếp theo: hỏi trực tiếp học viên ngoài nhóm.

Severity, tần suất, chi phí đã trả. Không buổi test prototype nào đo được. Cần một vòng nghiên cứu riêng.

Bối cảnh lớp online. T-Bích là lab coach nhưng bối cảnh test là lớp thực hành tại chỗ, vẫn chưa chạm bối cảnh online mà Case C nhắm tới. Cách kiểm tiếp theo: phỏng vấn coach dạy online.

## Chi tiết feedback từng tester

T-Sơn: nguồn nhóm cung cấp, chưa có file riêng trong repo này.

T-Trang: prototype-feedback-note.md, trong cùng thư mục 05-test-feedback.

T-Bích: nguồn nhóm cung cấp, chưa có file riêng trong repo này.

## Tự kiểm, Gate 5, Learning not praise

Có ba Feedback Note độc lập theo nội dung nhóm cung cấp, nhưng trong repo cá nhân này chỉ một trong ba, của T-Trang, có mặt như file gốc. Hai cột còn lại được điền theo đúng nội dung nhóm gửi, không suy đoán thêm, nhưng chưa trích dẫn được đường link file gốc.

Nêu được pattern và khác biệt giữa ba người, rút qua cơ chế chứ không qua nhãn A, B, C.

Next Change kèm evidence và trade off, không chỉ là tester thích option nào. Evidence: ba trên ba tester không tự đọc ra cơ chế. Trade-off: mất thêm một vòng test và phải hoãn câu hỏi chọn option.

Chất lượng dữ liệu: yếu. Cả ba buổi đều có facilitator nói hộ, chỉ một trên ba tester đúng target user, chưa buổi nào chạm bối cảnh lớp online. Kết luận dùng được là ba pattern, không phải lựa chọn option.
