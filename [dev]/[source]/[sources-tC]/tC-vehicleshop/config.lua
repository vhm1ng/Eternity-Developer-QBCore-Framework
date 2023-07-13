Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
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
        ['ShopLabel'] = 'Luxury Vehicle Shop',
        ['showBlip'] = false,
        ['blipSprite'] = 326,
        ['blipColor'] = 3,
        ['TestDriveTimeLimit'] = 1.0,
        ['Location'] = vector3(1219.11, -2935.6, 5.87),
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
