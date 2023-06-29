local Translations = {
    error = {
        not_in_range = 'Quá xa tòa thị chính'
    },
    success = {
        recived_license = 'Bạn đã nhận được %{value} của mình với giá $50'
    },
    info = {
        bilp_text = 'Dịch vụ thành phố',
        city_services_menu = '~g~E~w~ - Menu dịch vụ thành phố',
        id_card = 'Căn Cước Công Dân',
        driver_license = 'Giấy phép lái xe',
        weaponlicense = 'Giấy phép sử dụng súng',
        new_job = 'Chúc mừng với công việc mới của bạn! (%{job})'
    },
    email = {
        mr = 'Mít tơ',
        mrs = 'Mit tơsss',
        sender = 'Thị Trấn',
        subject = 'Yêu cầu học lái xe',
        message = 'Xin chào %{gender} %{lastname}<br /><br />Chúng tôi vừa nhận được một tin nhắn rằng ai đó muốn tham gia các bài học lái xe<br />Bạn nào có nhu cầu dạy thì liên hệ:<br />Tên: <strong>%{firstname} %{lastname}</strong><br />Số điện thoại: <strong>%{phone}</strong><br/><br/>Trân trọng,<br />Thị trấn Los Santos'
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
