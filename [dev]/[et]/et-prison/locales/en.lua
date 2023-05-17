local Translations = {
    error = {
        ["missing_something"] = "Có vẻ như bạn đang thiếu thứ gì đó...",
        ["not_enough_police"] = "Không đủ cảnh sát..",
        ["door_open"] = "Cửa đã mở rồi...",
        ["cancelled"] = "Quá trình đã bị hủy...",
        ["didnt_work"] = "Nó không làm việc...",
        ["emty_box"] = "Cái hộp rỗng..",
        ["injail"] = "bạn đã ở tù trong %{Time} Tháng..",
        ["item_missing"] = "Bạn đang bỏ lỡ một mục..",
        ["escaped"] = "Bạn đã trốn thoát... Cút khỏi đây.!",
        ["do_some_work"] = "Làm vài công việc để được giảm án: %{currentjob} ",
        ["security_activated"] = "Mức bảo mật cao nhất đang hoạt động, hãy giữ nguyên các khối di động!"
    },
    success = {
        ["found_phone"] = "Bạn đã tìm thấy một chiếc điện thoại..",
        ["time_cut"] = "Bạn đã ra khỏi ngục.",
        ["free_"] = "Bạn được tự do! Hãy tận hưỡng cuộc sống mới! :)",
        ["timesup"] = "Thời gian của bạn đã hết!",
    },
    info = {
        ["timeleft"] = "Bạn còn phải ở tù trong... %{JAILTIME} tháng",
        ["lost_job"] = "Bạn thất nghiệp",
        ["job_interaction"] = "[E] Công việc điện",
        ["job_interaction_target"] = "Làm việc %{job} ",
        ["received_property"] = "Bạn đã nhận lại được tài sản của mình",
        ["seized_property"] = "Tài sản của bạn đã bị tịch thu, bạn sẽ nhận được tất cả mọi thứ trở lại khi thời gian của bạn kết thúc..",
        ["cells_blip"] = "Ngục tối",
        ["freedom_blip"] = "Sảnh nhà tù",
        ["canteen_blip"] = "căng teen",
        ["work_blip"] = "Công việc nhà tù",
        ["target_freedom_option"] = "Kiểm tra Thời Gian",
        ["target_canteen_option"] = "Tìm thức ăn",
        ["police_alert_title"] = "Một cuộc gọi mới",
        ["police_alert_description"] = "Nhà tù bạo động",
        ["connecting_device"] = "Kết nối thiết bị",
        ["working_electricity"] = "Kết nối dây điện"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
