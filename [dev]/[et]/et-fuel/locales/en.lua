local Translations = {
    notify = {
        ["no_money"] = "Bạn không có đủ tiền",
        ["refuel_cancel"] = "Đã hủy tiếp nhiên liệu",
        ["jerrycan_full"] = "Can jerry này đã đầy",
        ["jerrycan_empty"] = "Can jerry này trống rỗng",
        ["vehicle_full"] = "Xe này đã đầy xăng",
        ["already_full"] = "Can xăng đã đầy",
    }
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})
