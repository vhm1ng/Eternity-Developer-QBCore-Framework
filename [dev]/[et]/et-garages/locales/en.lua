local Translations = {
    error = {
        no_vehicles = "Không có phương tiện ở vị trí này!",
        not_impound = "Xe của bạn không ở trong tình trạng",
        not_owned = "Xe này không thể được lưu trữ",
        not_correct_type = "Bạn không thể lưu trữ loại xe này ở đây",
        not_enough = "Không đủ tiền",
        no_garage = "Không có",
        vehicle_occupied = "Bạn không thể lưu trữ chiếc xe này vì nó không trống",
    },
    success = {
        vehicle_parked = "Xe được lưu trữ",
    },
    menu = {
        header = {
            house_car = "House Garage %{value}",
            public_car = "Public Garage %{value}",
            public_sea = "Public Boathouse %{value}",
            public_air = "Public Hangar %{value}",
            public_rig = "Public Rig Lot %{value}",
            job_car = "Job Garage %{value}",
            job_sea = "Job Boathouse %{value}",
            job_air = "Job Hangar %{value}",
            job_rig = "Rig Lot %{value}",
            gang_car = "Gang Garage %{value}",
            gang_sea = "Gang Boathouse %{value}",
            gang_air = "Gang Hangar %{value}",
            gang_rig = "Gang Rig Lot %{value}",
            depot_car = "Depot %{value}",
            depot_sea = "Depot %{value}",
            depot_air = "Depot %{value}",
            depot_rig = "Depot %{value}",
            vehicles = "Available Vehicles",
            depot = "%{value} [ $%{value2} ]",
            garage = "%{value} [ %{value2} ]",
        },
        leave = {
            car = "⬅ Leave Garage",
            sea = "⬅ Leave Boathouse",
            air = "⬅ Leave Hangar",
            rig = "⬅ Leave Lot",
        },
        text = {
            vehicles = "View stored vehicles!",
            depot = "Plate: %{value}<br>Fuel: %{value2} | Engine: %{value3} | Body: %{value4}",
            garage = "State: %{value}<br>Fuel: %{value2} | Engine: %{value3} | Body: %{value4}",
        }
    },
    status = {
        out = "Out",
        garaged = "Garaged",
        impound = "Impounded By Police",
    },
    info = {
        car_e = "E - Garage",
        sea_e = "E - Boathouse",
        air_e = "E - Hangar",
        rig_e = "E - Rig Lot",
        park_e = "E - Store Vehicle",
        house_garage = "House garage",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
