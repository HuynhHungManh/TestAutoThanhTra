Feature: Role Chuyên viên
	Bao gồm:
	- Tiếp nhận đơn
	- Hướng xử lý là Thụ lý
	- Hướng giải quyết là Giam thẩm tra xác minh

Scenario: TC001 - Đăng nhập với role Chuyên Viên
	Given I open the url "http://test.thanhtratp.greenglobal.vn:9835/"
	And I pause for 5000ms
	Then I expect that the path is "/dang-nhap"
	When I add "tientx@danang.gov.vn" to the inputfield "input[name=Username]"
	And I add "tttp@123" to the inputfield "input[name=Password]"
	And I submit the form ".login-form"
	Then I wait on element ".user-name" to be visible

Scenario: TC002 - Truy cập sổ tiếp công dân thường xuyên
	Given the title is "Thanh Tra Đà Nẵng"
	When I move to element "a=Tiếp công dân"
	And I click on the element "a=Sổ tiếp công dân thường xuyên"
	Then I wait on element "span=Xuất Sổ tiếp công dân" to be visible

Scenario: TC003 - Thêm mới lượt tiếp công dân
	Given the element "p=Sổ tiếp công dân thường xuyên" is visible
	When I click on the element "a=Thêm mới"
	And I pause for 2000ms
	And I wait on element "h2.icon-add" to be visible
	And I pause for 2000ms
	Then I expect that element "h2.icon-add" matches the text "THÊM MỚI LƯỢT TIẾP CÔNG DÂN"
	#Kiểm tra hiển thị của thông báo lỗi khi click button Lưu tạm mà bỏ trống các trường có symbol yêu cầu
	When I scroll to element "a=Lưu tạm"
	And I pause for 2000ms
	And I click on the element "a=Lưu tạm"
	And I pause for 2000ms
	#And I wait on element "label.pt-label.wrap-autocomplete > div.pt-form-helper-text" to be visible
	And I pause for 2000ms
	Then I expect that element "label.pt-label.wrap-autocomplete > div.pt-form-helper-text" matches the text "Bạn không được bỏ trống trường này."
	And I pause for 2000ms
	And I expect that element "div.wrapper_box > div:nth-of-type(3) > div.box-forward > div.container-box > div:first-child > div:nth-of-type(2) > div.rows > div:first-child > div.pt-form-helper-text" matches the text "Bạn không được bỏ trống trường này."
	And I pause for 2000ms
	And I expect that element "div.rows > div:nth-of-type(6) > div.pt-form-helper-text" matches the text "Bạn không được bỏ trống trường này."
	And I pause for 2000ms
	And I expect that element "div.wrapper_box > div:nth-of-type(4) > div.box-forward > div.container-box > div.group-box > div.items-form > div:first-child > div.input-group > div.pt-form-helper-text" matches the text "Bạn không được bỏ trống trường này."
	And I pause for 2000ms
	And I expect that element "div.items-form > div:nth-of-type(2) > div.input-group > div.pt-form-helper-text" matches the text "Bạn không được bỏ trống trường này."
	#Điền thông tin mẫu vào các trường và click button Lưu tạm
	When I scroll to element "h2.icon-add"
	And I pause for 2000ms


	And I click on the element "a=Lưu tạm"
	And I set "02/11/2017 - 15:30" to the inputfield "div.col-input > label.pt-label > div.rdt.calendar_icon > input.form-control"
	And I pause for 2000ms
	And I click on the element "h2.icon-add"
	And I pause for 2000ms
	And I select the option with the value "DOAN_DONG_NGUOI" for element "[name=dropdownLoaiNguoiDungDonId]"
	And I pause for 2000ms
	And I set "100" to the inputfield "div.rows > div:nth-of-type(2) > div:first-child > input.pt-input"
	And I pause for 2000ms
	And I set "1" to the inputfield "div.rows > div:nth-of-type(2) > div:nth-of-type(2) > input.pt-input"
	And I pause for 2000ms
	And I scroll to element "div.container-box > div:nth-of-type(3) > div:first-child > div.title > div.rows > div"
	And I pause for 2000ms
	And I set "Hoàng Đức Dũng 57" to the inputfield "input.pt-input.pt-intent-danger"
	And I pause for 2000ms
	And I set "22/05/1988" to the inputfield "div.container-box > div:nth-of-type(3) > div:first-child > div:nth-of-type(2) > div.rows > div.input-group > label.pt-label > div.rdt.calendar_icon > input.form-control"
	And I pause for 2000ms
	And I set "0989963271" to the inputfield "div.rows > div:nth-of-type(3) > input.pt-input"
	And I pause for 2000ms
	And I click on the element "div.radio-gender.val-title-radio-group > label:nth-of-type(2) > span.pt-control-indicator"
	And I pause for 2000ms
	And I set "201573683" to the inputfield "div.rows > div:first-child > input.pt-input"
	And I pause for 2000ms
	And I set "11/03/2017" to the inputfield "div.container-box > div:nth-of-type(3) > div:first-child > div:nth-of-type(3) > div.rows > div.input-group > label.pt-label > div.rdt.calendar_icon > input.form-control"
	And I pause for 2000ms
	And I select the option with the text "Công an Đà Nẵng" for element "div.container-box > div:nth-of-type(3) > div:first-child > div:nth-of-type(3) > div.rows > div:nth-of-type(3) > div > select"
	And I pause for 2000ms
	And I select the option with the text "Việt Nam" for element "div.container-box > div:nth-of-type(3) > div:first-child > div:nth-of-type(3) > div.rows > div:nth-of-type(4) > div > select"
	And I pause for 2000ms
	And I select the option with the text "Kinh" for element "div.rows > div:nth-of-type(5) > div > select"
	And I pause for 2000ms
	And I select the option with the text "thành phố Đà Nẵng" for element "div.container-box > div:nth-of-type(3) > div:first-child > div:nth-of-type(4) > div.rows > div:first-child > div > select"
	And I pause for 2000ms
	And I select the option with the text "quận Ngũ Hành Sơn" for element "div.container-box > div:nth-of-type(3) > div:first-child > div:nth-of-type(4) > div.rows > div:nth-of-type(2) > div > select"
	And I pause for 2000ms
	And I select the option with the text "phường Mỹ An" for element "div.container-box > div:nth-of-type(3) > div:first-child > div:nth-of-type(4) > div.rows > div:nth-of-type(3) > div > select"
	And I pause for 2000ms
	And I select the option with the text "Tổ 05" for element "div.container-box > div:nth-of-type(3) > div:first-child > div:nth-of-type(4) > div.rows > div:nth-of-type(4) > div > select"
	And I pause for 2000ms
	And I set "72 Trần Khánh Dư" to the inputfield "div.rows > div:nth-of-type(5) > input.pt-input"
	And I pause for 2000ms
	And I scroll to element "div.wrapper_box > div:nth-of-type(3) > div.box-forward > div.container-box > div:first-child > div:first-child > div.rows"
	And I pause for 2000ms
	And I select the option with the text "Kiến nghị, phản ánh" for element "[name=dropdownChonLoaiDonThu]"
	And I pause for 5000ms
	And I select the option with the text "Về Đảng" for element "[name=dropdownChonLinhVucDonThu]"
	And I pause for 2000ms
	And I set "ABC..." to the inputfield "[name=textareaTomTatNoiDung]"
	And I pause for 2000ms
	And I scroll to element "div.group-box > div.title > div.rows > div"
	And I pause for 2000ms
	And I select the option with the text "Đủ điền kiện xử lý" for element "[name=dropdownChonPhanLoaiDon]"
	And I pause for 2000ms
	And I select the option with the text "Tiếp nhận đơn" for element "[name=dropdownChonXuLy]"
	And I pause for 2000ms
	And I set "ABC..." to the inputfield "[name=textareaYKien]"
	And I pause for 2000ms
	And I scroll to element "div.container-box > div:first-child > div:nth-of-type(3) > div.rows > h3"
	And I pause for 2000ms
	And I set "Tài liệu" to the inputfield "div.no-gutter > input.pt-input"
	And I pause for 2000ms
	And I click on the element "[name=file]"
	And I pause for 5000ms
	And I scroll to element "a=Chuyển xử lý đơn"
	And I pause for 2000ms
	And I click on the element "a=Chuyển xử lý đơn"
	And I pause for 2000ms
	Then I wait on element "div.left-content > p" to be visible
	And I pause for 2000ms
	And I expect that element "div.left-content > p" matches the text "SỔ TIẾP CÔNG DÂN THƯỜNG XUYÊN"

