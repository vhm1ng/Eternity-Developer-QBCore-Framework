local Translations = {
    error = {
        ["missing_something"] = "Có vẻ như bạn đang bỏ lỡ một cái gì đó...",
        ["not_enough_police"] = "Không đủ cảnh sát..",
        ["door_open"] = "Cánh cửa đã mở..",
        ["process_cancelled"] = "Cánh cửa đã mở...",
        ["didnt_work"] = "Nó không làm việc..",
        ["emty_box"] = "Cái hộp này rỗng..",
    },
    success = {
        ["worked"] = "Nó đã làm việc!",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
