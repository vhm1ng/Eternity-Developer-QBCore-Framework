local Translations = {
    error = {
        no_people_nearby = "Không có người chơi gần đó",
        no_vehicle_found = "Không tìm thấy xe",
        extra_deactivated = "Thêm %{extra} đã bị vô hiệu hoá",
        extra_not_present = "Thêm %{extra} không có trên xe này",
        not_driver = "Bạn không sở hữu phương tiện này",
        vehicle_driving_fast = "Bạn đang đi quá nhanh",
        seat_occupied = "Ghế này đã có người ngồi",
        race_harness_on = "Bạn đã thắt dây an toàn, không thể đổi chỗ",
        obj_not_found = "Không thể tạo đối tượng được yêu cầu",
        not_near_ambulance = "Bạn không ở gần xe cứu thương",
        far_away = "Bạn ở quá xa",
        stretcher_in_use = "Cáng này đã được sử dụng",
        not_kidnapped = "Bạn đã không bắt cóc người này",
        trunk_closed = "Cốp đã đóng lại",
        cant_enter_trunk = "Bạn không thể chui vào cốp",
        already_in_trunk = "Bạn đã ở trong cốp xe",
        someone_in_trunk = "Ai đó đã ở trong cốp xe"
    },
    progress = {
        flipping_car = "Đang lật xe.."
    },
    success = {
        extra_activated = "Thêm %{extra} đã được kích hoạt",
        entered_trunk = "Bạn đang ở trong cốp xe"
    },
    info = {
        no_variants = "Dường như không có bất kỳ biến thể nào cho việc này",
        wrong_ped = "Mô hình PED này không cho phép tùy chọn này",
        nothing_to_remove = "Bạn dường như không có bất cứ điều gì để loại bỏ",
        already_wearing = "Bạn đã mặc nó",
        switched_seats = "Bây giờ bạn đang ở trên %{seat}"
    },
    general = {
        command_description = "Mở menu F1",
        push_stretcher_button = "[E] - Đẩy cáng",
        stop_pushing_stretcher_button = "~g~E~w~ - Ngừng đẩy",
        lay_stretcher_button = "[G] - Nằm trên cáng",
        push_position_drawtext = "Đẩy ở đây",
        get_off_stretcher_button = "[G] - Ra khỏi cáng",
        get_out_trunk_button = "[E] Ra khỏi cốp",
        close_trunk_button = "[G] Đóng cốp",
        open_trunk_button = "[G] Mở cốp",
        getintrunk_command_desc = "Vào cốp",
        putintrunk_command_desc = "Bỏ người khác vào cốp"
    },
    options = {
        emergency_button = "Nút khẩn cấp",
        driver_seat = "Ghế tài",
        passenger_seat = "Ghế phụ",
        other_seats = "Chỗ khác",
        rear_left_seat = "Ghế sau bên trái",
        rear_right_seat = "Ghế sau bên phải"
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
