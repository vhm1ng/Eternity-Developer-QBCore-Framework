local Translations = {
    afk = {
        will_kick = 'Bạn đang AFK và sẽ bị kick sau ',
        time_seconds = ' giây!',
        time_minutes = ' phút!'
    },
    wash = {
        in_progress = "Xe đang được rửa ..",
        wash_vehicle = "[E] Rửa xe",
        wash_vehicle_target = "Rửa xe",
        dirty = "Xe không dơ",
        cancel = "Hủy rửa xe ..",
    },
    consumables = {
        eat_progress = "Đang ăn..",
        drink_progress = "Đang uống..",
        liqour_progress = "Đang uống..",
        coke_progress = "Hít hà~~~..",
        crack_progress = "Bú bú~..",
        ecstasy_progress = "Bú mạnh~",
        healing_progress = "Hồi phục",
        meth_progress = "Húp húp",
        joint_progress = "Mút mút..",
        use_parachute_progress = "Đang đeo dù..",
        pack_parachute_progress = "Đang cất dù..",
        no_parachute = "Bạn không có dù!",
        armor_full = "Bạn đã mặc giáp!",
        armor_empty = "Bạn không có giáp..",
        armor_progress = "Đang mặc giáp..",
        heavy_armor_progress = "Đang mặc giáp xịn..",
        remove_armor_progress = "Đang cời giáp xịn..",
        canceled = "Hủy..",
    },
    cruise = {
        unavailable = "Cruise control không thành công",
        activated = "Cruise: ",
        deactivated = "Cruise bị hủy",
    },
    editor = {
        started = "Bắt đầu quay!",
        save = "Lưu vid!",
        delete = "Xóa vid!",
        editor = "Later aligator!"
    },
    firework = {
        place_progress = "Đang đặt..",
        canceled = "Hủy..",
        time_left = "Pháo hoa trong ~r~"
    },
    seatbelt = {
        use_harness_progress = "Attaching Race Harness",
        remove_harness_progress = "Removing Race Harness",
        no_car = "Bạn không trong xe."
    },
    teleport = {
        teleport_default = 'Dùng thang máy'
    },
    pushcar = {
        stop_push = "[E] Ngừng đẩy"
    }


}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})