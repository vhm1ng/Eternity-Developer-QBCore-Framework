local Translations = {
    error = {
        no_vehicles = "Không có xe ở vị trí này!",
        not_impound = "Xe của bạn không bị tạm giữ",
        not_owned = "Xe này không được sở hữu",
        not_correct_type = "Bạn không thể lưu trữ loại phương tiện này tại đây",
        not_enough = "Không đủ tiền",
        no_garage = "Không có nhà để xe",
        too_far_away = "Quá xa bãi đậu xe",
        occupied = "Bãi đậu xe đã có người",
        all_occupied = "Tất cả các điểm đỗ xe đã có người",
        no_vehicle = "Không có xe để đỗ",
        no_house_keys = "Bạn không có chìa khóa garage của ngôi nhà này",
    },
    success = {
        vehicle_parked = "Xe Đã Lưu",
    },
    menu = {
        header = {
            house_garage = "Nhà để xe",
            house_car = "Nhà để xe %{value}",
            public_car = "Nhà để xe công cộng %{value}",
            public_sea = "Nhà thuyền công cộng %{value}",
            public_air = "Nhà chứa máy bay công cộng %{value}",
            job_car = "nghề giữ xe Garage %{value}",
            job_sea = "nghề giữ thuyền %{value}",
            job_air = "nghề giữ máy bay %{value}",
            gang_car = "Nhà để xe Gang %{value}",
            gang_sea = "Nhà chứa thuyền Gang %{value}",
            gang_air = "Nhà chứa máy bay Gang %{value}",
            depot_car = "Giam xe %{value}",
            depot_sea = "Giam thuyền %{value}",
            depot_air = "Giam máy bay %{value}",
            vehicles = "Xe có sẵn",
            depot = "%{value} [ $%{value2} ]",
            garage = "%{value} [ %{value2} ]",
        },
        leave = {
            car = "⬅ Rời khỏi Garage",
            sea = "⬅ Rời khỏi nhà chứa thuyền",
            air = "⬅ Rời khỏi nhà chứa máy bay",
            job = "⬅ Rời khỏi Garage"
        },
        text = {
            vehicles = "Xem phương tiện được lưu!",
            depot = "Tình trạng: %{value}<br>Xăng: %{value2} | Động cơ: %{value3} | Thân vỏ: %{value4}",
            garage = "Tình trạng: %{value}<br>Xăng: %{value2} | Động cơ: %{value3} | Thân vỏ: %{value4}",
        }
    },
    status = {
        out = "Ở ngoài",
        garaged = "Trong Garaged",
        impound = "Tạm giam",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
