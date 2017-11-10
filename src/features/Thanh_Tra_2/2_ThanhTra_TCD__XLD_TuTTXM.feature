Feature: Test Follow Tu TTXM
	Background:
		Given I have a screen that is 1366 by 768 pixels

	Scenario: Login and process as Chuyen Vien
		# TC001

		# Login
		When I open the url "http://test.thanhtratp.greenglobal.vn:9835/dang-nhap"
		Then I wait on element "button.pt-button.btn-login" to be visible
		And I set "tientx@danang.gov.vn" to the inputfield "input[name=Username]"
		And I set "tttp@123" to the inputfield "input[name=Password]"
		And I click on the element "button.pt-button.btn-login"
		And I pause for 5000ms

		# Go to page "THÊM MỚI LƯỢT TIẾP CÔNG DÂN"
		And I move to element "ul.menu-list > li:nth-of-type(2) > a.item-link"
		And I click on the element "ul.menu-list > li:nth-of-type(2) > ul.sub-menu > li:first-child > a.item-link"
		And I click on the button "a.btn-green"

		# Fill info "THÊM MỚI LƯỢT TIẾP CÔNG DÂN"
		And I set "Võ Trần Chí" to the inputfield "label.pt-label.wrap-autocomplete > input.pt-input"
		And I scroll to element "select[name='dropdownChonLoaiDonThu']"
		And I click on the element "select[name='dropdownChonLoaiDonThu']"
		Then I wait on element "option=Khiếu nại" to be visible
		And I select the option with the text "Khiếu nại" for element "select[name='dropdownChonLoaiDonThu']"
		And I click on the element "select[name='dropdownChonLoaiDoiTuong']"
		Then I wait on element "option=Quyết định hành chính" to be visible
		And I select the option with the text "Quyết định hành chính" for element "select[name='dropdownChonLoaiDoiTuong']"
		And I click on the element "select[name='dropdownChonLinhVucDonThu']"
		Then I wait on element "option=Tư pháp" to be visible
		And I select the option with the text "Tư pháp" for element "select[name='dropdownChonLinhVucDonThu']"
		And I set "Nội dung đơn thư hành chính" to the inputfield "[name='textareaTomTatNoiDung']"
		And I scroll to element "div.no-gutter > input.pt-input"
		And I pause for 5000ms
		# Then I choose file on the path "F:\\cucumber-boilerplate-master\donthu.xlsx" for element "input[name='file']"
		And I click on the element "[name='dropdownChonPhanLoaiDon']"
		And I select the option with the text "Đủ điền kiện xử lý" for element "[name='dropdownChonPhanLoaiDon']"
		And I click on the element "[name='dropdownChonXuLy']"
		And I select the option with the text "Tiếp nhận đơn" for element "[name='dropdownChonXuLy']"
		Then I expect that element "a=Chuyển xử lý đơn" becomes visible
		And I click on the element "a=Chuyển xử lý đơn"
		And I pause for 3000ms

		# Process "Trinh Xu Ly Don"
		When I click on the element "ul.menu-list > li:nth-of-type(3) > a.item-link"
		Then I wait on element "thead.table-header > tr > th:first-child" to be visible
		And I set "Võ Trần Chí" to the inputfield "input[name='searchKey']"
		And I click on the element "button.pt-button.btn-green.tt-search"
		Then I wait on element "a=Xử lý" to be visible
		And I click on the element "a=Xử lý"

		#And I pause for 3000ms
		When I scroll to element "h3=Thông tin xử lý"
		#And I pause for 2000ms

		And   I pause for 4000ms
		When  I click on the element "select[name='dropdownChonCanBoXuLyTruongPhong']"
		Then  I expect that element "select[name='dropdownChonCanBoXuLyTruongPhong'] option:nth-child(2)" is not selected
		When  I select the 1st option for element "select[name='dropdownChonCanBoXuLyTruongPhong']"
		Then  I expect that element "select[name='dropdownChonCanBoXuLyTruongPhong'] option:nth-child(2)" is selected


		When I click on the element "select[name=dropdownChonCanBoXuLyTruongPhong]"
		And I select the option with the text "Lãnh đạo ban tiếp dân" for element "[name='dropdownChonCanBoXuLyTruongPhong']"
		And I click on the button "button.pt-button.btn-action.btn-move.btn-green.right"
		Then I wait on element "input[name='searchKey']" to be visible
		And I set "Võ Trần Chí" to the inputfield "input[name='searchKey']"
		And I click on the button "button.pt-button.btn-green.tt-search"
		Then I expect that element "tbody.table-body > tr > td" is visible

		# Logout
		Then I wait on element "span.user-name" to be visible
		And I move to element "span.user-name"
		And I click on the element "div.item > a"

	Scenario: Login and process as Lanh Dao Ban Tiep Dan
		# TC002

		# Login
		When I open the url "http://test.thanhtratp.greenglobal.vn:9835/dang-nhap"
		Then I wait on element "button.pt-button.btn-login" to be visible
		And I set "lanhdaobtd@danang.gov.vn" to the inputfield "input[name=Username]"
		And I set "tttp@123" to the inputfield "input[name=Password]"
		And I click on the element "button.pt-button.btn-login"
		And I pause for 5000ms

		# Process Xu Ly Don
		When I click on the element "ul.menu-list > li:nth-of-type(2) > a.item-link"
		And I set "Võ Trần Chí" to the inputfield "input[name='searchKey']"
		Then I wait on element "button.pt-button.btn-green.tt-search" to be visible
		And I click on the element "button.pt-button.btn-green.tt-search"
		Then I wait on element "a=Xử lý" to be visible
		And I click on the element "a=Xử lý"

		Then I wait on element "[name='dropdownTruongPhongChonCanBoXuLy']" to be visible
		And I scroll to element "[name='dropdownTruongPhongChonCanBoXuLy']"
		And I select the option with the text "Trần Xuân Tiên" for element "[name='dropdownTruongPhongChonCanBoXuLy']"
		And I click on the button "button.pt-button.btn-action.btn-move.btn-green.right"
		Then I wait on element "input[name='searchKey']" to be visible
		And I set "Võ Trần Chí" to the inputfield "input[name='searchKey']"
		And I click on the element "button.pt-button.btn-green.tt-search"
		Then I wait on element "tbody.table-body > tr > td" to be visible

		# Logout
		Then I wait on element "span.user-name" to be visible
		And I move to element "span.user-name"
		And I click on the element "div.item > a"

	Scenario: Login and process the job from Lanh Dao Ban Tiep Dan
		# TC003

		# Login
		When I open the url "http://test.thanhtratp.greenglobal.vn:9835/dang-nhap"
		Then I wait on element "button.pt-button.btn-login" to be visible
		And I set "tientx@danang.gov.vn" to the inputfield "input[name=Username]"
		And I set "tttp@123" to the inputfield "input[name=Password]"
		And I click on the element "button.pt-button.btn-login"
		And I pause for 5000ms

		# Process the job from Lanh Dao Ban Tiep Dan
		And I click on the element "ul.menu-list > li:nth-of-type(3) > a.item-link"
		And I set "Võ Trần Chí" to the inputfield "input[name='searchKey']"
		And I pause for 2000ms
		And I click on the element "button.pt-button.btn-green.tt-search"
		And I pause for 2000ms
		And I click on the element "a=Xử lý"

		And I pause for 2000ms
		And I move to element "[name='dropdownChonHuongXuLyTheoDon']"
		And I click on the element "[name='dropdownChonHuongXuLyTheoDon']"
		And I pause for 1000ms
		And I select the option with the text "Thụ lý" for element "[name='dropdownChonHuongXuLyTheoDon']"
		And I click on the element "[name='dropdownChonNhomThamQuyenGiaiQuyet']"
		And I pause for 1000ms
		And I select the option with the text "Tư pháp" for element "[name='dropdownChonNhomThamQuyenGiaiQuyet']"
		And I click on the element "[name='dropdownChonTrangThaiTTXM']"
		And I pause for 3000ms
		And I select the option with the text "Tự thẩm tra xác minh" for element "[name='dropdownChonTrangThaiTTXM']"
		And I move to element "td.required-attach.input-attach > div.no-gutter > input.pt-input"
		And I pause for 1000ms
		And I click on the element ".itt-delete"
		And I pause for 6000ms
		# Then I choose file on the path "F:\\cucumber-boilerplate-master\donthu.xlsx" for element "input[name='file]"
		And I click on the element "button.pt-button.btn-action.btn-move.btn-green.right"
		Then I wait on element "a.btn-green" to be visible

		And I click on the element "a.btn-green"

		Then I wait on element "input[name='searchKey']" to be visible
		And I set "Võ Trần Chí" to the inputfield "input[name='searchKey']"
		And I click on the element "button.pt-button.btn-green.tt-search"
		Then I expect that element "tbody.table-body > tr > td" is visible

		# Logout
		Then I wait on element "span.user-name" to be visible
		And I move to element "span.user-name"
		And I click on the element "div.item > a"

	Scenario: Login the role who assigned from Chuyen Vien XLD and process the task
		# TC004

		# Login
		When I open the url "http://test.thanhtratp.greenglobal.vn:9835/dang-nhap"
		Then I wait on element "button.pt-button.btn-login" to be visible
		And I set "tientx@danang.gov.vn" to the inputfield "input[name=Username]"
		And I set "tttp@123" to the inputfield "input[name=Password]"
		And I click on the element "button.pt-button.btn-login"
		And I pause for 5000ms

		# Process Giai Quyet Don
		And I click on the element "ul.menu-list > li:nth-of-type(4) > a.item-link"
		And I set "Võ Trần Chí" to the inputfield "input[name='searchKey']"
		Then I wait on element "button.pt-button.btn-green.tt-search" to be visible
		And I click on the element "button.pt-button.btn-green.tt-search"
		Then I wait on element "a=Xử lý" to be visible
		And I click on the element "a=Xử lý"
		And I pause for 2000ms
		And I scroll to element "[name='dropdownChonKetLuanNoiDungGiaoTTXM']"
		And I click on the element "[name='dropdownChonKetLuanNoiDungGiaoTTXM']"
		And I select the option with the text "Đúng toàn bộ" for element "[name='dropdownChonKetLuanNoiDungGiaoTTXM']"
		And I pause for 4000ms
		# And I choose file on the path "F:\\cucumber-boilerplate-master\donthu.xlsx" for element "div.no-gutter > div:nth-of-type(2) > section.wrap-block.row-center > div.wrap-big-line.white-table > div.table-container > div.wrapper-table > table.table-content > tbody.table-body > tr.tr-middle-content.attach-file-rows > td:nth-of-type(6) > div.wrap-link-todo.link-attach > div.upload_file_content > input.upload"
		And I click on the element "div.row > div > div > select"
		And I select the option with the text "Đã có quyết định giải quyết" for element "div.row > div > div > select"
		Then I wait on element "a.btn-green" to be visible
		And I click on the element "a.btn-green"
		Then I wait on element "div.row > div:nth-of-type(1) > div:nth-of-type(3) > div:first-child > h2" to be visible
		And I scroll to element "div.no-gutter > div:nth-of-type(3) > div:nth-of-type(4) > section.wrap-block.row-center > div.wrap-big-line.white-table > div.table-container > div.wrapper-table > table.table-content > tbody.table-body > tr.tr-middle-content.attach-file-rows > td:nth-of-type(6) > div.wrap-link-todo.link-attach > div.upload_file_content > input.upload"
		And I pause for 5000ms
		# And I choose file on the path "F:\\cucumber-boilerplate-master\donthu.xlsx" for element "div.no-gutter > div:nth-of-type(3) > div:nth-of-type(4) > section.wrap-block.row-center > div.wrap-big-line.white-table > div.table-container > div.wrapper-table > table.table-content > tbody.table-body > tr.tr-middle-content.attach-file-rows > td:nth-of-type(6) > div.wrap-link-todo.link-attach > div.upload_file_content > input.upload"
		Then I expect that element "a.btn-action.btn-complete.action-todo" is visible
		And I move to element "a.btn-action.btn-complete.action-todo"
		And I click on the element "a.btn-action.btn-complete.action-todo"
		And I pause for 2000ms
		And I click on the element "a.btn-green"

		# Check Ho So available on tab Cong Viec Da Giai Quyet
		Then I wait on element "div.radio-gender > label:nth-of-type(2)" to be visible
		And I click on the element "div.radio-gender > label:nth-of-type(2)"
		And I pause for 1000ms
		And I set "Võ Trần Chí" to the inputfield "input[name='searchKey']"
		Then I wait on element "button.pt-button.btn-green.tt-search" to be visible
		And I click on the element "button.pt-button.btn-green.tt-search"
		Then I expect that element "tbody.table-body > tr > td" is not visible

		# Logout
		And I move to element "span.user-name"
		And I click on the element "div.item > a"
		And I pause for 3000ms

		# Done and Closed
