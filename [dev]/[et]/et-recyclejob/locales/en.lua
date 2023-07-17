local Translations = {
    success = {
        you_have_been_clocked_in = "Bạn đã được bấm giờ",
    },
    text = {
        point_enter_warehouse = "[E] Nhập kho",
        enter_warehouse= "Nhập kho",
        exit_warehouse= "Thoát kho",
        point_exit_warehouse = "[E] Thoát kho",
        clock_out = "[E] Hết giờ",
        clock_in = "[E] đồng hồ trong",
        hand_in_package = "Gói trong tay",
        point_hand_in_package = "[E] Gói trong tay",
        get_package = "Nhận gói",
        point_get_package = "[E] Nhận gói",
        picking_up_the_package = "Đón gói hàng",
        unpacking_the_package = "Mở gói hàng",
    },
    error = {
        you_have_clocked_out = "Bạn đã hết giờ"
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})