Scenario: TC004 - Xử lý đơn
	Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/xu-ly-don"
	And I pause for 5000ms
	And I wait on element "span=Xuất sổ xử lý đơn" to be visible
	And I pause for 2000ms
	When I set "Hoàng Đức Dũng 57" to the inputfield "input.search-input"
	And I pause for 2000ms
	And I click on the element "span=Tìm kiếm"
	And I pause for 5000ms
	Then I wait on element "a.itt-redirect" to be visible
	And I pause for 2000ms
	When I click on the element "a.itt-redirect"
	And I pause for 2000ms
	And I wait on element "div=Chi tiết đơn/ vụ việc" to be visible
	And I pause for 2000ms
	And I scroll to element "div.row.pl15.pr15"
	And I pause for 2000ms
	And I set "11/11/2017" to the inputfield "input.form-control"
	And I pause for 2000ms
	And I select the option with the text "Lãnh đạo ban tiếp dân" for element "[name=dropdownChonCanBoXuLyTruongPhong]"
	And I pause for 2000ms
	And I set "Nên làm như thế này ..." to the inputfield "[name=textareaYKien]"
	And I pause for 2000ms
	And I click on the element "span=Trình"
	And I pause for 2000ms
	Then I wait on element "span=Xuất sổ xử lý đơn" to be visible
	And I pause for 2000ms
	When I set "Hoàng Đức Dũng 57" to the inputfield "input.search-input"
	And I pause for 2000ms
	And I click on the element "span=Tìm kiếm"
	And I pause for 2000ms
	Then I wait on element "td=Chưa có dữ liệu" to be visible
	And I pause for 2000ms
	And I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
	And I pause for 5000ms
	When I move to element "span.user-name"
	And I click on the element "a=Đăng xuất"
	Then I expect that element ".login-form" is visible
	And I pause for 2000ms

