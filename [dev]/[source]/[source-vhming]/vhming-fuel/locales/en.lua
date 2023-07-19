local Translations = {
    -- Fuel
    set_fuel_debug = "Bơm xăng:",
    cancelled = "Hủy.",
    not_enough_money = "Bạn không có đủ tiền!",
    not_enough_money_in_bank = "Bạn không có đủ tiền trong ngân hàng!",
    not_enough_money_in_cash = "Bạn không có đủ tiền mặt!",
    more_than_zero = "Bạn cần phải bơm trên 0 lít!",
    emergency_shutoff_active = "Các máy bơm hiện đang tắt bởi vì hệ thống tắt khẩn cấp.",
    nozzle_cannot_reach = "Vòi bơm không thể kéo xa đến vậy!",
    station_no_fuel = "Hết xăng!",
    station_not_enough_fuel = "Cây xăng này không có đủ xăng!",
    show_input_key_special = "Nhấn [G] khi ở gần xe để bơm xăng!",
    tank_cannot_fit = "Bạn bơm nhiều xăng quá. Giảm lại tí đê!",
    tank_already_full = "Xe bạn đã đầy xăng gòi!",
    need_electric_charger = "Bạn cần đến trạm sạc điện nha!",
    cannot_refuel_inside = "Bạn ko thể bơm xăng khi đang trong xe",
    
    -- 2.1.2 -- Reserves Pickup ---
    fuel_order_ready = "Đã bơm xăng xong! Take a look at your GPS to find the pickup!",
    draw_text_fuel_dropoff = "[E] Drop Off Truck",
    fuel_pickup_success = "Your reserves have been filled to: %sL",
    fuel_pickup_failed = "Ron Oil has just dropped off the fuel to your station!",
    trailer_too_far = "The trailer is not attached to the truck or is too far!",

    -- 2.1.0
    no_nozzle = "Bạn không có vòi bơm!",
    vehicle_is_damaged = "Xe của bạn hỏng nhiều quá!",
    vehicle_too_far = "Xe của bạn xa quá!",
    inside_vehicle = "Bạn ko thể bơm/ sạc khi đang trong xe!",
    you_are_discount_eligible = "Nếu bạn đang trong ca trực, bạn được giảm giá "..Config.EmergencyServicesDiscount['discount'].."%!",
    no_fuel = "Không có xăng..",

    -- Electric
    electric_more_than_zero = "Bạn phải sạc nhiều hơn 0KW!",
    electric_vehicle_not_electric = "Xe bạn không phải xe điện!",
    electric_no_nozzle = "Xe bạn không phải xe điện!",

    -- Phone --
    electric_phone_header = "Sạc điện",
    electric_phone_notification = "Phí điện: $",
    fuel_phone_header = "Trạm xăng",
    phone_notification = "Tổng tiền: $",
    phone_refund_payment_label = "Refund @ Gas Station!",

    -- Stations
    station_per_liter = " / lít!",
    station_already_owned = "Trạm này đã có chủ rồi!",
    station_cannot_sell = "Bạn không thể bán trạm này!",
    station_sold_success = "Bán thành công!",
    station_not_owner = "Bạn không phải chủ trạm!",
    station_amount_invalid = "Số tiền không hợp lệ!",
    station_more_than_one = "Bạn cần mua nhiều hơn 1L!",
    station_price_too_high = "Giá cao quá!",
    station_price_too_low = "Giá thấp quá!",
    station_name_invalid = "Tên này không được bạn ơi. Đổi tên khác nha!",
    station_name_too_long = "Tên không được nhiều hơn "..Config.NameChangeMaxChar.." kí tự.",
    station_name_too_short = "Tên phải nhiều hơn "..Config.NameChangeMinChar.." kí tự.",
    station_withdraw_too_much = "Bạn không thể rút nhiều tiền hơn tiền trong quỹ!", 
    station_withdraw_too_little = "Bạn không thể rút ít hơn $1!",
    station_success_withdrew_1 = "Rút thành công $",
    station_success_withdrew_2 = " từ quỹ trạm!", -- Leave the space @ the front!
    station_deposit_too_much = "Bạn không thể nạp nhiều tiền hơn bạn đang có!", 
    station_deposit_too_little = "Bạn không thể nạp ít hơn $1!",
    station_success_deposit_1 = "Nạp tiền thành công $",
    station_success_deposit_2 = " vào quỹ trạm!", -- Leave the space @ the front!
    station_cannot_afford_deposit = "Bạn không đủ khả năng nạp $",
    station_shutoff_success = "Đã thay đổi thành công trạng thái van ngắt cho vị trí này!",
    station_fuel_price_success = "Thay đổi thành công giá xăng dầu $",
    station_reserve_cannot_fit = "The reserves cannot fit this!",
    station_reserves_over_max =  "Bạn không thể mua số lượng này vì nó sẽ lớn hơn số tiền tối đa "..Config.MaxFuelReserves.." lít",
    station_name_change_success = "Đã đổi tên thành công: ", -- Leave the space @ the end!
    station_purchased_location_payment_label = "Mua trạm: ",
    station_sold_location_payment_label = "Bán trạm: ",
    station_withdraw_payment_label = "Rút tiền từ trạm. Vị trí: ",
    station_deposit_payment_label = "Gửi tiền vào trạm. Vị trí: ",
    -- All Progress Bars
    prog_refueling_vehicle = "Bơm xăng..",
    prog_electric_charging = "Sạc..",
    prog_jerry_can_refuel = "Bơm xăng..",
    prog_syphoning = "Hút xăng..",

    -- Menus
    
    menu_header_cash = "Tiền mặt",
    menu_header_bank = "Ngân hàng",
    menu_header_close = "Đóng",
    menu_pay_with_cash = "Trả tiền mặt.  \nBạn có: $",
    menu_pay_with_bank = "Chuyển khoản.", 
    menu_refuel_header = "Trạm xăng",
    menu_refuel_accept = "Tôi muốn bơm xăng.",
    menu_refuel_cancel = "Hết muốn bơm gòi :D.",
    menu_pay_label_1 = "Xăng @ ",
    menu_pay_label_2 = " / lít",
    menu_header_jerry_can = "Can xăng",
    menu_header_refuel_jerry_can = "Bơm can xăng",
    menu_header_refuel_vehicle = "Bơm xăng",

    menu_electric_cancel = "Hết muốn sạc gòi :D.",
    menu_electric_header = "Sạc điện",
    menu_electric_accept = "Tôi muốn trả tiền.",
    menu_electric_payment_label_1 = "Điện @ ",
    menu_electric_payment_label_2 = " / KW",


    -- Station Menus

    menu_ped_manage_location_header = "Quản lý",
    menu_ped_manage_location_footer = "Nếu bạn là chủ, bạn có thể quản lý trạm này.",

    menu_ped_purchase_location_header = "Mua",
    menu_ped_purchase_location_footer = "Nếu không ai là chủ, bạn có thể mua.",

    menu_ped_emergency_shutoff_header = "Bật / tắt khẩn cấp",
    menu_ped_emergency_shutoff_footer = "Ngắt nhiên liệu trong trường hợp khẩn cấp.   \n Bơm đang ",
    
    menu_ped_close_header = "Hủy",
    menu_ped_close_footer = "Không muốn bàn bạc nữa.",

    menu_station_reserves_header = "Mua dữ trự nguyên liệu ",
    menu_station_reserves_purchase_header = "Mua với giá: $",
    menu_station_reserves_purchase_footer = "Tôi muốn mua nguyên liệu với giá $",
    menu_station_reserves_cancel_footer = "Hết muốn mua gòi :D!",
    
    menu_purchase_station_header_1 = "Tổng tiền: $",
    menu_purchase_station_header_2 = " đã bao gồm thuế.",
    menu_purchase_station_confirm_header = "Đồng ý",
    menu_purchase_station_confirm_footer = "Mua trạm với giá $",
    menu_purchase_station_cancel_footer = "Không mua nữa đâu. Đắt quá!",

    menu_sell_station_header = "Bán ",
    menu_sell_station_header_accept = "Bán",
    menu_sell_station_footer_accept = "OK, bán với giá $",
    menu_sell_station_footer_close = "Không bán nữa.",

    menu_manage_header = "Quản lý ",
    menu_manage_reserves_header = "Dữ trữ nguyên liệu  \n",
    menu_manage_reserves_footer_1 =  " Liters out of ",
    menu_manage_reserves_footer_2 =  " Liters  \nYou can purchase more reserves below!",
    
    menu_manage_purchase_reserves_header = "Mua thêm nguyên liệu",
    menu_manage_purchase_reserves_footer = "Mua thêm với giá $",
    menu_manage_purchase_reserves_footer_2 = " / lít!",

    menu_alter_fuel_price_header = "Điều chỉnh giá nguyên liệu",
    menu_alter_fuel_price_footer_1 = "I want to change the price of fuel at my Gas Station!  \nCurrently, it is $",
    
    menu_manage_company_funds_header = "Manage Company Funds",
    menu_manage_company_funds_footer = "I want to manage this locations funds.",
    menu_manage_company_funds_header_2 = "Funds Management of ",
    menu_manage_company_funds_withdraw_header = "Withdraw Funds",
    menu_manage_company_funds_withdraw_footer = "Withdraw funds from the Station's account.",
    menu_manage_company_funds_deposit_header = "Deposit Funds",
    menu_manage_company_funds_deposit_footer = "Deposit funds to the Station's account.",
    menu_manage_company_funds_return_header = "Return",
    menu_manage_company_funds_return_footer = "I want to discuss something else!",

    menu_manage_change_name_header = "Change Location Name",
    menu_manage_change_name_footer = "I want to change the location name.",

    menu_manage_sell_station_footer = "Sell your gas station for $",

    menu_manage_close = "I actually don't have anything more to discuss!", 

    -- Jerry Can Menus 
    menu_jerry_can_purchase_header = "Mua can xăng với giá $",
    menu_jerry_can_footer_full_gas = "Can xăng đầy gòi!",
    menu_jerry_can_footer_refuel_gas = "Bơm can xăng!",
    menu_jerry_can_footer_use_gas = "Cầm can xăng và bơm xăng!",
    menu_jerry_can_footer_no_gas = "Không có xăng trong can!",
    menu_jerry_can_footer_close = "Hủy.",
    menu_jerry_can_close = "Không muốn bơm xăng bằng can nữa.",

    -- Syphon Kit Menus
    menu_syphon_kit_full = "Bộ hút xăng của bạn đã đầy. Chỉ phù hợp với " .. Config.SyphonKitCap .. " lít!",
    menu_syphon_vehicle_empty = "Hết xăng.",
    menu_syphon_allowed = "Ăn cắp xăng!",
    menu_syphon_refuel = "Put your stolen gasoline to use and refuel the vehicle!",
    menu_syphon_empty = "Put your stolen gasoline to use and refuel the vehicle!",
    menu_syphon_cancel = "I actually don't want to use this anymore. I've turned a new leaf!",
    menu_syphon_header = "Hút",
    menu_syphon_refuel_header = "Bơm",


    -- Input --
    input_select_refuel_header = "Lượng xăng cần bơm.",
    input_refuel_submit = "Bơm",
    input_refuel_jerrycan_submit = "Bơm can xăng",
    input_max_fuel_footer_1 = "Lên đến ",
    input_max_fuel_footer_2 = " lít xăng.",
    input_insert_nozzle = "Đặt vòi bơm", -- Used for Target as well!

    input_purchase_reserves_header_1 = "Purchase Reserves  \nCurrent Price: $",
    input_purchase_reserves_header_2 = Config.FuelReservesPrice .. " / Liter  \nCurrent Reserves: ",
    input_purchase_reserves_header_3 = " Liters  \nFull Reserve Cost: $",
    input_purchase_reserves_submit_text = "Buy Reserves",
    input_purchase_reserves_text = 'Purchase Fuel Reserves.',

    input_alter_fuel_price_header_1 = "Alter Fuel Price   \nCurrent Price: $",
    input_alter_fuel_price_header_2 = " / Liter",
    input_alter_fuel_price_submit_text = "Change Fuel Price",

    input_change_name_header_1 = "Change ",
    input_change_name_header_2 = "'s Name.",
    input_change_name_submit_text = "Submit Name Change",
    input_change_name_text = "New Name..",

    input_withdraw_funds_header = "Withdraw Funds  \nCurrent Balance: $",
    input_withdraw_submit_text = "Withdraw",
    input_withdraw_text = "Withdraw Funds",

    input_deposit_funds_header = "Deposit Funds  \nCurrent Balance: $",
    input_deposit_submit_text = "Deposit",
    input_deposit_text = "Deposit Funds",

    -- Target
    grab_electric_nozzle = "Lấy sạc",
    insert_electric_nozzle = "Cắm sạc",
    grab_nozzle = "Lấy vòi bơm",
    return_nozzle = "Trả",
    grab_special_nozzle = "Cầm bơm xịn",
    return_special_nozzle = "Trả bơm xịn",
    buy_jerrycan = "Mua can xăng",
    station_talk_to_ped = "Discuss Gas Station",

    -- Jerry Can
    jerry_can_full = "Can xăng đầy!",
    jerry_can_refuel = "Bơm can xăng!",
    jerry_can_not_enough_fuel = "Can xăng không có đủ xăng!",
    jerry_can_not_fit_fuel = "Nhiều xăng quá!",
    jerry_can_success = "Bơm thành công!",
    jerry_can_success_vehicle = "Bơm thành công!",
    jerry_can_payment_label = "Mua thành công.",

    -- Syphoning
    syphon_success = "Hút xăng thành công!",
    syphon_success_vehicle = "Hút xăng thành công!",
    syphon_electric_vehicle = "Này là xe điện!",
    syphon_no_syphon_kit = "Bạn cần dụng cụ để rút xăng.",
    syphon_inside_vehicle = "Bạn phải ở ngoài xe để thực hiện hành vi này!",
    syphon_more_than_zero = "bạn phải rút nhiều hơn 0 lít!",
    syphon_kit_cannot_fit_1 = "Bạn không rút dc. Bộ dụng cụ chỉ chứa được: ",
    syphon_kit_cannot_fit_2 = " lít.",
    syphon_not_enough_gas = "Bạn không có đủ xăng!",
    syphon_dispatch_string = "(10-90) - Trộm xăng",
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})