# Chặng 1: Evidence Snapshot & Hypothesis Problem


## 1. Evidence Snapshot (Từ 3 Practice Notes Day 17)

**Nguồn:** 4 interviewee / 3 practice reflection, phỏng vấn ngày 17/08/2026.

| Mã | Vai trò | Người phỏng vấn | Nguồn dữ liệu |
|----|---------|-----------------|---------------|
| U1 | Học viên | Lương Thanh Trang | [interview-notes-user1.md](interview-notes-user1.md), [practice-reflection 1_2.md](practice-reflection%201_2.md) |
| U2 | Lab Coach | Lương Thanh Trang | [interview-notes-user2.md](interview-notes-user2.md), [practice-reflection 1_2.md](practice-reflection%201_2.md) |
| U3 | Lab coach | Đào Ngọc Bích | [interview-notes-user3.md](interview-notes-user3.md), [notes_3.md](notes_3.md), [recording-link_3.md](recording-link_3.md), [practice-reflection 3.md](practice-reflection%203.md) |
| U4 | Học viên dùng VLearn | Đặng Thái Nam Sơn | [interview-notes-user4.md](interview-notes-user4.md), [transcript_phong_van_on_thi_4.md](transcript_phong_van_on_thi_4.md), [practice-reflection4.md](practice-reflection4.md) |

- **Learner-side evidence:** Cả U1 và U4 đều **không để lại tín hiệu nào trong hệ thống** — câu hỏi và ghi chú đều chảy ra công cụ ngoài (U1: chụp slide hỏi Gemini; U4: ghi chú vào app text ngoài, bỏ AI tutor VLearn vì chậm 1–2 phút/câu), không ai chủ động hỏi giảng viên (U1: *"chưa từng gặp câu hỏi nào đủ cấp thiết"*).
- **Coach-side evidence:** Mọi kênh hiện có (Teams / Zalo / Discord) chỉ chạy **khi học viên liên hệ trước**; cách phát hiện chủ động duy nhất đang hiệu quả là **đi vòng quanh lớp nhìn màn hình** (U3) — chỉ dùng được ở lớp offline quy mô nhỏ, và chính U3 nhận xét *"thời đại AI bây giờ... mọi người cũng bớt lý do để hỏi những bạn lab code"*.

---

### 1.1 Learner-side — FACTS

**U1 (học viên):**
- Bí ở một slide → **chụp màn hình đưa lên Gemini** để nhờ giải thích khái niệm.
- Tự phát hiện Gemini trả lời sai bằng cách đối chiếu với trí nhớ về buổi học → yêu cầu refine lại (cơ chế "self-check" không chính thức).
- Nguyên nhân dừng ở một slide chủ yếu là **lơ đãng / cần ghép nối thông tin tuần tự**, không hẳn do không hiểu bài.
- **Không** đặt câu hỏi trực tiếp với giảng viên trên lớp; về nhà có thắc mắc vẫn ưu tiên hỏi LLM.
- Với cơ chế "hàng đợi hỏi giảng viên": chỉ dùng nếu câu hỏi khó mà Gemini không giải quyết được.
- *"Từ trước đến nay chưa từng gặp câu hỏi nào đủ cấp thiết để phải hỏi trực tiếp giảng viên."*

**U4 (học viên VLearn):**
- Trọng tâm học nằm **trước và trong giờ giảng**, không phải sau: *"mình không dành thời gian ôn tập quá nhiều ở sau giờ học"* [00:44].
- Đọc hết **tất cả** slide trước giờ giảng, **3–5 phút/slide**, giữ nguyên nhịp đó trong giờ giảng; chỉ bỏ qua slide tiêu đề [01:18], [02:37].
- Không dùng bôi đen / ghi chú của VLearn → **ghi chú ra app text ngoài**; tra cứu bằng **AI ngoài** [03:02], [03:28].
- Lý do bỏ AI tutor VLearn: *"nó quá chậm, mỗi lần mà mình hỏi thì nó phải mất cỡ phải 1 phút 2 phút... mình có thể hỏi những cái con khác nó nhanh hơn"* [04:13]. Lưu ý: **đã dùng rồi mới bỏ**, không phải chưa biết tính năng.
- Về chuyện không hiểu mà im lặng: *"thường rất ít... hiện tại thì mình vẫn chưa gặp cái trường hợp đấy"* [03:52].
- Nhưng: *"khi mà ôn thi thì mình cũng sẽ ôn lại từ đầu đến cuối... cái đấy cũng là một cái **điều đáng quan ngại**, tại vì **mình cũng không biết là mình có bỏ qua hay không**. Cái đấy là quan trọng."* [05:31]