Scenario: TC005 - Đăng nhập với role Lãnh đạo Ban tiếp dân
	Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
	And I pause for 5000ms
	And I wait on element "span=Đăng nhập" to be visible
	When I add "lanhdaobtd@danang.gov.vn" to the inputfield "input[name=Username]"
	And I add "tttp@123" to the inputfield "input[name=Password]"
	And I submit the form ".login-form"
	Then I wait on element ".user-name" to be visible
	And I pause for 5000ms

Scenario: TC006 - Giao việc cho cán bộ xử lý
	Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/xu-ly-don"
	And I pause for 5000ms
	And I wait on element "span=Xuất sổ xử lý đơn" to be visible
	And I pause for 2000ms
	When I set "Hoàng Đức Dũng 57" to the inputfield "input.search-input"
	And I pause for 2000ms
	And I click on the element "span=Tìm kiếm"
	And I pause for 5000ms
	Then I wait on element "a.itt-redirect" to be visible
	And I pause for 2000ms
	And I click on the element "a.itt-redirect"
	And I pause for 2000ms
	And I wait on element "div=Chi tiết đơn/ vụ việc" to be visible
	And I pause for 5000ms
	And I scroll to element "div.row.pl15.pr15"
	And I pause for 2000ms
	And I select the 1st option for element "[name=dropdownTruongPhongChonCanBoXuLy]"
	And I pause for 2000ms
	And I set "Xử lý như thế này ..." to the inputfield "[name=textareaYKienTruongPhong]"
	And I pause for 2000ms
	And I click on the element "span=Giao việc"
	And I pause for 2000ms
	Then I wait on element "span=Xuất sổ xử lý đơn" to be visible
	And I pause for 2000ms
	And I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
	And I pause for 5000ms
	When I move to element "span.user-name"
	And I click on the element "a=Đăng xuất"
	Then I expect that element ".login-form" is visible
	And I pause for 5000ms

Scenario: TC007 - Đăng nhập role Cán bộ Xử lý đơn
	Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
	And I pause for 5000ms
	And I wait on element "span=Đăng nhập" to be visible
	When I add "tientx@danang.gov.vn" to the inputfield "input[name=Username]"
	And I add "tttp@123" to the inputfield "input[name=Password]"
	And I submit the form ".login-form"
	Then I wait on element ".user-name" to be visible

