local Translations = {
    notify = {
        ["hud_settings_loaded"] = "Đã tải cài đặt HUD!",
        ["hud_restart"] = "HUD đang khởi động lại!",
        ["hud_start"] = "HUD hiện đã bắt đầu!",
        ["hud_command_info"] = "Lệnh này đặt lại cài đặt HUD hiện tại của bạn!",
        ["load_square_map"] = "Đang tải bản đồ hình vuông ...",
        ["loaded_square_map"] = "Bản đồ hình vuông đã tải!",
        ["load_circle_map"] = "Đang tải bản đồ vòng tròn ...",
        ["loaded_circle_map"] = "Bản đồ vòng tròn đã được tải!",
        ["cinematic_on"] = "Bật chế độ điện ảnh!",
        ["cinematic_off"] = "Tắt chế độ điện ảnh!",
        ["engine_on"] = "Động cơ khởi động!",
        ["engine_off"] = "Tắt động cơ!",
        ["low_fuel"] = "Mức nhiên liệu thấp!",
        ["access_denied"] = "Bạn không được ủy quyền!",
        ["stress_gain"] = "Cảm thấy stress hơn",
        ["stress_removed"] = "Cảm thấy được thư giãnn!"
    }
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})
