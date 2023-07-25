local Translations = {
    success = {
        you_have_been_clocked_in = "Đã bấm giờ làm việc",
    },
    text = {
        point_enter_warehouse = "[E] Vào kho",
        enter_warehouse= "Vào kho",
        exit_warehouse= "Thoát kho",
        point_exit_warehouse = "[E] Thoát kho",
        clock_out = "[E] Đừng bấm giờ",
        clock_in = "[E] Bấm đồng hố",
        hand_in_package = "Khui hàng",
        point_hand_in_package = "[E] Khui hàng",
        get_package = "Lấy hàng",
        point_get_package = "[E] Lấy hàng",
        picking_up_the_package = "Đang lấy hàng",
        unpacking_the_package = "Mở hàng",
    },
    error = {
        you_have_clocked_out = "Bạn đã hết giờ làm việc"
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})