Scenario: TC008 - Chuyển đơn vị TTXM
	Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/xu-ly-don"
	And I pause for 5000ms
	And I wait on element "span=Xuất sổ xử lý đơn" to be visible
	And I pause for 2000ms
	When I set "Hoàng Đức Dũng 57" to the inputfield "input.search-input"
	And I pause for 2000ms
	And I click on the element "span=Tìm kiếm"
	And I pause for 5000ms
	Then I wait on element "a.itt-redirect" to be visible
	And I pause for 2000ms
	And I click on the element "a.itt-redirect"
	And I pause for 2000ms
	And I wait on element "div=Chi tiết đơn/ vụ việc" to be visible
	And I pause for 5000ms
	And I scroll to element "div.row.pl15.pr15"
	And I pause for 2000ms
	And I select the option with the text "Thụ lý" for element "[name=dropdownChonHuongXuLyTheoDon]"
	And I pause for 2000ms
	And I select the option with the text "Hành chính" for element "[name=dropdownChonNhomThamQuyenGiaiQuyet]"
	And I pause for 2000ms
	And I set "11/11/2017" to the inputfield "div > div:nth-of-type(2) > div:nth-of-type(3) > label.pt-label > div.rdt.calendar_icon > input.form-control"
	And I pause for 2000ms
	And I select the option with the text "Giao đơn vị khác TTXM" for element "[name=dropdownChonTrangThaiTTXM]"
	And I pause for 2000ms
	And I select the option with the text "Thanh tra thành phố" for element "[name=dropdownChonDonViTTXM]"
	And I pause for 2000ms
	And I set "Xử lý như thế này ..." to the inputfield "[name=textareaYKienCanBoXuLyDon]"
	And I pause for 2000ms
	And I scroll to element "div.pt5.pb15"
	And I pause for 2000ms
	And I click on the element "a.itt-delete"
	And I pause for 2000ms
	And I click on the element "tbody.table-body > tr:first-child > td:nth-of-type(6) > div.wrap-link-todo.link-attach > div.upload_file_content > input.upload"
	And I pause for 3000ms
	And I click on the element "tbody.table-body > tr:nth-of-type(2) > td:nth-of-type(6) > div.wrap-link-todo.link-attach > div.upload_file_content > input.upload"
	And I pause for 3000ms
	And I click on the element "span=Chuyến đơn vị thẩm tra xác minh"
	And I pause for 2000ms
	And I click on the element "span=Đồng ý"
	And I pause for 2000ms
	Then I wait on element "span=Xuất sổ xử lý đơn" to be visible
	And I pause for 2000ms
	And I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
	And I pause for 5000ms
	When I move to element "span.user-name"
	And I click on the element "a=Đăng xuất"
	Then I expect that element ".login-form" is visible
	And I pause for 5000ms

Scenario: TC009 - Đăng nhập role Chuyên viên nhập liệu tại đơn vị được giao TTXM
	Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
	And I pause for 5000ms
	And I wait on element "span=Đăng nhập" to be visible
	When I add "namph@danang.gov.vn" to the inputfield "input[name=Username]"
	And I add "tttp@123" to the inputfield "input[name=Password]"
	And I submit the form ".login-form"
	Then I wait on element ".user-name" to be visible
	And I pause for 5000ms

Scenario: TC010 - Giao việc cho phòng ban tại đơn vị được giao TTXM
	Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/xu-ly-don"
	And I pause for 5000ms
	And I wait on element "span=Xuất sổ xử lý đơn" to be visible
	And I pause for 2000ms
	When I set "Hoàng Đức Dũng 57" to the inputfield "input.search-input"
	And I pause for 2000ms
	And I click on the element "span=Tìm kiếm"
	And I pause for 5000ms
	Then I wait on element "a.itt-redirect" to be visible
	And I pause for 2000ms
	And I click on the element "a.itt-redirect"
	And I pause for 2000ms
	And I wait on element "div=Chi tiết đơn/ vụ việc" to be visible
	And I pause for 5000ms
	And I scroll to element "[name=chonBanlanhDaoTTXM]"
	And I pause for 2000ms
	And I wait on element "[name=chonBanlanhDaoTTXM]" to be visible
	And I pause for 2000ms
	And I select the option with the text "Nguyễn Đức Cam" for element "[name=chonBanlanhDaoTTXM]"
	And I pause for 2000ms
	And I set "Xử lý như thế này ..." to the inputfield "[name=textareaBanLanhDaoTTXM]"
	And I pause for 2000ms
	And I click on the element "span=Trình"
	And I pause for 2000ms
	Then I wait on element "span=Xuất sổ xử lý đơn" to be visible
	And I pause for 2000ms
	And I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
	And I pause for 5000ms
	When I move to element "span.user-name"
	And I click on the element "a=Đăng xuất"
	Then I expect that element ".login-form" is visible
	And I pause for 5000ms

Scenario: TC011 - Đăng nhập role Lãnh đạo tại đơn vị được giao TTXM
	Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
	And I pause for 5000ms
	And I wait on element "span=Đăng nhập" to be visible
	When I add "camnd@danang.gov.vn" to the inputfield "input[name=Username]"
	And I add "tttp@123" to the inputfield "input[name=Password]"
	And I submit the form ".login-form"
	Then I wait on element ".user-name" to be visible
	And I pause for 5000ms

