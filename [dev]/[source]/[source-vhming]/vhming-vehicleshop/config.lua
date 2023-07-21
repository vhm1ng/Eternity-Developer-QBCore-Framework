Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Targets = {}

Config.Locations = {
    ["duty"] = vector3(-337.52, -1370.05, 31.87),
}

Config.Shops = {
    ['cdl'] = {
        ['Type'] = 'managed',
        ['Zone'] = {
            ['Shape'] = {
                vector2(1220.54, -2952.91),
                vector2(1212.25, -2952.9),
                vector2(1212.31, -2906.84),
                vector2(1220.41, -2906.82)
            },
            ['minZ'] = 4.87,
            ['maxZ'] = 6.87,
            ['size'] = 2.75
        },
        ['Job'] = 'cardealer',
        ['ShopLabel'] = '~r~[Ban Ngành] ~w~Car Dealer',
        ['showBlip'] = true,
        ['blipSprite'] = 326,
        ['blipColor'] = 3,
        ['TestDriveTimeLimit'] = 1.0,
        ['Location'] = vector3(-326.43, -1369.64, 32.39),
        ['ReturnLocation'] = vector3(1219.11, -2935.6, 5.87),
        ['VehicleSpawn'] = vector4(1216.54, -2935.12, 5.26, 359.92),
        ['TestDriveSpawn'] = vector4(1216.54, -2935.12, 5.26, 359.92),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(1216.53, -2947.49, 5.26, 359.39),
                defaultVehicle = 'jackal',
                chosenVehicle = 'jackal'
            },
        }
    },
}
