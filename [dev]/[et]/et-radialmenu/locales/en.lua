local Translations = {
    error = {
        no_people_nearby = "Không có người chơi gần đó",
        no_vehicle_found = "Không tìm thấy xe",
        extra_deactivated = "Thêm %{extra} đã bị hủy kích hoạt",
        extra_not_present = "Thêm %{extra} không có trên xe này",
        not_driver = "Bạn không phải là người điều khiển chiếc xe",
        vehicle_driving_fast = "Xe này đang đi quá nhanh",
        seat_occupied = "Ghế này đã có người ngồi",
        race_harness_on = "Bạn không thể chuyển chỗ khi thắt dây an toàn",
        obj_not_found = "Không thể tạo đối tượng được yêu cầu",
        not_near_ambulance = "Bạn không ở gần xe cứu thương",
        far_away = "Bạn ở quá xa",
        stretcher_in_use = "Cáng này đã được sử dụng",
        not_kidnapped = "Bạn không bắt cóc người này",
        trunk_closed = "Cốp đã được đóng",
        cant_enter_trunk = "Bạn không thể chui vào cốp",
        already_in_trunk = "Bạn đã ở trong cốp",
        someone_in_trunk = "Đã có người ở trong cốp"
    },
    success = {
        extra_activated = "Thêm %{extra} đã được kích hoạt",
        entered_trunk = "Bạn đang ở trong cốp xe"
    },
    info = {
        no_variants = "Dường như không có bất kỳ biến thể nào cho việc này",
        wrong_ped = "Mô hình PED này không cho phép tùy chọn này",
        nothing_to_remove = "Bạn không có gì để loại bỏ",
        already_wearing = "Bạn đã mặc nó",
        switched_seats = "Bây giờ bạn đang ở trên %{seat}"
    },
    general = {
        command_description = "Mở Menu F1",
        push_stretcher_button = "~g~E~w~ - Đẩy cáng",
        stop_pushing_stretcher_button = "~g~E~w~ - Ngừng đẩy",
        lay_stretcher_button = "~g~G~w~ - Nằm trên cáng",
        push_position_drawtext = "Đẩy ở đây",
        get_off_stretcher_button = "~g~G~w~ - Ra khỏi cáng",
        get_out_trunk_button = "[~g~E~w~] Ra khỏi cốp",
        close_trunk_button = "[~g~G~w~] Đóng cốp",
        open_trunk_button = "[~g~G~w~] Mở cốp",
        getintrunk_command_desc = "Chui vào cốp",
        putintrunk_command_desc = "Đưa người chơi vào cốp"
    },
    options = {
        emergency_button = "Nút khẩn cấp",
        driver_seat = "Ghế lái",
        passenger_seat = "Ghế phụ",
        other_seats = "Chỗ ngồi khác",
        rear_left_seat = "Phía sau ghế bên trái",
        rear_right_seat = "Phía sau ghế bên phải"
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})