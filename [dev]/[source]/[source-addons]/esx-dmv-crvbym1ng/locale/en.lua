local Translations = {
    info = {
        open_shop = "[E] Mở menu thi",
        already_taking = 'Bạn đã thi rồi.',
        already_took = 'Bạn đã có bằng rồi. Hãy đến tòa thị chính để lấy lại bằng.',
        
    },
    error = {
        failed_theory = 'Bạn đã rớt lý thuyết. HUHU!',
        failed_driver = 'Bạn đã rớt thực hành. Hãy thử lại.',
        driving_fast = 'Lái xe nhanh quá. CHẬM LẠI',
        damaged_vehicle = 'Bạn đã va chạm.',
        errors = 'Errors: %{value} / %{value2}',
        error_paid = 'Bạn đã trả $ %{value}'
    },
    success = {
        take_driver = 'Bạn đang thi thực hành.',
        passed_theory = 'Bạn đã qua thi lý thuyết!',
        passed_driver = 'Bạn đã qua thi thực hành!',
        passed_theory_giveitem = 'Bạn đã đậu và có bằng. Chúc mừng!',
        passed_theory_cityhall = 'Bạn đã có đậu rồi. Hãy đến tòa thị chính để lấy bằng!',
        passed_theory_pay = 'Bạn đã trả $ %{value}',
        passed_driver_giveitem = 'Bạn đã đậu và có bằng. Chúc mừng!',
        passed_driver_cityhall = 'Bạn đã có đậu rồi. Hãy đến tòa thị chính để lấy bằng',
        passed_driver_pay = 'Bạn đã trả $ %{value}'
    },
    -- Uses for any Notify script that has a title before the message
    title = {
        take_driver = 'Thi bằng lái',
        passed = 'Đậu',
        failed = 'Rớt',
        already_taking = 'Đã thi rồi',
        already_took = 'Đã lấy bằng rồi',
        paid = 'Đã trả'
    }
}

Lang = Locale:new({phrases = Translations})