Scenario: TC012 - Giao việc cho trưởng phòng ban tại đơn vị được giao TTXM
	Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/xu-ly-don"
	And I pause for 5000ms
	And I wait on element "span=Xuất sổ xử lý đơn" to be visible
	And I pause for 2000ms
	When I set "Hoàng Đức Dũng 57" to the inputfield "input.search-input"
	And I pause for 2000ms
	And I click on the element "span=Tìm kiếm"
	And I pause for 5000ms
	Then I wait on element "a.itt-redirect" to be visible
	And I pause for 2000ms
	And I click on the element "a.itt-redirect"
	And I pause for 2000ms
	And I wait on element "div=Chi tiết đơn/ vụ việc" to be visible
	And I pause for 5000ms
	And I scroll to element "[name=dropdownHuongXuLy]"
	And I pause for 2000ms
	And I select the option with the text "Giao việc trưởng phòng" for element "[name=dropdownHuongXuLy]"
	And I pause for 2000ms
	And I wait on element "[name=dropdownChonPhongBanThuocCoQuan]" to be visible
	And I pause for 2000ms
	And I select the option with the text "Phòng Thanh tra 2" for element "[name=dropdownChonPhongBanThuocCoQuan]"
	And I pause for 2000ms
	And I select the option with the text "Trần Hòa Phú" for element "[name=dropdownChonCanBoXuLyTruongPhong]"
	And I pause for 2000ms
	And I set "Xử lý như thế này ..." to the inputfield "[name=textareaYKienLanhDao]"
	And I pause for 2000ms
	And I click on the element "span=Giao việc"
	And I pause for 2000ms
	Then I wait on element "span=Xuất sổ xử lý đơn" to be visible
	And I pause for 2000ms
	And I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
	And I pause for 5000ms
	When I move to element "span.user-name"
	And I click on the element "a=Đăng xuất"
	Then I expect that element ".login-form" is visible
	And I pause for 5000ms

Scenario: TC013 - Đăng nhập role Cán bộ giải quyết tại đơn vị được giao TTXM
	Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
	And I pause for 5000ms
	And I wait on element "span=Đăng nhập" to be visible
	When I add "phuth@danang.gov.vn" to the inputfield "input[name=Username]"
	And I add "tttp@123" to the inputfield "input[name=Password]"
	And I submit the form ".login-form"
	Then I wait on element ".user-name" to be visible
	And I pause for 5000ms

Scenario: TC014 - Giao việc cho trưởng phòng ban tại đơn vị được giao TTXM
	Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/giai-quyet-don"
	And I pause for 5000ms
	And I click on the element "ul.menu-list > li:nth-of-type(3)"
	And I pause for 2000ms
	And I wait on element "a.itt-redirect" to be visible
	And I pause for 2000ms
	And I set "Hoàng Đức Dũng 57" to the inputfield "input.search-input"
	And I pause for 2000ms
	And I click on the element "span=Tìm kiếm"
	And I pause for 5000ms
	Then I wait on element "a.itt-redirect" to be visible
	And I pause for 2000ms
	And I click on the element "a.itt-redirect"
	And I pause for 2000ms
	And I wait on element "div=Thông tin giải quyết đơn/vụ việc" to be visible
	And I pause for 2000ms
	And I scroll to element "[name=dropdownChonCanBoGiaiQuyet]"
	And I pause for 5000ms
	And I select the option with the text "Lê Thị Hoa" for element "[name=dropdownChonCanBoGiaiQuyet]"
	And I pause for 2000ms
	And I set "Xử lý như thế này ..." to the inputfield "[name=textareaChonCanBoGiaiQuyet]"
	And I pause for 2000ms
	And I scroll to element "span=Giao việc"
	And I pause for 2000ms
	And I click on the element "span=Giao việc"
	And I pause for 2000ms
	Then I wait on element "tbody.table-body > tr:first-child > td:first-child" to be visible
	And I pause for 2000ms
	And I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
	And I pause for 5000ms
	When I move to element "span.user-name"
	And I click on the element "a=Đăng xuất"
	Then I expect that element ".login-form" is visible
	And I pause for 5000ms

