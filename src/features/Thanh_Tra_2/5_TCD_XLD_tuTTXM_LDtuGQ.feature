Feature:
          - Tiếp nhận đơn
          - Lãnh đạo giao cán bộ
          - Hướng xử lý là Thụ lý
          - Hướng giải quyết là tự thẩm tra xác minh
          - Lãnh đạo tự GQĐ.
      Scenario: TC001 - Đăng nhập với role Chuyên Viên
        Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
        And I pause for 2000ms
        Then I wait on element "span=Đăng nhập" to be visible
        When I add "tientx@danang.gov.vn" to the inputfield "input[name=Username]"
        And I add "tttp@123" to the inputfield "input[name=Password]"
        And I submit the form ".login-form"
        Then I wait on element ".user-name" to be visible

      Scenario: TC002 - Thêm mới đơn thư với hướng xử lý là tiếp nhận đơn
        Given the element "a=Tiếp công dân" is visible
        When I move to element "a=Tiếp công dân"
        And I click on the element "a=Sổ tiếp công dân thường xuyên"
        Then I wait on element "span=Xuất Sổ tiếp công dân" to be visible
        And I pause for 1000ms
        When I click on the element "a=Thêm mới"
        And I pause for 1000ms
        Then I expect that element "h2=THÊM MỚI LƯỢT TIẾP CÔNG DÂN" matches the text "THÊM MỚI LƯỢT TIẾP CÔNG DÂN"
        When I scroll to element "h2=THÊM MỚI LƯỢT TIẾP CÔNG DÂN"
        And I pause for 1000ms
        And I set "02/11/2017 - 15:30" to the inputfield "div.col-input > label.pt-label > div.rdt.calendar_icon > input.form-control"
        And I pause for 1000ms
        And I select the option with the text "Cơ quan - Tổ chức" for element "[name=dropdownLoaiNguoiDungDonId]"
        And I pause for 1000ms
        And I set "Green Global" to the inputfield "div.rows > div:nth-of-type(2) > div:first-child > input.pt-input"
        And I pause for 1000ms
        And I set "31 Trần Phú" to the inputfield "div.rows > div:nth-of-type(2) > div:nth-of-type(2) > input.pt-input"
        And I pause for 1000ms
        And I set "(+84) 2363 833 666" to the inputfield "div.rows > div:nth-of-type(2) > div:nth-of-type(3) > input.pt-input"
        And I pause for 1000ms
        And I set "Hoàng Nguyên Anh Thư 6" to the inputfield "label.pt-label.wrap-autocomplete > input.pt-input"
        And I pause for 1000ms
        And I set "01/07/2013" to the inputfield "div.container-box > div:nth-of-type(3) > div:first-child > div:nth-of-type(2) > div.rows > div.input-group > label.pt-label > div.rdt.calendar_icon > input.form-control"
        And I pause for 1000ms
        And I set "0989963271" to the inputfield "div.rows > div:nth-of-type(3) > input.pt-input"
        And I pause for 1000ms
        And I click on the element "div.radio-gender.val-title-radio-group > label:nth-of-type(3) > span.pt-control-indicator"
        And I pause for 1000ms
        And I set "201573683" to the inputfield "div.rows > div:first-child > input.pt-input"
        And I pause for 1000ms
        And I set "11/03/2017" to the inputfield "div.container-box > div:nth-of-type(3) > div:first-child > div:nth-of-type(3) > div.rows > div.input-group > label.pt-label > div.rdt.calendar_icon > input.form-control"
        And I pause for 1000ms
        And I select the option with the text "Công an Đà Nẵng" for element "div.container-box > div:nth-of-type(3) > div:first-child > div:nth-of-type(3) > div.rows > div:nth-of-type(3) > div > select"
        And I pause for 1000ms
        And I select the option with the text "Việt Nam" for element "div.container-box > div:nth-of-type(3) > div:first-child > div:nth-of-type(3) > div.rows > div:nth-of-type(4) > div > select"
        And I pause for 1000ms
        And I select the option with the text "Kinh" for element "div.rows > div:nth-of-type(5) > div > select"
        And I pause for 1000ms
        And I select the option with the text "thành phố Đà Nẵng" for element "div.container-box > div:nth-of-type(3) > div:first-child > div:nth-of-type(4) > div.rows > div:first-child > div > select"
        And I pause for 1000ms
        And I select the option with the text "quận Ngũ Hành Sơn" for element "div.container-box > div:nth-of-type(3) > div:first-child > div:nth-of-type(4) > div.rows > div:nth-of-type(2) > div > select"
        And I pause for 1000ms
        And I select the option with the text "phường Mỹ An" for element "div.container-box > div:nth-of-type(3) > div:first-child > div:nth-of-type(4) > div.rows > div:nth-of-type(3) > div > select"
        And I pause for 1000ms
        And I select the option with the text "Tổ 05" for element "div.container-box > div:nth-of-type(3) > div:first-child > div:nth-of-type(4) > div.rows > div:nth-of-type(4) > div > select"
        And I pause for 1000ms
        And I set "72 Trần Khánh Dư" to the inputfield "div.rows > div:nth-of-type(5) > input.pt-input"
        And I pause for 1000ms
        And I scroll to element "h3=Thông tin đơn/vụ việc"
        And I pause for 1000ms
        And I select the option with the text "Khiếu nại" for element "[name=dropdownChonLoaiDonThu]"
        And I pause for 1000ms
        And I select the option with the text "Hành vi hành chính" for element "[name=dropdownChonLoaiDoiTuong]"
        And I pause for 1000ms
        And I select the option with the text "Hành chính" for element "[name=dropdownChonLinhVucDonThu]"
        And I pause for 1000ms
        And I select the option with the text "Lĩnh vực CT,VH,XH khác" for element "[name=dropdownChonLinhVucCap2Id]"
        And I pause for 1000ms

        And I set "Khiếu nại, tố cáo là phạm tội lợi dụng các quyền tự do dân chủ…" to the inputfield "[name=textareaTomTatNoiDung]"
        And I pause for 1000ms
        And I scroll to element "h3=Danh sách tài liệu kèm theo"
        And I pause for 1000ms
        And I select the option with the text "Bản photo" for element "[name=dropdownChonTinhTrangTaiLieu]"
        And I pause for 1000ms
        And I click on the element "[name=file]"
        And I pause for 5000ms
        And I scroll to element "h3=Thông tin xử lý lượt tiếp công dân"
        And I pause for 1000ms
        And I select the option with the text "Đủ điền kiện xử lý" for element "[name=dropdownChonPhanLoaiDon]"
        And I pause for 1000ms
        And I select the option with the text "Tiếp nhận đơn" for element "[name=dropdownChonXuLy]"
        And I pause for 1000ms
        And I set "Nên xử lý như thế này ..." to the inputfield "[name=textareaYKien]"
        And I pause for 1000ms
        And I click on the element "a=Chuyển xử lý đơn"
        And I pause for 2000ms
        Then I wait on element "span=Xuất Sổ tiếp công dân" to be visible
        And I pause for 2000ms
        And I expect that element "div.left-content > p" matches the text "SỔ TIẾP CÔNG DÂN THƯỜNG XUYÊN"
        Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
        And I pause for 2000ms
        When I move to element "span.user-name"
        And I click on the element "a=Đăng xuất"
        And I pause for 1000ms
        Then I wait on element "span=Đăng nhập" to be visible
        And I pause for 1000ms

      Scenario: TC003 - Đăng nhập với role Chuyên Viên
        Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
        And I pause for 2000ms
        Then I wait on element "span=Đăng nhập" to be visible
        When I add "tientx@danang.gov.vn" to the inputfield "input[name=Username]"
        And I add "tttp@123" to the inputfield "input[name=Password]"
        And I submit the form ".login-form"
        Then I wait on element ".user-name" to be visible

      Scenario: TC004 - Xử lý đơn thư và trình cho lãnh đạo
        Given the element "a=Xử lý đơn" is visible
        And I pause for 1000ms
        When I click on the element "a=Xử lý đơn"
        And I pause for 2000ms
        Then I wait on element "span=Xuất sổ xử lý đơn" to be visible
        And I pause for 1000ms
        When I set "Hoàng Nguyên Anh Thư 6" to the inputfield "input[name=searchKey]"
        And I pause for 1000ms
        And I click on the element "span=Tìm kiếm"
        And I pause for 5000ms
        Then I wait on element "span=Xuất sổ xử lý đơn" to be visible
        And I pause for 1000ms
        When I click on the element "a=Xử lý"
        And I pause for 2000ms
        And I wait on element "div=Chi tiết đơn/ vụ việc" to be visible
        And I pause for 1000ms
        And I scroll to element "h3=Thông tin xử lý"
        And I pause for 1000ms
        And I set "11/11/2017" to the inputfield "input.form-control"
        And I pause for 1000ms
        And I select the option with the text "Lãnh đạo ban tiếp dân" for element "[name=dropdownChonCanBoXuLyTruongPhong]"
        And I pause for 1000ms
        And I set "Nên làm như thế này ..." to the inputfield "[name=textareaYKien]"
        And I pause for 1000ms
        And I click on the element "span=Trình"
        And I pause for 2000ms
        Then I wait on element "span=Xuất sổ xử lý đơn" to be visible
        And I pause for 2000ms
        Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
        And I pause for 2000ms
        When I move to element "span.user-name"
        And I click on the element "a=Đăng xuất"
        And I pause for 1000ms
        Then I wait on element "span=Đăng nhập" to be visible
        And I pause for 1000ms

      Scenario: TC005 - Đăng nhập với role Lãnh đạo ban tiếp dân
        Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
        And I pause for 2000ms
        Then I wait on element "span=Đăng nhập" to be visible
        When I add "lanhdaobtd@danang.gov.vn" to the inputfield "input[name=Username]"
        And I add "tttp@123" to the inputfield "input[name=Password]"
        And I submit the form ".login-form"
        Then I wait on element ".user-name" to be visible

      Scenario: TC006 - Lãnh đạo giao việc cho Chuyên viên
         Given the element "a=Xử lý đơn" is visible
         When I click on the element "a=Xử lý đơn"
         And I pause for 2000ms
         Then I wait on element "span=Xuất sổ xử lý đơn"
         And I pause for 1000ms
         When I set "Hoàng Nguyên Anh Thư 6" to the inputfield "input[name=searchKey]"
         And I pause for 1000ms
         And I click on the element "span=Tìm kiếm"
         And I pause for 5000ms
         Then I wait on element "span=Xuất sổ xử lý đơn" to be visible
         And I pause for 1000ms
         When I click on the element "a=Xử lý"
         And I pause for 2000ms
         And I wait on element "div=Chi tiết đơn/ vụ việc" to be visible
         And I pause for 1000ms
         And I scroll to element "h3=Thông tin xử lý"
         And I pause for 1000ms
         And I select the option with the text "Trần Xuân Tiên" for element "[name=dropdownTruongPhongChonCanBoXuLy]"
         And I pause for 1000ms
         And I add "Xử lý như thế này ..." to the inputfield "[name=textareaYKienTruongPhong]"
         And I pause for 1000ms
         And I click on the element "span=Giao việc"
         And I pause for 2000ms
         Then I wait on element "span=Xuất sổ xử lý đơn" to be visible
         And I pause for 1000ms
         Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
         And I pause for 2000ms
         When I move to element "span.user-name"
         And I click on the element "a=Đăng xuất"
         And I pause for 1000ms
         Then I wait on element "span=Đăng nhập" to be visible
         And I pause for 1000ms

      Scenario: TC007 - Đăng nhập role chuyên viên
        Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
        And I pause for 2000ms
        Then I wait on element "span=Đăng nhập" to be visible
        When I add "tientx@danang.gov.vn" to the inputfield "input[name=Username]"
        And I add "tttp@123" to the inputfield "input[name=Password]"
        And I submit the form ".login-form"
        Then I wait on element ".user-name" to be visible

      Scenario: TC008 - Xử lý đơn thư với quy trình xử lý là tự TTXM
        Given the element "a=Xử lý đơn" is visible
        When I click on the element "a=Xử lý đơn"
        And I pause for 2000ms
        Then I wait on element "span=Xuất sổ xử lý đơn" to be visible
        And I pause for 1000ms
        When I set "Hoàng Nguyên Anh Thư 6" to the inputfield "input[name=searchKey]"
        And I pause for 1000ms
        And I click on the element "span=Tìm kiếm"
        And I pause for 5000ms
        Then I wait on element "span=Xuất sổ xử lý đơn" to be visible
        And I pause for 1000ms
        When I click on the element "a=Xử lý"
        And I pause for 2000ms
        And I wait on element "div=Chi tiết đơn/ vụ việc" to be visible
        And I pause for 1000ms
        And I scroll to element "h3=Thông tin xử lý"
        And I pause for 1000ms
        And I select the option with the text "Thụ lý" for element "[name=dropdownChonHuongXuLyTheoDon]"
        And I pause for 1000ms
        And I select the option with the text "Hành chính" for element "[name=dropdownChonNhomThamQuyenGiaiQuyet]"
        And I pause for 1000ms
        And I set "11/11/2017" to the inputfield "div > div:nth-of-type(2) > div:nth-of-type(3) > label.pt-label > div.rdt.calendar_icon > input.form-control"
        And I pause for 1000ms
        And I select the option with the text "Tự thẩm tra xác minh" for element "[name=dropdownChonTrangThaiTTXM]"
        And I pause for 1000ms
        And I add "Xử lý tự thẩm tra xác minh ..." to the inputfield "[name=textareaYKienCanBoXuLyDon]"
        And I scroll to element "h2.title-attach"
        And I pause for 1000ms
        And I add "GG0001" to the inputfield "tbody.table-body > tr:first-child > td:nth-of-type(3) > div > div.no-gutter > input.pt-input"
        And I pause for 1000ms
        And I add "11/11/2017" to the inputfield "tbody.table-body > tr:first-child > td:nth-of-type(4) > div.no-gutter > label.pt-label > div.rdt.calendar_icon > input.form-control"
        And I pause for 1000ms
        And I click on the element "tbody.table-body > tr:first-child > td:nth-of-type(6) > div.wrap-link-todo.link-attach > div.upload_file_content > input.upload"
        And I pause for 5000ms
        And I add "GG0002" to the inputfield "tbody.table-body > tr:nth-of-type(2) > td:nth-of-type(3) > div > div.no-gutter > input.pt-input"
        And I pause for 1000ms
        And I add "11/11/2017" to the inputfield "tbody.table-body > tr:nth-of-type(2) > td:nth-of-type(4) > div.no-gutter > label.pt-label > div.rdt.calendar_icon > input.form-control"
        And I pause for 1000ms
        And I click on the element "tbody.table-body > tr:nth-of-type(2) > td:nth-of-type(6) > div.wrap-link-todo.link-attach > div.upload_file_content > input.upload"
        And I pause for 5000ms
        And I click on the element "span=Chuyển giải quyết đơn"
        And I pause for 1000ms
        And I select the option with the text "Ban tiếp dân thành phố" for element "[name=dropdownChonPhongBanThuocCoQuan]"
        And I pause for 1000ms
        And I select the option with the text "Trần Xuân Tiên" for element "[name=dropdownChonCanBoXuLy]"
        And I pause for 1000ms
        And I click on the element "span=Đồng ý"
        Then I wait on element "span=Xuất sổ xử lý đơn" to be visible
        And I pause for 2000ms
        Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
        And I pause for 2000ms
        When I move to element "span.user-name"
        And I click on the element "a=Đăng xuất"
        And I pause for 1000ms
        Then I wait on element "span=Đăng nhập" to be visible
        And I pause for 1000ms

      Scenario: TC009 - Đăng nhập role Cán bộ giải quyết đơn
        Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
        And I pause for 2000ms
        Then I wait on element "span=Đăng nhập" to be visible
        When I add "tientx@danang.gov.vn" to the inputfield "input[name=Username]"
        And I add "tttp@123" to the inputfield "input[name=Password]"
        And I submit the form ".login-form"
        Then I wait on element ".user-name" to be visible

      Scenario: TC010 - Kiểm tra đơn đã được chuyển qua Công việc đang giải quyết
        Given the element "a=Giải quyết đơn" is visible
        When I click on the element "a=Giải quyết đơn"
        And I pause for 2000ms
        Then I wait on element "div.pagination-wrap" to be visible
        And I pause for 1000ms
        When I add "Hoàng Nguyên Anh Thư 6" to the inputfield "input[name=searchKey]"
        And I pause for 1000ms
        And I click on the element "span=Tìm kiếm"
        And I pause for 2000ms
        And I wait on element "a.itt-redirect" to be visible
        And I pause for 1000ms
        Then I expect that element "li=Hoàng Nguyên Anh Thư 6" is visible
        And I pause for 1000ms
        And I scroll to element "li=Hoàng Nguyên Anh Thư 6"
        And I pause for 1000ms
        Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
        And I pause for 2000ms
        When I move to element "span.user-name"
        And I click on the element "a=Đăng xuất"
        And I pause for 1000ms
        Then I wait on element "span=Đăng nhập" to be visible
        And I pause for 1000ms

      Scenario: TC011 - Đăng nhập role Lãnh đạo ban tiếp dân
        Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
        And I pause for 2000ms
        Then I wait on element "span=Đăng nhập" to be visible
        When I add "lanhdaobtd@danang.gov.vn" to the inputfield "input[name=Username]"
        And I add "tttp@123" to the inputfield "input[name=Password]"
        And I submit the form ".login-form"
        Then I wait on element ".user-name" to be visible

      Scenario: TC012 - Giải quyết đơn và lưu hồ sơ đơn thư đã giải quyết
        Given the element "a=Xử lý đơn" is visible
        When I click on the element "a=Xử lý đơn"
        And I pause for 2000ms
        And I click on the element "label=CÔNG VIỆC ĐÃ XỬ LÝ"
        And I pause for 2000ms
        Then I wait on element "span=Xuất sổ xử lý đơn" to be visible
        And I pause for 1000ms
        When I add "Hoàng Nguyên Anh Thư 6" to the inputfield "input[name=searchKey]"
        And I pause for 1000ms
        And I click on the element "span=Tìm kiếm"
        And I pause for 2000ms
        And I wait on element "a.itt-redirect" to be visible
        And I pause for 1000ms
        Then I expect that element "li=Hoàng Nguyên Anh Thư 6" is visible
        And I pause for 1000ms
        And I scroll to element "li=Hoàng Nguyên Anh Thư 6"
        And I pause for 1000ms
        When I click on the element "a=Tự xử lý"
        And I pause for 2000ms
        And I scroll to element "h2=Thông tin giải quyết"
        And I pause for 1000ms
        And I select the option with the text "Đúng toàn bộ" for element "[name=dropdownChonKetLuanNoiDungGiaoTTXM]"
        And I pause for 1000ms
        And I add "GG003" to the inputfield "div.no-gutter > div:nth-of-type(2) > section.wrap-block.row-center > div.wrap-big-line.white-table > div.table-container > div.wrapper-table > table.table-content > tbody.table-body > tr.tr-middle-content.attach-file-rows > td:nth-of-type(3) > div > div.no-gutter > input.pt-input"
        And I pause for 1000ms
        And I add "11/11/2017" to the inputfield "div.no-gutter > div:nth-of-type(2) > section.wrap-block.row-center > div.wrap-big-line.white-table > div.table-container > div.wrapper-table > table.table-content > tbody.table-body > tr.tr-middle-content.attach-file-rows > td:nth-of-type(4) > div.no-gutter > label.pt-label > div.rdt.calendar_icon > input.form-control"
        And I pause for 1000ms
        And I click on the element "div.no-gutter > div:nth-of-type(2) > section.wrap-block.row-center > div.wrap-big-line.white-table > div.table-container > div.wrapper-table > table.table-content > tbody.table-body > tr.tr-middle-content.attach-file-rows > td:nth-of-type(6) > div.wrap-link-todo.link-attach > div.upload_file_content > input.upload"
        And I pause for 5000ms
        And I select the option with the text "Đã có quyết định giải quyết" for element "div.row > div:nth-of-type(1) > div:nth-of-type(3) > div:first-child > div.row > div > div > select"
        And I pause for 1000ms
        And I click on the element "span=Đồng ý"
        And I pause for 1000ms
        And I scroll to element "h2=Quyết định giải quyết khiếu nại"
        And I pause for 1000ms
        And I add "2" to the inputfield "div.no-gutter > div:nth-of-type(1) > div > div.wrap-input-number > input.pt-input"
        And I pause for 1000ms
        And I select the option with the text "Công nhận QĐ GQ lần 1" for element "div.no-gutter > div:nth-of-type(1) > div:nth-of-type(2) > div > select"
        And I pause for 1000ms
        And I add "1" to the inputfield "div.no-gutter > div:nth-of-type(2) > div:first-child > div.wrap-input-number > input.pt-input"
        And I pause for 1000ms
        And I select the option with the text "Đúng toàn bộ" for element "div.no-gutter > div:nth-of-type(2) > div:nth-of-type(2) > div > select"
        And I pause for 1000ms
        And I add "Khiếu nại đúng." to the inputfield "div.no-gutter > div:nth-of-type(2) > div:nth-of-type(3) > input.pt-input"
        And I pause for 1000ms
        And I add "2" to the inputfield "div.no-gutter > div:nth-of-type(3) > div:first-child > div:nth-of-type(1) > input.pt-input"
        And I pause for 1000ms
        And I add "20" to the inputfield "div.no-gutter > div:nth-of-type(3) > div:first-child > div:nth-of-type(2) > input.pt-input"
        And I pause for 1000ms
        And I add "10" to the inputfield "div.no-gutter > div:nth-of-type(3) > div:nth-of-type(2) > div:nth-of-type(1) > input.pt-input"
        And I pause for 1000ms
        And I add "100" to the inputfield "div.no-gutter > div:nth-of-type(3) > div:nth-of-type(2) > div:nth-of-type(2) > input.pt-input"
        And I pause for 1000ms
        And I add "2" to the inputfield "div.no-gutter > div:nth-of-type(3) > div:nth-of-type(3) > div:nth-of-type(1) > div.wrap-input-number > input.pt-input"
        And I pause for 1000ms
        And I add "1" to the inputfield "div.no-gutter > div:nth-of-type(3) > div:nth-of-type(3) > div:nth-of-type(2) > div.wrap-input-number > input.pt-input"
        And I pause for 1000ms
        And I add "1" to the inputfield "div.no-gutter > div:nth-of-type(3) > div:nth-of-type(3) > div:nth-of-type(3) > div.wrap-input-number > input.pt-input"
        And I pause for 1000ms
        And I scroll to element "h2.title-attach"
        And I pause for 1000ms
        And I add "GG004" to the inputfield "div.no-gutter > div:nth-of-type(3) > div:nth-of-type(4) > section.wrap-block.row-center > div.wrap-big-line.white-table > div.table-container > div.wrapper-table > table.table-content > tbody.table-body > tr.tr-middle-content.attach-file-rows > td:nth-of-type(3) > div > div.no-gutter > input.pt-input"
        And I pause for 1000ms
        And I add "11/11/2017" to the inputfield "div.no-gutter > div:nth-of-type(3) > div:nth-of-type(4) > section.wrap-block.row-center > div.wrap-big-line.white-table > div.table-container > div.wrapper-table > table.table-content > tbody.table-body > tr.tr-middle-content.attach-file-rows > td:nth-of-type(4) > div.no-gutter > label.pt-label > div.rdt.calendar_icon > input.form-control"
        And I pause for 1000ms
        And I click on the element "div.no-gutter > div:nth-of-type(3) > div:nth-of-type(4) > section.wrap-block.row-center > div.wrap-big-line.white-table > div.table-container > div.wrapper-table > table.table-content > tbody.table-body > tr.tr-middle-content.attach-file-rows > td:nth-of-type(6) > div.wrap-link-todo.link-attach > div.upload_file_content > input.upload"
        And I pause for 5000ms
        And I scroll to element "span=Lưu hồ sơ"
        And I pause for 1000ms
        And I click on the element "span=Lưu hồ sơ"
        And I pause for 1000ms
        And I click on the element "span=Đồng ý"
        And I pause for 2000ms
        Given I open the site "http://test.thanhtratp.greenglobal.vn:9835/"
        And I pause for 2000ms
        When I move to element "span.user-name"
        And I click on the element "a=Đăng xuất"
        And I pause for 1000ms
        Then I wait on element "span=Đăng nhập" to be visible
        And I pause for 1000ms
