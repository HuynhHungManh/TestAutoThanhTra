Feature: 4_LD_tu_XL_GQ_Giao_TTXM
   Tiếp nhận đơn
   Lãnh đạo tự XLD
   Hướng xử lý và thụ lý
   Hướng giải quyết là Giao thẩm tra xác minh

   Background:
        Given  I have a screen that is 1366 by 768 pixels

   Scenario: Chuyên viên trình xử lý đơn

        Given I open the url "http://test.thanhtratp.greenglobal.vn:9835/"
        And   I pause for 1000ms
        When  I set "tientx@danang.gov.vn" to the inputfield "input[name='Username']"
        And   I set "tttp@123" to the inputfield "input[name='Password']"
        And   I pause for 2000ms
        And   I click on the element "button=Đăng nhập"

        Then  I wait on element "nav" to be visible
        When  I move to element "a=Tiếp công dân"
        And   I click on the element "a=Sổ tiếp công dân thường xuyên"
        Then  I expect that the path is "/tiep-cong-dan"
        And   I wait on element "a=Thêm mới" to be visible
        When  I click on the element "a=Thêm mới"

        Then  I expect that the path is "/tiep-cong-dan/thuong-xuyen/them-moi"
        And   I wait on element "h2=THÊM MỚI LƯỢT TIẾP CÔNG DÂN" to be visible
        When  I scroll to element "h4=NGƯỜI ĐỨNG ĐƠN"
        Then  I expect that element ".search-autocomplete" is visible
        When  I click on the element ".search-autocomplete"
        And   I pause for 2000ms
        Then  I expect that element ".pt-overlay-backdrop" is visible
        And   I expect that element "h5=Danh sách kết quả tìm kiếm" is visible
        When  I pause for 3000ms
        And   I expect that element "a=Lê Văn Quý" is visible
        When  I click on the element "a=Lê Văn Quý"
        And   I pause for 2000ms
        Then  I expect that element "h5=Kết quả tìm kiếm" is visible
        When  I click on the element "span=Lấy thông tin người đứng đơn"
        Then  I wait on element "h3=Thông tin đơn/vụ việc" to be visible
        And   I scroll to element "h3=Thông tin đơn/vụ việc"
        Then  I expect that element "select[name='dropdownChonLoaiDonThu']" is visible
        When  I click on the element "select[name='dropdownChonLoaiDonThu']"
        Then  I wait on element "option=Khiếu nại" to be visible
        When  I click on the element "option=Khiếu nại"
        Then  I wait on element "select[name='dropdownChonLoaiDoiTuong']" to be visible
        When  I click on the element "select[name='dropdownChonLoaiDoiTuong']"
        Then  I wait on element "option=Hành vi hành chính" to be visible
        When  I click on the element "option=Hành vi hành chính"
        Then  I wait on element "select[name='dropdownChonLinhVucDonThu']" to be visible
        When  I click on the element "select[name='dropdownChonLinhVucDonThu']"
        Then  I wait on element "option=Tư pháp" to be visible
        When  I click on the element "option=Tư pháp"
        Then  I expect that element "textarea[name='textareaTomTatNoiDung']" is visible
        When  I set "Khiếu nại 5" to the inputfield "textarea[name='textareaTomTatNoiDung']"
        #When  I set "Khiếu nại về việc cấp đất ban hành cho nông dân" to the inputfield "textarea[name='textareaTomTatNoiDung']"
        And   I scroll to element "h3=Danh sách tài liệu kèm theo"
        Then  I expect that element "select[name='tinhTrangTaiLieu0']" is visible
        When  I click on the element "select[name='tinhTrangTaiLieu0']"
        Then  I wait on element "option=Bản sao" to be visible
        When  I click on the element "option=Bản sao"
        Then  I expect that element "span=Tải lên tập tin" is visible
        When  I choose file on the path "/home/manhhung/image4.png" with element "input[type='file']"
        And   I scroll to element "h3=Thông tin xử lý lượt tiếp công dân"
        Then  I expect that element "select[name='dropdownChonPhanLoaiDon']" is visible
        When  I click on the element "select[name='dropdownChonPhanLoaiDon']"
        Then  I wait on element "option=Đủ điền kiện xử lý" to be visible
        When  I click on the element "option=Đủ điền kiện xử lý"
        Then  I expect that element "select[name='dropdownChonXuLy']" is visible
        When  I click on the element "select[name='dropdownChonXuLy']"
        Then  I wait on element "option=Tiếp nhận đơn" to be visible
        When  I click on the element "option=Tiếp nhận đơn"
        Then  I expect that element "textarea[name='textareaYKien']" is visible
        When  I set "Tiếp nhận đơn đủ điều kiện xử lý" to the inputfield "textarea[name='textareaYKien']"
        Then  I wait on element "span=Chuyển xử lý đơn" to be visible
        When  I click on the element "span=Chuyển xử lý đơn"
        And   I pause for 2000ms

        And   I scroll to element "nav"
        And   I click on the element "nav li:nth-child(3)"
        Then  I wait on element "li=Lê Văn Quý" to be visible
        #And   I wait on element "a=Xử lý" to be visible
        When  I pause for 3000ms
        And   I scroll to element "div=Khiếu nại 5"
        When  I click on the element "div=Khiếu nại 5"
        Then  I expect that element "h2=Chi tiết đơn/ vụ việc" is visible
        When  I pause for 2000ms
        And   I scroll to element "h3=Thông tin xử lý"
        And   I pause for 2000ms

        Then  I expect that element "select[name='dropdownChonXuLy']" is visible
        When  I click on the element "select[name='dropdownChonXuLy']"
        Then  I wait on element "option=Trình lãnh đạo" to be visible
        When  I click on the element "option=Trình lãnh đạo"

        Then  I expect that element "select[name='dropdownChonCanBoXuLyTruongPhong']" is visible
        When  I click on the element "select[name='dropdownChonCanBoXuLyTruongPhong']"
        Then  I wait on element "option=Lãnh đạo ban tiếp dân" to be visible
        When  I click on the element "option=Lãnh đạo ban tiếp dân"

        Then  I expect that element "textarea[name='textareaYKien']" is visible
        When  I set "Chuyên viên Tiến Trình Lãnh Đạo" to the inputfield "textarea[name='textareaYKien']"

        Then  I expect that element "span=Trình" is visible
        When  I click on the element "span=Trình"
        And   I pause for 2000ms

        #Then  I expect that element "select[name='dropdownChonHuongXuLyTheoDon']" is visible
        #When  I click on the element "select[name='dropdownChonHuongXuLyTheoDon']"
        #Then  I wait on element "option=Chuyển đơn" to be visible
        #When  I click on the element "option=Chuyển đơn"
        #Then  I expect that element "select[name='dropdownChonNhomThamQuyenGiaiQuyet']" is visible
        #When  I click on the element "select[name='dropdownChonNhomThamQuyenGiaiQuyet']"
        #Then  I wait on element "option=Hành chính" to be visible
        #When  I click on the element "option=Hành chính"
        #Then  I expect that element "section[class='rs-wrap-selected']" is visible
        #When  I click on the element "section[class='rs-wrap-selected']"
        #Then  I wait on element "span=UBND Thành phố Đà Nẵng" to be visible
        #When  I click on the element "span=UBND Thành phố Đà Nẵng"
        #Then  I expect that element "textarea[name='textareaYKienCanBoXuLyDon']" is visible
        #When  I set "Xử lý đơn của cán bộ Lê Văn Quý" to the inputfield "textarea[name='textareaYKienCanBoXuLyDon']"
        #Then  I expect that element "span=Chuyển đơn" is visible
        #When  I click on the element "span=Chuyển đơn"
        #And   I pause for 1000ms

        #Then  I wait on element "h5=Xác nhận" to be visible
        #And   I expect that element "p=Bạn có đồng ý chuyển đơn/vụ việc này cho UBND Thành phố Đà Nẵng giải quyết không?" is visible
        #And   I expect that element "span=Đồng ý" is visible
        #When  I click on the element "span=Đồng ý"
        #And   I pause for 1000ms

        When  I scroll to element ".header"
        Then  I expect that element "span[class='user-name']" is visible
        When  I move to element "span[class='user-name']"
        Then  I expect that element "a=Đăng xuất" is visible
        When  I click on the element "a=Đăng xuất"

   @Tag
   Scenario: Chuyên viên trình xử lý đơn 123

        Given I open the url "http://test.thanhtratp.greenglobal.vn:9835/"
        And   I pause for 1000ms
        When  I set "lanhdaobtd@danang.gov.vn" to the inputfield "input[name='Username']"
        And   I set "tttp@123" to the inputfield "input[name='Password']"
        And   I pause for 2000ms
        And   I click on the element "button=Đăng nhập"

        Then  I wait on element "nav" to be visible
        When  I click on the element "a[href='/xu-ly-don']"
        Then  I expect that the path is "/xu-ly-don"
        When  I pause for 3000ms
        And   I click on the element "a=Xử lý"

        Then  I wait on element "h2=Chi tiết đơn/ vụ việc" to be visible
        When  I pause for 1000ms
        When  I scroll to element "h3=Thông tin xử lý"
        Then  I expect that element "select[name='dropdownTruongPhongChonCanBoXuLy']" is visible
        When  I click on the element "select[name='dropdownTruongPhongChonCanBoXuLy']"
        Then  I wait on element "option=Trần Xuân Tiên" to be visible
        When  I click on the element "option=Trần Xuân Tiên"
        Then  I expect that element "textarea[name='textareaYKienTruongPhong']" is visible
        When  I set "Giao việc cho cán bộ Trần Xuân Tiến" to the inputfield "textarea[name='textareaYKienTruongPhong']"
        Then  I expect that element "span=Giao việc" is visible
        When  I click on the element "span=Giao việc"
        And   I pause for 2000ms

        When  I scroll to element "nav"
        #Then  I expect that element "a[href='/giai-quyet-don']" is visible
        #When  I click on the element "a[href='/giai-quyet-don']"
        And   I pause for 2000ms
        And   I click on the element "a=Tự xử lý"
        Then  I wait on element "h2=Chi tiết đơn/ vụ việc" to be visible
        When  I scroll to element "h3=Thông tin xử lý"

        Then  I expect that element "select[name='dropdownChonHuongXuLyTheoDon']" is visible
        When  I click on the element "select[name='dropdownChonHuongXuLyTheoDon']"
        Then  I wait on element "option=Chuyển đơn" to be visible
        When  I click on the element "option=Chuyển đơn"
        Then  I expect that element "select[name='dropdownChonNhomThamQuyenGiaiQuyet']" is visible
        When  I click on the element "select[name='dropdownChonNhomThamQuyenGiaiQuyet']"
        Then  I wait on element "option=Hành chính" to be visible
        When  I click on the element "option=Hành chính"

        Then  I expect that element "select[name='dropdownChonTrangThaiTTXM']" is visible
        When  I click on the element "select[name='dropdownChonTrangThaiTTXM']"
        Then  I wait on element "option=Tự thẩm tra xác minh" to be visible
        When  I click on the element "option=Tự thẩm tra xác minh"

        Then  I expect that element "textarea[name='textareaYKienCanBoXuLyDon']" is visible
        When  I set "Xử lý đơn của cán bộ Lê Văn Quý" to the inputfield "textarea[name='textareaYKienCanBoXuLyDon']"

        When  I scroll to element "h2=Danh sách văn bản xử lý"
        Then  I expect that element "input[name='soQuyetDinh0']" is visible
        When  I set "32" to the inputfield "input[name='soQuyetDinh0']"

        Then  I expect that element "input[name='ngayQuyetDinh0']" is visible
        When  I click on the element "input[name='ngayQuyetDinh0']"
        Then  I wait on element "td[data-value='14']" to be visible
        When  I click on the element "td[data-value='14']"
        And   I click on the element "th=Tài liệu đính kèm"
        And   I choose file on the path "/home/manhhung/image4.png" with element "input[type='file']:nth-child(1)"

        Then  I expect that element "input[name='ngayQuyetDinh1']" is visible
        When  I click on the element "input[name='ngayQuyetDinh1']"
        Then  I wait on element "td[data-value='20']" to be visible
        When  I click on the element "td[data-value='20']"
        And   I click on the element "th=Tài liệu đính kèm"
        And   I choose file on the path "/home/manhhung/image4.png" with element "input[type='file']:nth-child(1)"