Scenario: TC015 - Đăng nhập role Cán bộ giải quyết tại đơn vị được giao TTXM
	Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
	And I pause for 5000ms
	And I wait on element "span=Đăng nhập" to be visible
	When I add "hoalt@danang.gov.vn" to the inputfield "input[name=Username]"
	And I add "tttp@123" to the inputfield "input[name=Password]"
	And I submit the form ".login-form"
	Then I wait on element ".user-name" to be visible
	And I pause for 5000ms

Scenario: TC016 - Đơn thư đã giải quyết và lưu hồ sơ
	Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/giai-quyet-don"
	And I pause for 5000ms
	When I click on the element "ul.menu-list > li:nth-of-type(4)"
	And I pause for 2000ms
	And I wait on element "a.itt-redirect" to be visible
	And I pause for 2000ms
	And I set "Hoàng Đức Dũng 57" to the inputfield "input.search-input"
	And I pause for 5000ms
	And I click on the element "span=Tìm kiếm"
	And I pause for 5000ms
	Then I wait on element "a.itt-redirect" to be visible
	And I pause for 2000ms
	And I click on the element "a.itt-redirect"
	And I pause for 2000ms
	And I wait on element "div=Thông tin giải quyết đơn/vụ việc" to be visible
	And I pause for 2000ms
	And I wait on element "span=Gửi báo cáo TTXM" to be visible
	And I pause for 2000ms
	And I scroll to element "[name=dropdownChonKetLuanNoiDungGiaoTTXM]"
	And I pause for 5000ms
	And I wait on element "[name=dropdownChonKetLuanNoiDungGiaoTTXM]" to be visible
	And I pause for 2000ms
	And I select the option with the text "Đúng toàn bộ" for element "[name=dropdownChonKetLuanNoiDungGiaoTTXM]"
	And I pause for 2000ms
	And I set "Xử lý như thế này ..." to the inputfield "[name=textareaCanBoKetLuanNoiDung]"
	And I pause for 2000ms
	And I scroll to element "span=Gửi báo cáo TTXM"
	And I pause for 2000ms
	And I click on the element "span=Gửi báo cáo TTXM"
	And I pause for 2000ms
	And I click on the element "span=Đồng ý"
	And I pause for 2000ms
	Then I wait on element "tbody.table-body > tr:first-child > td:first-child" to be visible
	And I pause for 2000ms
	And I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
	And I pause for 5000ms
	When I move to element "span.user-name"
	And I click on the element "a=Đăng xuất"
	Then I expect that element ".login-form" is visible
	And I pause for 5000ms

Scenario: TC017 - Đăng nhập role Lãnh đạo ban tiếp dân
	Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
	And I pause for 5000ms
	And I wait on element "span=Đăng nhập" to be visible
	When I add "lanhdaobtd@danang.gov.vn" to the inputfield "input[name=Username]"
	And I add "tttp@123" to the inputfield "input[name=Password]"
	And I submit the form ".login-form"
	Then I wait on element ".user-name" to be visible
	And I pause for 5000ms

Scenario: TC018 - Đơn thư đã giải quyết và lưu hồ sơ
	Given the element "ul.menu-list > li:nth-of-type(3)" is visible
	When I click on the element "ul.menu-list > li:nth-of-type(3)"
	And I pause for 2000ms
	And I wait on element "a.itt-redirect" to be visible
	And I pause for 2000ms
	And I set "Hoàng Đức Dũng 57" to the inputfield "input.search-input"
	And I pause for 2000ms
	And I click on the element "span=Tìm kiếm"
	Then I wait on element "a.itt-redirect" to be visible
	And I pause for 2000ms
	And I click on the element "a.itt-redirect"
	And I pause for 2000ms
	And I wait on element "div=Thông tin giải quyết đơn/vụ việc" to be visible
	And I pause for 2000ms
	And I scroll to element "select[name]"
	And I pause for 2000ms
	And I select the option with the text "Đã có quyết định giải quyết" for element "select[name]"
	And I pause for 2000ms
	And I click on the element "span=Đồng ý"
	And I pause for 2000ms
	And I scroll to element "span=Lưu hồ sơ"
	And I pause for 2000ms
	And I click on the element "span=Lưu hồ sơ"
	And I pause for 2000ms
	And I click on the element "span=Đồng ý"
	And I pause for 5000ms
	Then I wait on element "tbody.table-body > tr:first-child > td:first-child" to be visible
	And I pause for 2000ms
	And I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
	And I pause for 5000ms
	When I move to element "span.user-name"
	And I click on the element "a=Đăng xuất"
	Then I expect that element ".login-form" is visible