**Diễn giải của nhóm (learner-side):**
- Hai câu [03:52] và [05:31] của U4 **không mâu thuẫn**: U4 xử lý tốt *known-unknown* (ghi chú lại hoặc hỏi AI ngay), nhưng **không có cách nào phát hiện** *unknown-unknown* — và tự gọi đó là "điều đáng quan ngại". Đây là lõi của H1' và là nguồn của H4.
- **Dwell time là thói quen, không phải tín hiệu độ khó**: U4 dành 3–5 phút cho mọi slide nội dung bất kể khó dễ; U1 dừng lâu vì lơ đãng chứ không phải vì khó. Với cả hai người, tín hiệu "dừng lâu" gần như không mang thông tin.
- **"Ôn lại từ đầu đến cuối" là bảo hiểm, không phải nỗi đau được cảm nhận**: đó là workaround cho việc thiếu tín hiệu về chỗ đã bỏ sót. Chi phí có thật nhưng **chưa được đo**.
- Nguyên nhân im lặng nghiêng về **"đã có kênh thay thế đủ tốt"**, không phải tâm lý ngại hỏi — khác giả định ban đầu của nhóm.

### 1.2 Coach-side — FACTS

**U2 (Lab Coach / Giảng viên):**
- Kênh hỗ trợ sau giờ học: **Teams, Zalo, kênh "thắc mắc" trên Discord** của AI Thực Chiến. Đội ngũ nhiệt tình nhưng cơ chế vận hành theo hướng **học viên chủ động liên hệ trước**.
- Pain được xác nhận: **khó xác định những học viên gặp khó khăn nhưng không bao giờ chủ động hỏi**; nhận định đây là vấn đề phổ biến ở mọi môi trường giáo dục, **chưa có giải pháp triệt để**.
- Giả thuyết của giảng viên về nguyên nhân im lặng: (1) thiếu nền tảng kiến thức; (2) khó tự xác định được câu hỏi cần hỏi; (3) có thể khó khăn khi làm việc nhóm.
- Giải pháp đang áp dụng: **thúc đẩy làm việc nhóm** trong buổi lab.
- Có cơ chế like/dislike cho phản hồi AI trên V-Learn nhưng **không nắm** cách xử lý/thống kê dữ liệu đó (không thuộc đội V-Learn).

**U3 / LC-01 (lab coach lớp offline):**
- Việc đang cố làm trong buổi: **xác định tiến độ của mọi người trong bài lab đến đâu**.
- Bốn hành vi thực tế: (1) **đi vòng quanh lớp xem tiến độ trên màn hình**; (2) thấy tiến độ thì **chủ động offer support ngay**; (3) cho làm việc nhóm để học viên tự trao đổi; (4) trả lời trên Discord ngoài giờ.
- *"Mình thấy rất ít trường hợp các bạn giấu đi."* — thêm: các bạn chỉ **hơi ngại hỏi một chút** chứ không khép kín.
- Về ca phát hiện muộn: *"Mình xin phép nói là chưa ạ."*
- *"Thời đại AI bây giờ, những gì khó hiểu có thể hỏi luôn con AI, cho nên mọi người cũng bớt lý do để hỏi những bạn lab code."*
- Khi được hỏi việc học viên hỏi AI thay vì hỏi lab coach có phải vấn đề không: *"Mình không nghĩ đó là một vấn đề đâu"* — coi việc tự tìm tòi là một cách học và **khuyến khích**.

**Diễn giải của nhóm (coach-side):**
- **Câu quan trọng nhất của vòng này là câu về "thời đại AI"** — đây là coach-side **xác nhận độc lập** đúng hành vi quan sát được ở U1 và U4: học viên bớt lý do hỏi người vì đã có AI trả lời thay.
- Workaround "đi quanh lớp" giải quyết được job phát hiện, **nhưng mất hiệu lực khi học online hoặc lớp đông** — mà Case C lại giả định đúng bối cảnh đó. Kết luận của vòng này **không phải** "pain không tồn tại", mà là **pain có thể không tồn tại ở bối cảnh có người đi quanh phòng được**.
- Khoảnh khắc thật của job xảy ra **trong buổi**, không phải sau buổi như giả thuyết ban đầu đặt ra.

### 1.3 Bằng chứng trái giả thuyết & bằng chứng phải hạ độ tin cậy

