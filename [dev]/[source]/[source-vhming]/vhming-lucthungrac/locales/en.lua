local Translations = {
    info = {
        search = 'Lục thùng rác hoii ^^',
    },
    error = {
        cooldown = 'Cậu phải đợi thêm %{time} giây nữa, mới lục được tiếp. ahihi:3 ',
        hasBeenSearched = "Thùng rác này đã có người lấy rồi. lew lew!",
        nothingFound = "Thùng rác này hông cóa gì cạ! hic hic ^^",
    },
    progressbar = {
        searching = "Lục thùng rác. eo ôi thối quá! oe oe",
    },
    reward = {
        money = "Uầy!! bạn vừa nhặt tiền đó!! %{amount}$",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})