local Translations = {
    error = {
        invalid_ext = "Đường link này không đúng đuôi hợp lệ, phải là",
        allowed_ext = " mới hoạt động được",

    },
    info = {
        use_printer = "Sử dụng máy in",

    },
    command = {
        spawn_printer = "Tạo ra máy in",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})