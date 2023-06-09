local Translations = {
    info = {
        open_shop = "[E] Mở DMV",
        already_taking = 'Bạn đang làm bài kiểm tra lái xe.',
        already_took = 'Bạn đã làm bài kiểm tra của mình! Đến Tòa thị chính để mua giấy phép của bạn.',
        
    },
    error = {
        failed_theory = 'Bạn đã thất bại trong bài kiểm tra của mình!',
        failed_driver = 'Bạn đã trượt bài kiểm tra lái xe, vui lòng thử lại.',
        driving_fast = 'Bạn đang lái xe quá nhanh. Chậm lại',
        damaged_vehicle = 'Bạn đã làm hỏng xe',
        errors = 'Các lỗi: %{value} / %{value2}',
        error_paid = 'Bạn đã trả $ %{value}'
    },
    success = {
        take_driver = 'Bạn đang làm bài kiểm tra lái xe.',
        passed_theory = 'Bạn đã vượt qua bài kiểm tra của mình!',
        passed_driver = 'Bạn đã vượt qua bài kiểm tra lái xe!',
        passed_theory_giveitem = 'Bạn đã vượt qua và nhận được giấy phép của bạn. Xin chúc mừng!',
        passed_theory_cityhall = 'Bạn đã vượt qua bài kiểm tra. Đến tòa thị chính để xin giấy phép. Xin chúc mừng!',
        passed_theory_pay = 'Bạn đã trả $ %{value}',
        passed_driver_giveitem = 'Bạn đã vượt qua và có bằng lái xe của bạn. Xin chúc mừng!',
        passed_driver_cityhall = 'Bạn đã đậu! Đến tòa thị chính và lấy bằng lái xe của bạn.',
        passed_driver_pay = 'Bạn đã trả $ %{value}'
    },
    -- Uses for any Notify script that has a title before the message
    title = {
        take_driver = 'Làm bài kiểm tra lái xe',
        passed = 'Thành công',
        failed = 'Thất bại',
        already_taking = 'Đang tham gia',
        already_took = 'Đã bắt đầu',
        paid = 'Trả'
    }
}

Lang = Locale:new({phrases = Translations})