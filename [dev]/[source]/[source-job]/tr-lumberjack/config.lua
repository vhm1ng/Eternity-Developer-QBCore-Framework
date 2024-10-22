Config = Config or {}
Config.Job = false                                                  -- False = Job is not required / True = Job is required
Config.UseBlips = true                                              -- True / false option for toggling farm blips
Config.Timeout = 1 * (30 * 1000)                                   -- 30 senconds

-- Blips

LumberDepo = {
    -- targetZone = vector3(1167.73, -1347.27, 33.92),                 -- et-target vector
    -- targetHeading = 273.47,                                         -- et-target box zone
    -- coords = vector4(1167.73, -1347.27, 33.92, 273.47),             -- Move Location (Ped and blip)
    -- SetBlipSprite = 85,                                             -- Blip Icon (https://docs.fivem.net/docs/game-references/blips/)
    -- SetBlipDisplay = 6,                                             -- Blip Behavior (https://docs.fivem.net/natives/?_0x9029B2F3DA924928)
    -- SetBlipScale = 0.85,                                            -- Blip Size
    -- SetBlipColour = 5,                                              -- Blip Color
    -- BlipLabel = "Lumber Depo",                                      -- Blip Label
    -- minZ = 31.92,                                                   -- Max Z
    -- maxZ = 35.92,                                                   -- Max Z
    -- Vehicle = 'tiptruck',                                           -- Job Vehicle
    -- VehicleCoords = vector4(1162.27, -1318.55, 34.74, 173.91),      -- Job Vehcile Coords
}

LumberProcessor = {
    targetZone = vector3(-517.13, 5331.54, 79.26),
    targetHeading = 336.38,
    coords = vector4(-517.13, 5331.54, 79.26, 336.38),
    SetBlipSprite = 365,
    SetBlipDisplay = 6,
    SetBlipScale = 1.15,
    SetBlipColour = 64,
    BlipLabel = "~b~[Nghề Nghiệp] Làm ván gỗ",
    minZ = 77.26,
    maxZ = 81.26,
}
LumberSeller = {
    targetZone = vector3(453.35, -759.37, 26.96),
    targetHeading = 131.34,
    coords = vector4(453.35, -759.37, 26.35, 269.71),
    SetBlipSprite = 605,
    SetBlipDisplay = 6,
    SetBlipScale = 0.85,
    SetBlipColour = 45,
    BlipLabel = "Lumber Seller",
    minZ = 27.1,
    maxZ = 28.96,
}

LumberJob = {
    LumberModel = "s_m_y_construct_01",                             -- Ped model  https://wiki.rage.mp/index.php?title=Peds
    LumberHash = 0xD7DA9E99,                                        -- Hash numbers for ped model
    
    ChoppingTreeTimer = 10 * 1000,                                  -- 12 second timer
    ProcessingTime = 8 * 1000,                                     -- 10 second timer

    LumberAmount_Min = 1,
    LumberAmount_Max = 1,

    TreeBarkAmount_Min = 1,
    TreeBarkAmount_Max = 1,

    TradeAmount_Min = 1,
    TradeAmount_Max = 1,

    TradeRecevied_Min = 2,
    TradeRecevied_Max = 2,

    AxePrice = 0,                                                 -- Axe Price ($100)
}

Config.Sell = {
    ["tree_lumber"] = {
        ["price"] = math.random(50, 60)                             -- Seller Price
    },
    ["tree_bark"] = {
        ["price"] = math.random(10, 15)
    },
    ["wood_plank"] = {
        ["price"] = math.random(80, 90)
    },
}

Config.Axe = {
    [`riuchatgo`] = {}
}

Config.TreeLocations = {
    [1] = {
        ["coords"] = vector3(-504.6, 5391.9, 75.82),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [2] = {
        ["coords"] = vector3(-510.08, 5389.15, 73.71),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [3] = {
        ["coords"] = vector3(-558.32, 5418.98, 62.78),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [4] = {
        ["coords"] = vector3(-561.47, 5420.32, 62.39),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [5] = {
        ["coords"] = vector3(-578.9, 5427.22, 58.54),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [6] = {
        ["coords"] = vector3(-600.28, 5397.03, 52.48),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [7] = {
        ["coords"] = vector3(-614.04, 5399.73, 50.86),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [8] = {
        ["coords"] = vector3(-616.38, 5403.72, 50.59),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [9] = {
        ["coords"] = vector3(-553.08, 5445.65, 64.16),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [10] = {
        ["coords"] = vector3(-500.53, 5401.34, 75.05),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [11] = {
        ["coords"] = vector3(-491.78, 5395.47, 77.57),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [12] = {
        ["coords"] = vector3(-457.24, 5398.19, 79.35),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [13] = {
        ["coords"] = vector3(-456.87, 5408.32, 79.26),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [14] = {
        ["coords"] = vector3(-627.6, 5322.19, 59.86),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [15] = {
        ["coords"] = vector3(-626.05, 5315.49, 60.87),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [16] = {
        ["coords"] = vector3(-628.47, 5286.07, 63.75),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [17] = {
        ["coords"] = vector3(-604.23, 5243.57, 71.53),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [18] = {
        ["coords"] = vector3(-599.94, 5239.87, 71.87),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [19] = {
        ["coords"] = vector3(-556.65, 5233.61, 72.53),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [20] = {
        ["coords"] = vector3(-557.92, 5224.02, 77.24),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [21] = {
        ["coords"] = vector3(-546.26, 5219.38, 77.94),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [22] = {
        ["coords"] = vector3(-537.93, 5226.47, 78.52),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [23] = {
        ["coords"] = vector3(-628.32, 5286.04, 63.76),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [24] = {
        ["coords"] = vector3(-633.1, 5275.56, 69.11),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [25] = {
        ["coords"] = vector3(-604.37, 5243.69, 71.89),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [26] = {
        ["coords"] = vector3(-646.03, 5269.73, 74.01),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [27] = {
        ["coords"] = vector3(-644.29, 5241.2, 76.3),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [28] = {
        ["coords"] = vector3(-657.02, 5296.15, 69.35),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [29] = {
        ["coords"] = vector3(-659.05, 5293.48, 70.02),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [30] = {
        ["coords"] = vector3(-664.32, 5277.7, 74.4),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [31] = {
        ["coords"] = vector3(-615.24, 5433.06, 54.3),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [32] = {
        ["coords"] = vector3(-616.14, 5424.5, 51.71),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
    [33] = {
        ["coords"] = vector3(-690.07, 5304.85, 70.51),
        ["isChopped"] = false,
        ["isOccupied"] = false,
    },
}

Config.Alerts = {
    ['cancel'] = 'Hủy',
    ['error_lumber'] = 'Bạn không có đủ gỗ sồi',
    ['error_axe'] = 'Bạn không có rìu để chặt cây',
    ['lumber_progressbar'] = 'Đang chế biến gỗ',
    ['itemamount'] = 'Lỗi. Hãy thử lại!',
    ['lumber_processed_trade'] = 'Thành công ',
    ['lumber_processed_lumberamount'] = ' gỗ sồi cho ',
    ['lumber_processed_received'] = ' ván gỗ',
    ['error_sold'] = 'Bạn không có đủ số lượng để bán!',
    ['successfully_sold'] = 'Bán thành công',

    ["axe_check"] = 'Bạn đã có rìu gòi',
    ["axe_bought"] = 'Bạn đã mua rìu với giá $' ..LumberJob.AxePrice,

    ['phone_sender'] = 'Giám sát xưởng gỗ',
    ['phone_subject'] = 'Nhiệm vụ',
    ['phone_message'] = 'Bạn hãy đi thu thập gỗ ở nhà máy gỗ rồi nói chuyện với ông chủ nhà máy.',

    ['chopping_tree'] = 'Đang chặt gỗ',

    ['Tree_label'] = 'Bắt đầu chặt gỗ',
    ['depo_label'] = 'Nói chuyện',
    ['mill_label'] = 'Nói chuyện',

    ['depo_blocked'] = 'Vehicle blocking depo',
    ['depo_stored'] = 'Job Vehicle Stored',

    ['vehicle_header'] = 'Lumber Jack Vehicles',
    ['vehicle_get'] = 'Logger Vehicle',
    ['vehicle_text'] = 'Job Vehicle',

    ['battleaxe_label'] = 'Rìu chặt gỗ',
    ['battleaxe_text'] = 'Dùng rìu để chặt gõ',
    
    ['vehicle_remove'] = 'Cất xe',
    ['remove_text'] = 'Cất xe',

    ['lumber_mill'] = 'Lumber Mill',
    ['lumber_header'] = 'Chế biến gỗ',
    ['lumber_text'] = 'Chế biến thành ván gỗ',

    ['Lumber_Seller'] = 'Bán gỗ',

    ['goback'] = '< Quay lại',

}