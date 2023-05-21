local Translations = {
    ui = {
        last_location = "ĐỊA ĐIỂM CUỐI CÙNG",
        confirm = "XÁC NHẬN",
        where_would_you_like_to_start = "BẠN MUỐN XUẤT PHÁT Ở ĐÂU?",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})