**Trái giả thuyết (giữ nguyên, không xóa):**
-  *"Lab coach không có cách nào nhìn ra nhóm im lặng"* — U3 **có** cách: đi quanh lớp nhìn màn hình.
-  *"Có nhóm học viên đuối nhưng không lên tiếng, đủ đông"* — *"Mình thấy rất ít trường hợp các bạn giấu đi."*
-  *"Phát hiện muộn gây hậu quả thật, nhìn thấy được"* — *"Mình xin phép nói là chưa ạ."* Không có ca nào → **không được tuyên bố pain này nghiêm trọng**.
-  Giả định của nhóm rằng học viên hỏi AI là một vấn đề — bị U3 bác thẳng.
-  Situation của H1 (*"đọc lại bài sau buổi học"*) — sai với U4: trọng tâm nằm ở **trước và trong** giờ giảng.

** Bằng chứng bị nhiễm — không dùng để xác thực giả thuyết:**
- U3 nói *"khó xác định những học viên ít giao tiếp"* **ngay sau khi người phỏng vấn mô tả sản phẩm** ở phần mở đầu. Câu này chỏi với hành vi *"đi quanh lớp nhìn thấy ngay tiến độ"* nói ở giữa buổi. Theo nguyên tắc **hành vi đáng tin hơn ý kiến**, nhóm nghiêng về câu thứ hai — nhưng **ghi lại cả hai**.
- U4 [04:57] (*"mình nghĩ là có... Có thể là sẽ có"*) đến sau một câu hỏi **mô tả sẵn toàn bộ khái niệm rồi hỏi có/không** → không dùng được. Ngược lại [05:31] đáng tin vì U4 **tự diễn đạt bằng từ của mình**.
- Cần đối chiếu: nội dung U2 nói về *"khó xác định học viên không chủ động hỏi"* rất giống câu bị nhiễm của U3 — cần xác nhận buổi U2 có bị lộ solution tương tự không.

### 1.4 Chưa thu được — để trống, không suy đoán

- **Severity / tần suất / chi phí đã trả**: không có ở cả hai phía. Phase 4 của buổi U4 mất trắng (buổi chỉ dài 5'54"/45' thiết kế); phía coach không có ca nào, không có con số. → **Chưa biết vấn đề có đáng giải hay không.**
- **Đối chứng artifact**: chưa bắt học viên mở VLearn ra xem highlight/ghi chú thật — toàn bộ là self-report.
- **Actor C** (học viên đã chủ động hỏi, câu hỏi tồn đọng không được ưu tiên): **0 dữ liệu** → Pain B chưa kiểm chứng, không phải bị bác bỏ.
- **Bối cảnh online / lớp đông**: chưa phỏng vấn được coach nào thuộc bối cảnh này — mà đây đúng là bối cảnh Case C giả định.
- **Nhóm học viên ít chủ động**: cả U1 và U4 đều thuộc nhóm **rất chủ động** (U4 đọc trước toàn bộ slide, ôn cover-to-cover, có hệ thống ghi chú riêng). Nhóm rủi ro cao **chưa được đại diện**.

### 1.5 Cảnh báo về mẫu

- n = 4 (2 học viên + 2 coach). Hai buổi có transcript đều rất ngắn: 6 phút (U3) và 5'54" (U4).
- **U2 và U3 có thể là cùng một người hoặc cùng một chương trình** (đều là lab coach AI Thực Chiến, đều nêu giải pháp làm việc nhóm, đều dùng Discord của group). Nếu trùng, coach-side thực chất chỉ là **n = 1**. → Cần xác nhận trước khi dùng số liệu này.
- Không dùng chữ "validated" ở bất kỳ đâu trong tài liệu này. Đây là dữ liệu luyện kỹ năng, không phải một vòng field research.

---

## 2. Hypothesis Problem chốt dùng cho Day 18

- **Phát biểu chốt (đề xuất từ evidence ở trên — chờ nhóm xác nhận):** Khi hỗ trợ học tập **ngoài giờ học hoặc trong lớp quy mô lớn/online** — tức khi Lab Coach / Giảng viên **không thể đi vòng quanh nhìn màn hình** — họ mất đi cách phát hiện chủ động duy nhất đang thực sự hiệu quả, chỉ còn lại các kênh thụ động (Teams/Zalo/Discord) vốn chỉ phản ánh người đã chủ động lên tiếng; trong khi đó học viên **âm thầm tự giải quyết bằng AI và ghi chú ngoài hệ thống VLearn**, nên hệ thống không nhìn thấy tín hiệu nào. Hệ quả: bỏ lỡ thời điểm vàng để hỗ trợ, học viên tích tụ hổng kiến thức và có nguy cơ tụt lại phía sau.

