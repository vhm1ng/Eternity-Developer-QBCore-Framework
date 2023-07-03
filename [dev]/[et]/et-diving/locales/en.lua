local Translations = {
    error = {
        ["canceled"] = "Canceled",
        ["911_chatmessage"] = "911 MESSAGE",
        ["take_off"] = "/divingsuit to take off your diving suit",
        ["not_wearing"] = "You are not wearing a diving gear ..",
        ["no_coral"] = "You don't have any coral to sell..",
        ["not_standing_up"] = "You need to be standing up to put on the diving gear",
        ["need_otube"] = "you need oxygen tube",
        ["oxygenlevel"] = 'the gear level is %{oxygenlevel} must be 0%'
    },
    success = {
        ["took_out"] = "Bạn đã cởi đồ lặn",
        ["tube_filled"] = "Đã gắn ống thở"
    },
    info = {
        ["collecting_coral"] = "Đang thu thập san hô",
        ["diving_area"] = "Khu vực lặn",
        ["collect_coral"] = "Collect coral",
        ["collect_coral_dt"] = "[E] - Thu thập san hô",
        ["checking_pockets"] = "Đang kiểm tra san hô",
        ["sell_coral"] = "Bán san hô",
        ["sell_coral_dt"] = "[E] - Bán san hô",
        ["blip_text"] = "911 - Dive Site",
        ["put_suit"] = "Đang mặc đồ lặn",
        ["pullout_suit"] = "Đang cởi đồ lặn ..",
        ["cop_msg"] = "San hô có thể đã bị trộm",
        ["cop_title"] = "Lặn trái phép",
        ["command_diving"] = "Take off your diving suit",
    },
    warning = {
        ["oxygen_one_minute"] = "You have less than 1 minute of air remaining",
        ["oxygen_running_out"] = "Your diving gear is running out of air",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})