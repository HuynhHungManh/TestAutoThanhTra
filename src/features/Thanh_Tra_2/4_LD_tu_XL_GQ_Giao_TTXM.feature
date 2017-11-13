Feature: 4_LD_tu_XL_GQ_Giao_TTXM
   Tiếp nhận đơn
   Lãnh đạo tự XLD
   Hướng xử lý và thụ lý
   Hướng giải quyết là Giao thẩm tra xác minh

   Background:
        Given  I have a screen that is 1366 by 768 pixels
   #@Tag
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

        Then  I expect that element "input[name='hoVaTen']" is visible
        And   I set "Huỳnh Bá Mạnh Hùng27" to the inputfield "input[name='hoVaTen']"
        Then  I expect that element "input[name='ngaySinh']" is visible
        And   I set "29/09/1995" to the inputfield "input[name='ngaySinh']"
        Then  I expect that element "input[name='ngaySinh']" is visible
        And   I set "0905491875" to the inputfield "input[name='soDienThoai']"
        Then  I expect that element "input[name='ngaySinh']" is visible
        And   I set "0905491875" to the inputfield "input[name='soDienThoai']"
        Then  I expect that element "label=Nam" is visible
        And   I click on the element "label=Nam"
        Then  I expect that element "input[name='soCMND']" is visible
        And   I set "2014254621" to the inputfield "input[name='soCMND']"
        Then  I expect that element "input[name='ngayCap']" is visible
        And   I set "20/02/2012" to the inputfield "input[name='ngayCap']"
        Then  I expect that element "select[name='noiCapCMND']" is visible
        When  I click on the element "select[name='noiCapCMND']"
        Then  I wait on element "option=Công an Đà Nẵng" to be visible
        When  I click on the element "option=Công an Đà Nẵng"
        Then  I expect that element "select[name='quocTich']" is visible
        When  I click on the element "select[name='quocTich']"
        Then  I wait on element "option=Việt Nam" to be visible
        When  I click on the element "option=Việt Nam"
        Then  I expect that element "select[name='tinhThanh']" is visible
        When  I click on the element "select[name='tinhThanh']"
        Then  I wait on element "option=thành phố Đà Nẵng" to be visible
        When  I click on the element "option=thành phố Đà Nẵng"
        Then  I expect that element "select[name='quanHuyen']" is visible
        When  I click on the element "select[name='quanHuyen']"
        Then  I wait on element "option=quận Thanh Khê" to be visible
        When  I click on the element "option=quận Thanh Khê"
        Then  I expect that element "select[name='phuongXa']" is visible
        When  I click on the element "select[name='phuongXa']"
        Then  I wait on element "option=phường Thanh Khê Đông" to be visible
        When  I click on the element "option=phường Thanh Khê Đông"
        Then  I expect that element "select[name='toThon']" is visible
        When  I click on the element "select[name='toThon']"
        Then  I wait on element "option=Tổ 01" to be visible
        When  I click on the element "option=Tổ 01"
        Then  I expect that element "input[name='diaChi']" is visible
        And   I set "932/Huynh Ngoc hue" to the inputfield "input[name='diaChi']"

        #Then  I expect that element ".search-autocomplete" is visible
        #When  I click on the element ".search-autocomplete"
        #And   I pause for 2000ms
        #Then  I expect that element ".pt-overlay-backdrop" is visible
        #And   I expect that element "h5=Danh sách kết quả tìm kiếm" is visible
        #When  I pause for 3000ms
        #And   I expect that element "a=Lê Văn Quý" is visible
        #When  I click on the element "a=Lê Văn Quý"
        #And   I pause for 2000ms
        #Then  I expect that element "h5=Kết quả tìm kiếm" is visible
        #When  I click on the element "span=Lấy thông tin người đứng đơn"
        #Then  I wait on element "h3=Thông tin đơn/vụ việc" to be visible

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
        #When  I set "Khiếu nại 5" to the inputfield "textarea[name='textareaTomTatNoiDung']"
        When  I set "Khiếu nại về việc cấp đất ban hành cho nông dân" to the inputfield "textarea[name='textareaTomTatNoiDung']"
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
        Then  I expect that element "input[name='searchKey']" is visible
        When  I set "Huỳnh Bá Mạnh Hùng27" to the inputfield "input[name='searchKey']"
        And   I press "Enter"
        And   I pause for 2000ms
        And   I wait on element "a=Xử lý" to be visible
        And   I click on the element "a=Xử lý"


        #Then  I wait on element "li=Lê Văn Quý" to be visible
        #And   I wait on element "a=Xử lý" to be visible
        And  I pause for 2000ms
        #And   I scroll to element "div=Khiếu nại 5"
        #When  I click on the element "div=Khiếu nại 5"
        Then  I expect that element "h2=Chi tiết đơn/ vụ việc" is visible
        When  I pause for 1000ms
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

   #@Tag
   Scenario: Lãnh Đạo ban tiếp dân

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
        Then  I expect that element "label=CÔNG VIỆC ĐÃ XỬ LÝ" is visible
        When  I click on the element "label=CÔNG VIỆC ĐÃ XỬ LÝ"

        #Then  I expect that element "a[href='/giai-quyet-don']" is visible
        #When  I click on the element "a[href='/giai-quyet-don']"
        And   I pause for 2000ms
        And   I click on the element "a=Tự xử lý"
        Then  I wait on element "h2=Chi tiết đơn/ vụ việc" to be visible
        When  I pause for 1000ms
        And   I scroll to element "h3=Thông tin xử lý"

        Then  I expect that element "select[name='dropdownChonHuongXuLyTheoDon']" is visible
        When  I click on the element "select[name='dropdownChonHuongXuLyTheoDon']"
        Then  I wait on element "option=Thụ lý" to be visible
        When  I click on the element "option=Thụ lý"
        Then  I expect that element "select[name='dropdownChonNhomThamQuyenGiaiQuyet']" is visible
        When  I click on the element "select[name='dropdownChonNhomThamQuyenGiaiQuyet']"
        Then  I wait on element "option=Hành chính" to be visible
        When  I click on the element "option=Hành chính"

        Then  I expect that element "select[name='dropdownChonTrangThaiTTXM']" is visible
        When  I click on the element "select[name='dropdownChonTrangThaiTTXM']"
        Then  I wait on element "option=Giao đơn vị khác TTXM" to be visible
        When  I click on the element "option=Giao đơn vị khác TTXM"

        Then  I expect that element "select[name='dropdownChonDonViTTXM']" is visible
        When  I click on the element "select[name='dropdownChonDonViTTXM']"
        Then  I wait on element "option=UBND quận Thanh Khê" to be visible
        When  I click on the element "option=UBND quận Thanh Khê"

        Then  I expect that element "textarea[name='textareaYKienCanBoXuLyDon']" is visible
        When  I set "Xử lý đơn của cán bộ Lê Văn Quý" to the inputfield "textarea[name='textareaYKienCanBoXuLyDon']"
        And   I pause for 2000ms
        And   I scroll to element "footer"

        Then  I expect that element "input[name='soQuyetDinh0']" is visible
        When  I set "32" to the inputfield "input[name='soQuyetDinh0']"
        Then  I expect that element "input[name='ngayQuyetDinh0']" is visible
        When  I set "29/12/2017" to the inputfield "input[name='ngayQuyetDinh0']"
        #When  I click on the element "input[name='ngayQuyetDinh0']"
        #Then  I wait on element "td[data-value='14']" to be visible
        #When  I click on the element "td[data-value='14']"
        And   I click on the element "th=Tài liệu đính kèm"
        #Then  I expect that element ".upload:nth-child(1)" is visible
        And   I choose file on the path "/home/manhhung/image4.png" with element "input[type='file']:nth-child(1n)"


        Then  I expect that element "input[name='soQuyetDinh1']" is visible
        When  I set "32" to the inputfield "input[name='soQuyetDinh1']"
        Then  I expect that element "input[name='ngayQuyetDinh1']" is visible
        When  I set "29/12/2017" to the inputfield "input[name='ngayQuyetDinh1']"
        #When  I click on the element "input[name='ngayQuyetDinh1']"
        #Then  I wait on element "td[data-value='20']" to be visible
        #When  I click on the element "td[data-value='20']"
        #And   I click on the element "th=Tài liệu đính kèm"
        #Then  I expect that element ".upload:nth-child(2)" is visible
        #And   I choose file on the path "/home/manhhung/image4.png" with element "input[type='file']:nth-child(2n)"

        Then  I expect that element "input[name='soQuyetDinh2']" is visible
        When  I set "32" to the inputfield "input[name='soQuyetDinh2']"
        Then  I expect that element "input[name='ngayQuyetDinh2']" is visible
        When  I set "29/12/2017" to the inputfield "input[name='ngayQuyetDinh2']"

        Then  I expect that element "span=Chuyến đơn vị thẩm tra xác minh" is visible
        When  I click on the element "span=Chuyến đơn vị thẩm tra xác minh"

        Then  I wait on element ".pt-dialog-header" to be visible
        Then  I expect that element "h5=Xác nhận" is visible
        Then  I expect that element "span=Đồng ý" is visible
        When  I click on the element "span=Đồng ý"
        And   I pause for 2000ms

        When  I scroll to element ".header"
        Then  I expect that element "span[class='user-name']" is visible
        When  I move to element "span[class='user-name']"
        Then  I expect that element "a=Đăng xuất" is visible
        When  I click on the element "a=Đăng xuất"

  #@Tag
  Scenario: Chuyên viên XLD kiểm tra đơn tồn tại ở tab Công việc đang xử lý

        Given I open the url "http://test.thanhtratp.greenglobal.vn:9835/"
        And   I pause for 1000ms
        When  I set "tientx@danang.gov.vn" to the inputfield "input[name='Username']"
        And   I set "tttp@123" to the inputfield "input[name='Password']"
        And   I pause for 2000ms
        And   I click on the element "button=Đăng nhập"

        Then  I wait on element "nav" to be visible
        And   I expect that element "a=Xử lý đơn" is visible
        When  I click on the element "a=Xử lý đơn"
        Then  I expect that the path is "/xu-ly-don"
        When  I pause for 2000ms
        Then  I wait on element "input[name='searchKey']" to be visible
        When  I set "Huỳnh Bá Mạnh Hùng27" to the inputfield "input[name='searchKey']"
        And   I press "Enter"
        And   I pause for 2000ms
        Then  I wait on element "li=Huỳnh Bá Mạnh Hùng27" to be visible
        And   I expect that element "li=Huỳnh Bá Mạnh Hùng27" does exist

        When  I scroll to element ".header"
        Then  I expect that element "span[class='user-name']" is visible
        When  I move to element "span[class='user-name']"
        Then  I expect that element "a=Đăng xuất" is visible
        When  I click on the element "a=Đăng xuất"

  #@Tag
  Scenario: Chuyên viên XLD kiểm tra đơn tồn tại ở tab Công việc đang xử lý

        Given I open the url "http://test.thanhtratp.greenglobal.vn:9835/"
        And   I pause for 1000ms
        When  I set "thuongbth@danang.gov.vn" to the inputfield "input[name='Username']"
        And   I set "tttp@123" to the inputfield "input[name='Password']"
        And   I pause for 2000ms
        And   I click on the element "button=Đăng nhập"

        Then  I wait on element "nav" to be visible
        And   I expect that element "a=Xử lý đơn" is visible
        When  I click on the element "a=Xử lý đơn"
        Then  I expect that the path is "/xu-ly-don"

        When  I pause for 2000ms
        Then  I wait on element "a=Xử lý" to be visible
        When  I click on the element "a=Xử lý"

        Then  I wait on element "h2=Chi tiết đơn/ vụ việc" to be visible
        When  I pause for 2000ms
        And   I scroll to element "h3=Thông tin giải quyết"
        Then  I expect that element "select[name='chonBanlanhDaoTTXM']" is visible
        When  I click on the element "select[name='chonBanlanhDaoTTXM']"
        Then  I wait on element "option=Trần Thị Thu Huyền" to be visible
        When  I click on the element "option=Trần Thị Thu Huyền"
        Then  I expect that element "textarea[name='textareaBanLanhDaoTTXM']" is visible
        When  I set "Trình lên ban lãnh đạo Trần Thị Thu Huyền" to the inputfield "textarea[name='textareaBanLanhDaoTTXM']"
        And   I scroll to element "footer"
        Then  I expect that element "span=Trình" is visible
        When  I click on the element "span=Trình"
        And   I pause for 2000ms

        When  I scroll to element ".header"
        Then  I expect that element "span[class='user-name']" is visible
        When  I move to element "span[class='user-name']"
        Then  I expect that element "a=Đăng xuất" is visible
        When  I click on the element "a=Đăng xuất"

  #@Tag
  Scenario: Lãnh Đạo tại đơn vị được giao TTXM giao việc Phòng Ban

        Given I open the url "http://test.thanhtratp.greenglobal.vn:9835/"
        And   I pause for 1000ms
        When  I set "huyenttt@danang.gov.vn" to the inputfield "input[name='Username']"
        And   I set "tttp@123" to the inputfield "input[name='Password']"
        And   I pause for 2000ms
        And   I click on the element "button=Đăng nhập"

        Then  I wait on element "nav" to be visible
        And   I expect that element "a=Xử lý đơn" is visible
        When  I click on the element "a=Xử lý đơn"
        Then  I expect that the path is "/xu-ly-don"

        When  I pause for 2000ms
        Then  I wait on element "a=Xử lý" to be visible
        When  I click on the element "a=Xử lý"

        Then  I wait on element "h2=Chi tiết đơn/ vụ việc" to be visible
        When  I pause for 2000ms
        And   I scroll to element "h3=Thông tin giải quyết"
        Then  I expect that element "select[name='dropdownHuongXuLy']" is visible
        When  I click on the element "select[name='dropdownHuongXuLy']"
        Then  I wait on element "option=Giao việc trưởng phòng" to be visible
        When  I click on the element "option=Giao việc trưởng phòng"

        Then  I expect that element "select[name='dropdownChonPhongBanThuocCoQuan']" is visible
        When  I click on the element "select[name='dropdownChonPhongBanThuocCoQuan']"
        Then  I wait on element "option=Phòng giải quyết đơn" to be visible
        When  I click on the element "option=Phòng giải quyết đơn"

        Then  I expect that element "select[name='dropdownChonCanBoXuLyTruongPhong']" is visible
        When  I click on the element "select[name='dropdownChonCanBoXuLyTruongPhong']"
        Then  I wait on element "option=Đỗ Thị Trang Thương" to be visible
        When  I click on the element "option=Đỗ Thị Trang Thương"

        Then  I expect that element "textarea[name='textareaYKienLanhDao']" is visible
        When  I set "Giao việc cho trưởng phòng Đỗ Thị Trang Thương" to the inputfield "textarea[name='textareaYKienLanhDao']"
        And   I scroll to element "footer"
        Then  I expect that element "span=Giao việc" is visible
        When  I click on the element "span=Giao việc"
        And   I pause for 2000ms

        When  I scroll to element ".header"
        Then  I expect that element "span[class='user-name']" is visible
        When  I move to element "span[class='user-name']"
        Then  I expect that element "a=Đăng xuất" is visible
        When  I click on the element "a=Đăng xuất"


  #@Tag
  Scenario: Lãnh Đạo tại đơn vị được giao TTXM giao việc Phòng Ban

        Given I open the url "http://test.thanhtratp.greenglobal.vn:9835/"
        And   I pause for 1000ms
        When  I set "thuongdtt@danang.gov.vn" to the inputfield "input[name='Username']"
        And   I set "tttp@123" to the inputfield "input[name='Password']"
        And   I pause for 2000ms
        And   I click on the element "button=Đăng nhập"

        Then  I wait on element "nav" to be visible
        And   I expect that element "a=Giải quyết đơn" is visible
        When  I click on the element "a=Giải quyết đơn"
        Then  I expect that the path is "/giai-quyet-don"

        When  I pause for 2000ms
        Then  I wait on element "a=Xử lý" to be visible
        When  I click on the element "a=Xử lý"

        Then  I wait on element "h2=Thông tin giải quyết đơn/vụ việc" to be visible
        When  I pause for 2000ms
        And   I scroll to element "h2=Thông tin giải quyết"

        #Then  I expect that element "form select:nth-child(1)" is visible
        #When  I click on the element ".form-action select:nth-child(1)"
        #Then  I wait on element "option=Giao việc cán bộ" to be visible
        #When  I click on the element "option=Giao việc cán bộ"

        Then  I expect that element "select[name='dropdownChonCanBoGiaiQuyet']" is visible
        When  I click on the element "select[name='dropdownChonCanBoGiaiQuyet']"
        Then  I wait on element "option=Đinh Hải Nam" to be visible
        When  I click on the element "option=Đinh Hải Nam"

        Then  I expect that element "textarea[name='textareaChonCanBoGiaiQuyet']" is visible
        When  I set "Giao việc cho cán bộ Đinh Hải Nam" to the inputfield "textarea[name='textareaChonCanBoGiaiQuyet']"
        And   I scroll to element "footer"
        Then  I expect that element "span=Giao việc" is visible
        When  I click on the element "span=Giao việc"
        And   I pause for 2000ms

        When  I scroll to element ".header"
        Then  I expect that element "span[class='user-name']" is visible
        When  I move to element "span[class='user-name']"
        Then  I expect that element "a=Đăng xuất" is visible
        When  I click on the element "a=Đăng xuất"

  #@Tag
  Scenario: Lãnh Đạo tại đơn vị được giao TTXM giao việc Phòng Ban

        Given I open the url "http://test.thanhtratp.greenglobal.vn:9835/"
        And   I pause for 1000ms
        When  I set "namdh@danang.gov.vn" to the inputfield "input[name='Username']"
        And   I set "tttp@123" to the inputfield "input[name='Password']"
        And   I pause for 2000ms
        And   I click on the element "button=Đăng nhập"

        Then  I wait on element "nav" to be visible
        And   I expect that element "a=Giải quyết đơn" is visible
        When  I click on the element "a=Giải quyết đơn"
        Then  I expect that the path is "/giai-quyet-don"
        When  I pause for 2000ms

        Then  I wait on element "a=Xử lý" to be visible
        When  I click on the element "a=Xử lý"

        Then  I wait on element "h2=Thông tin giải quyết đơn/vụ việc" to be visible
        When  I pause for 2000ms
        And   I scroll to element "h2=Báo cáo kết quả xác minh"
        Then  I expect that element "select[name='dropdownChonKetLuanNoiDungGiaoTTXM']" is visible
        When  I click on the element "select[name='dropdownChonKetLuanNoiDungGiaoTTXM']"
        Then  I wait on element "option=Đúng toàn bộ" to be visible
        When  I click on the element "option=Đúng toàn bộ"
        Then  I expect that element "textarea[name='textareaCanBoKetLuanNoiDung']" is visible
        When  I set "Giải quyết đơn đúng toàn bộ" to the inputfield "textarea[name='textareaCanBoKetLuanNoiDung']"
        And   I scroll to element "footer"
        Then  I expect that element "input[name='soQuyetDinh0']" is visible
        When  I set "34" to the inputfield "input[name='soQuyetDinh0']"
        Then  I expect that element "input[name='ngayQuyetDinh0']" is visible
        And   I set "29/09/2017" to the inputfield "input[name='ngayQuyetDinh0']"
        And   I choose file on the path "/home/manhhung/image4.png" with element "input[type='file']"
        Then  I expect that element "span=Gửi báo cáo TTXM" is visible
        When  I click on the element "span=Gửi báo cáo TTXM"

        Then  I wait on element "h5=Xác nhận" to be visible
        And   I expect that element "span=Đồng ý" is visible
        When  I click on the element "span=Đồng ý"
        And   I pause for 2000ms

        When  I scroll to element ".header"
        Then  I expect that element "span[class='user-name']" is visible
        When  I move to element "span[class='user-name']"
        Then  I expect that element "a=Đăng xuất" is visible
        When  I click on the element "a=Đăng xuất"

  @Tag
  Scenario: Lãnh Đạo tại đơn vị được giao TTXM giao việc Phòng Ban

        Given I open the url "http://test.thanhtratp.greenglobal.vn:9835/"
        And   I pause for 1000ms
        When  I set "lanhdaobtd@danang.gov.vn" to the inputfield "input[name='Username']"
        And   I set "tttp@123" to the inputfield "input[name='Password']"
        And   I pause for 2000ms
        And   I click on the element "button=Đăng nhập"

        Then  I wait on element "nav" to be visible
        And   I expect that element "a=Giải quyết đơn" is visible
        When  I click on the element "a=Giải quyết đơn"
        Then  I expect that the path is "/giai-quyet-don"
        When  I pause for 2000ms

        Then  I wait on element "a=Xử lý" to be visible
        When  I click on the element "a=Xử lý"

        Then  I wait on element "h2=Thông tin giải quyết đơn/vụ việc" to be visible
        When  I pause for 2000ms
        When  I scroll to element "h2=Thông tin giải quyết"

        Then  I expect that element ".form-action .pt-select" is visible
        When  I click on the element ".form-action .pt-select"
        Then  I wait on element "option=Tự xử lý" to be visible
        When  I click on the element "option=Tự xử lý"

        Then  I expect that element ".form-action .pt-select:nth-child(2)" is visible
        When  I click on the element ".form-action .pt-select:nth-child(2)"
        Then  I wait on element "option=Đã có quyết định giải quyết" to be visible
        When  I click on the element "option=Đã có quyết định giải quyết"

        Then  I wait on element "h5=Xác nhận" to be visible
        And   I expect that element "span=Đồng ý" is visible
        When  I click on the element "span=Đồng ý"
        And   I pause for 2000ms

        When  I scroll to element ".itt-Them-Moi"
        Then  I expect that element "input[name='soQuyetDinh0']" is visible
        When  I set "34" to the inputfield "input[name='soQuyetDinh0']"
        Then  I expect that element "input[name='ngayQuyetDinh0']" is visible
        And   I set "29/09/2017" to the inputfield "input[name='ngayQuyetDinh0']"
        And   I choose file on the path "/home/manhhung/image4.png" with element "input[type='file']"

        And   I scroll to element "footer"
        Then  I expect that element "span=Lưu hồ sơ" is visible
        When  I click on the element "span=Lưu hồ sơ"

        Then  I wait on element "h5=Xác nhận lưu hồ sơ" to be visible
        And   I expect that element "span=Đồng ý" is visible
        When  I click on the element "span=Đồng ý"
        And   I pause for 2000ms

        When  I scroll to element ".header"
        Then  I expect that element "span[class='user-name']" is visible
        When  I move to element "span[class='user-name']"
        Then  I expect that element "a=Đăng xuất" is visible
        When  I click on the element "a=Đăng xuất"

  Scenario: Lãnh Đạo tại đơn vị được giao TTXM giao việc Phòng Ban

        Given I open the url "http://test.thanhtratp.greenglobal.vn:9835/"
        And   I pause for 1000ms
        When  I set "lanhdaobtd@danang.gov.vn" to the inputfield "input[name='Username']"
        And   I set "tttp@123" to the inputfield "input[name='Password']"
        And   I pause for 2000ms
        And   I click on the element "button=Đăng nhập"

        Then  I wait on element "nav" to be visible
        And   I expect that element "a=Giải quyết đơn" is visible
        When  I click on the element "a=Giải quyết đơn"
        Then  I expect that the path is "/giai-quyet-don"
        When  I pause for 2000ms

        Then  I wait on element "a=Xử lý" to be visible
        When  I click on the element "a=Xử lý"

        Then  I wait on element "h2=Thông tin giải quyết đơn/vụ việc" to be visible
        When  I pause for 2000ms
        When  I scroll to element "h2=Thông tin giải quyết"

        Then  I expect that element ".form-action .pt-select" is visible
        When  I click on the element ".form-action .pt-select"
        Then  I wait on element "option=Tự xử lý" to be visible
        When  I click on the element "option=Tự xử lý"

        Then  I expect that element ".form-action .pt-select:nth-child(2)" is visible
        When  I click on the element ".form-action .pt-select:nth-child(2)"
        Then  I wait on element "option=Đã có quyết định giải quyết" to be visible
        When  I click on the element "option=Đã có quyết định giải quyết"

        Then  I wait on element "h5=Xác nhận" to be visible
        And   I expect that element "span=Đồng ý" is visible
        When  I click on the element "span=Đồng ý"
        And   I pause for 2000ms

        Then  I expect that element ".form-action" is visible
        And   I set "1" to the inputfield "div.row > div:nth-of-type(2) > div:nth-of-type(2) > div:nth-of-type(1) > div > div.wrap-input-number > input.pt-input"

        When  I click on the element "label=Số vụ"
        Then  I expect that element "[name='soVuDonToCao']" is visible
        And   I set "2" to the inputfield "[name='soVuDonToCao']"

        When  I scroll to element "h3=Quyết định giải quyết khiếu nại"

        Then  I expect that element "input[name='tienPhaiThuDonToCao']" is visible
        And   I set "1" to the inputfield "input[name='tienPhaiThuDonToCao']"

        Then  I expect that element "input[name='datPhaiThuDonToCao']" is visible
        And   I set "10" to the inputfield "input[name='datPhaiThuDonToCao']"

        Then  I expect that element "input[name='tienPhaiTraDonToCao']" is visible
        And   I set "10" to the inputfield "input[name='tienPhaiTraDonToCao']"

        Then  I expect that element "input[name='datPhaiTraDonToCao']" is visible
        And   I set "30" to the inputfield "input[name='datPhaiTraDonToCao']"

        Then  I expect that element "input[name='tongSoNguoiXuLyDonToCao']" is visible
        And   I set "2" to the inputfield "input[name='tongSoNguoiXuLyDonToCao']"

        Then  I expect that element "input[name='soNguoiDaBiXuLyDonToCao']" is visible
        And   I set "1" to the inputfield "input[name='soNguoiDaBiXuLyDonToCao']"

        Then  I expect that element "input[name='inputnumberSoNguoiTraQuyenLoi']" is visible
        And   I set "2" to the inputfield "input[name='inputnumberSoNguoiTraQuyenLoi']"

        When  I scroll to element "h2=Danh sách văn bản xử lý"
        Then  I expect that element "input[name='soQuyetDinh0']" is visible
        When  I set "34" to the inputfield "input[name='soQuyetDinh0']"
        Then  I expect that element "input[name='ngayQuyetDinh0']" is visible
        And   I set "29/09/2017" to the inputfield "input[name='ngayQuyetDinh0']"
        And   I choose file on the path "/home/manhhung/image4.png" with element "input[type='file']"

        Then  I expect that element "span=Theo dõi thực hiện" is visible
        When  I click on the element "span=Theo dõi thực hiện"
        When  I pause for 1000ms
        When  I scroll to element "h2=Theo dõi thực hiện"

        Then  I expect that element "select[name='dropdownChonHinhThucTheoDoi']" is visible
        When  I click on the element "select[name='dropdownChonHinhThucTheoDoi']"
        Then  I wait on element "option=Tự theo dõi" to be visible
        When  I click on the element "option=Tự theo dõi"

        Then  I expect that element "select[name='dropdownChonKetQuaThucHien']" is visible
        When  I click on the element "select[name='dropdownChonKetQuaThucHien']"
        Then  I wait on element "option=Đã thực hiện" to be visible
        When  I click on the element "option=Đã thực hiện"

        Then  I expect that element "select[name='dropdownChonKetQuaThucHien']" is visible
        When  I click on the element "select[name='dropdownChonKetQuaThucHien']"
        Then  I wait on element "option=Đã thực hiện" to be visible
        When  I click on the element "option=Đã thực hiện"

        Then  I expect that element "input[name='tienPhaiThuTheoDoiThucHien']" is visible
        And   I set "2" to the inputfield "input[name='tienPhaiThuTheoDoiThucHien']"

        Then  I expect that element "input[name='datPhaiThuTheoDoiThucHien']" is visible
        And   I set "1" to the inputfield "input[name='datPhaiThuTheoDoiThucHien']"

        Then  I expect that element "input[name='datPhaiThuTheoDoiThucHien']" is visible
        And   I set "1" to the inputfield "input[name='datPhaiThuTheoDoiThucHien']"

        Then  I expect that element "input[name='tienDaThuTheoDoiThucHien']" is visible
        And   I set "3" to the inputfield "input[name='tienDaThuTheoDoiThucHien']"

        Then  I expect that element "input[name='datDaThuTheoDoiThucHien']" is visible
        And   I set "1" to the inputfield "input[name='datDaThuTheoDoiThucHien']"

        Then  I expect that element "input[name='tienPhaiTraTheoDoiThucHien']" is visible
        And   I set "1" to the inputfield "input[name='tienPhaiTraTheoDoiThucHien']"

        Then  I expect that element "input[name='datPhaiTraTheoDoiThucHien']" is visible
        And   I set "6" to the inputfield "input[name='datPhaiTraTheoDoiThucHien']"

        Then  I expect that element "input[name='tienDaTraTheoDoiThucHien']" is visible
        And   I set "4" to the inputfield "input[name='tienDaTraTheoDoiThucHien']"

        Then  I expect that element "input[name='datDaTraTheoDoiThucHien']" is visible
        And   I set "1" to the inputfield "input[name='datDaTraTheoDoiThucHien']"

        And   I scroll to element "footer"
        Then  I expect that element "span=Lưu hồ sơ" is visible
        When  I click on the element "span=Lưu hồ sơ"
        And   I pause for 2000ms

        When  I scroll to element ".header"
        Then  I expect that element "span[class='user-name']" is visible
        When  I move to element "span[class='user-name']"
        Then  I expect that element "a=Đăng xuất" is visible
        When  I click on the element "a=Đăng xuất"