Các Hypotheses đã được nêu lên:

>Hỗ trợ chỉ chạy khi học viên chủ động mở lời — và học viên ngày càng ít mở lời, vì đã có AI ngoài trả lời thay.

>Khi hỗ trợ học tập ngoài giờ học hoặc trong các lớp học quy mô lớn/online (không thể đi vòng quanh nhìn màn hình), Lab Coach / Giảng viên gặp khó khăn trong việc phát hiện sớm những học viên đang gặp khúc mắc hoặc đuối kiến thức vì các kênh hỗ trợ hiện tại mang tính thụ động (phụ thuộc vào việc học viên chủ động hỏi) trong khi học viên có xu hướng âm thầm tự giải quyết bằng AI/ghi chú ngoài hệ thống VLearn, dẫn đến việc bỏ lỡ thời điểm vàng để hỗ trợ kịp thời, khiến học viên tích tụ hổng kiến thức và có nguy cơ tụt lại phía sau.

>H1' — Học viên chủ động trên VLearn (đọc trước toàn bộ slide, ôn lại từ đầu đến cuối trước kỳ kiểm tra) không thể biết mình đã lướt qua mất phần nào, vì những chỗ vô tình bỏ qua không để lại dấu hiệu nào cho chính họ; điều này buộc họ quét lại toàn bộ như một hình thức bảo hiểm, kèm cảm giác bất an mà chính họ gọi là "điều đáng quan ngại".

>H2' — Học viên không để lại tín hiệu trên VLearn vì công cụ trong VLearn phản hồi chậm hơn công cụ ngoài (AI tutor mất 1–2 phút/câu), nên cả ghi chú lẫn câu hỏi đều chảy sang ứng dụng bên ngoài — nơi hệ thống không nhìn thấy.

>H4 (mới) — Các tín hiệu Case C dựa vào (dừng lâu, xem lại, đánh dấu "Chưa hiểu") chỉ bắt được known-unknown. Với unknown-unknown — chỗ học viên tự tin lướt qua — hệ thống không thu được tín hiệu nào. Vùng rủi ro cao nhất cũng là vùng vô hình nhất với Support Queue.

### 2.1 Evidence nào chống lưng cho hypothesis nào

| Hypothesis | Bằng chứng ủng hộ | Bằng chứng làm yếu / còn thiếu |
|---|---|---|
| Kênh hỗ trợ hoàn toàn reactive | U2 (Teams/Zalo/Discord đều chờ liên hệ trước); U3 (*"bớt lý do để hỏi những bạn lab code"*) | U3 có walkaround chủ động ở lớp offline |
| H1' — không biết mình đã bỏ sót gì | U4 [05:31] *"không biết là mình có bỏ qua hay không"*, tự gọi là "điều đáng quan ngại" | Chưa đo được severity/tần suất/chi phí; mới n=1 học viên nói ra điều này |
| H2' — tín hiệu chảy ra ngoài hệ thống | U4 (ghi chú app ngoài, AI tutor chậm 1–2 phút); U1 (toàn bộ pipeline qua Gemini) | Chưa đối chứng artifact; chưa biết tỷ lệ học viên dùng công cụ ngoài |
| H4 — unknown-unknown vô hình với radar | U4 (nhịp đọc đều 3–5 phút/slide → không phát tín hiệu); U1 (dừng lâu vì lơ đãng, không phải vì khó) | Chưa kiểm ở nhóm học viên ít chủ động |
| Pain B — câu hỏi tồn đọng không được ưu tiên | — | **0 dữ liệu** — chưa phỏng vấn actor C |

### 2.2 Ưu tiên cho vòng tiếp theo

1. **Đo cho được severity / tần suất / chi phí đã trả** — cả hai phía. Không có nó thì không biết vấn đề có đáng giải hay không.
2. **Phỏng vấn coach ở bối cảnh online hoặc lớp đông** — đúng bối cảnh Case C giả định, và là chỗ walkaround mất hiệu lực.
3. **Phỏng vấn học viên ít chủ động** — tránh mẫu lệch về nhóm "học viên chăm".
4. **Kiểm chứng H4**: nhịp đọc đều là phổ biến hay chỉ là đặc điểm của U4? Nếu phổ biến, tín hiệu dwell time của Case C mất phần lớn giá trị.
5. **Xác nhận U2 và U3 có phải hai người khác nhau không.**

