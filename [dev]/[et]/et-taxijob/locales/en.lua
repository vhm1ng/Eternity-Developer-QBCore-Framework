local Translations = {
    error = {
        ["already_mission"] = "Bạn đang có khách",
        ["not_in_taxi"] = "Bạn không có trong xe",
        ["missing_meter"] = "Xe này không có công tơ mét",
        ["no_vehicle"] = "Bạn không có trong xe",
        ["not_active_meter"] = "Công tơ mét của xe không hoạt động",
        ["no_meter_sight"] = "Không có công tơ mét",
    },
    success = {},
    info = {
        ["person_was_dropped_off"] = "Bạn đã thả người!",
        ["npc_on_gps"] = "Khách đã được định vị",
        ["go_to_location"] = "Hãy chở khách đến địa chỉ",
        ["vehicle_parking"] = "[E] Đậu xe",
        ["job_vehicles"] = "[E] Lấy xe",
        ["drop_off_npc"] = "[E] Thả khách",
        ["call_npc"] = "[E] Gọi khách",
        ["blip_name"] = "Taxi",
        ["taxi_label_1"] = "Xe taxi",
        ["no_spawn_point"] = "Không thấy địa điểm",
        ["taxi_returned"] = "Đậu xe thành công"
    },
    menu = {
        ["taxi_menu_header"] = "Xe taxi",
        ["close_menu"] = "⬅ Đóng",
        ['boss_menu'] = "Boss Menu"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
