local Translations = {
    notify = {
        ["hud_settings_loaded"] = "Đã khởi chạy HUD!",
        ["hud_restart"] = "Đang khởi động lại HUD!",
        ["hud_start"] = "Đang khởi chạy HUD!",
        ["hud_command_info"] = "Lệnh này đặt lại cài đặt HUD hiện tại của bạn!",
        ["load_square_map"] = "Đang tải bản đồ hình vuông ...",
        ["loaded_square_map"] = "Bản đồ hình vuông đã tải!",
        ["load_circle_map"] = "Đang tải bản đồ vòng tròn ...",
        ["loaded_circle_map"] = "Bản đồ vòng tròn đã được tải!",
        ["cinematic_on"] = "Bật chế độ điện ảnh!",
        ["cinematic_off"] = "Tắt chế độ điện ảnh!",
        ["engine_on"] = "Khởi động xe!",
        ["engine_off"] = "Tắt xe!",
        ["low_fuel"] = "Xăng chỉ còn ít thôi!",
        ["access_denied"] = "Bạn không được ủy quyền!",
        ["stress_gain"] = "Cảm thấy stress hơn",
        ["stress_removed"] = "Cảm thấy được thư giãnn!"
    }
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})
