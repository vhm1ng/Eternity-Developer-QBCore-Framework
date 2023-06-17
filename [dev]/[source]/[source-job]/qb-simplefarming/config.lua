Config = Config or {}

Config.UseBlips = true                                 -- True / false option for toggling farm blips

Config.PedModel = "a_m_m_farmer_01"                    -- Ped model  https://wiki.rage.mp/index.php?title=Peds
Config.PedHash = 0x94562DD7                            -- Hash numbers for ped model

-- Blips
FoodProcessor = {
    targetZone = vector3(2853.98, 4557.02, 46.15),      -- et-target vector
    targetHeading = 5,                                  -- et-target box zone
    coords = vector4(2853.98, 4557.02, 46.15, 25.64),   -- Move Location (Ped and blip)
    SetBlipSprite = 568,                                -- Blip Icon (https://docs.fivem.net/docs/game-references/blips/)
    SetBlipDisplay = 6,                                 -- Blip Behavior (https://docs.fivem.net/natives/?_0x9029B2F3DA924928)
    SetBlipScale = 0.65,                                -- Blip Size
    SetBlipColour = 35,                                 -- Blip Color
    BlipLabel = "Food Processor",                       -- Blip Label
    minZ = 43.95,                                       -- et-target Min
    maxZ = 47.95,                                       -- et-target Max
}
DairyProcessor = {
    targetZone = vector3(2567.92, 4684.44, 33.05),
    targetHeading = 330,
    coords = vector4(2567.92, 4684.44, 33.05, 47.10),
    SetBlipSprite = 568,
    SetBlipDisplay = 6,
    SetBlipScale = 0.65,
    SetBlipColour = 32,
    BlipLabel = "Dairy Processor",
    minZ = 32.05,
    maxZ = 35.00,
}
Seller = {
    targetZone = vector3(760.4, -3194.97, 6.07),
    targetHeading = 265.82,
    coords = vector4(760.4, -3194.97, 6.07 - 1.00, 265.82),
    SetBlipSprite = 642,
    SetBlipDisplay = 6,
    SetBlipScale = 0.65,
    SetBlipColour = 17,
    BlipLabel = "Farm Seller",
    minZ = 4,
    maxZ = 7,
}

-- Pig Farm (Food)

Config.PigFood = 5                                      -- Food Amount (Pig Food)
Config.FoodPrice = 5                                    --  Pig Farm Food Price
PigFarmer = vector4(2166.11, 5003.84, 40.39, 312.56)    -- Ped Location
PigFarmerTargetZone = vector3(2166.11, 5003.84, 40.39)  -- et-Target location
PigFarmerTzHeading = 305                                -- et-Target Heading
PigFarmerMinZ = 40				                    	-- et-Target MinZ
PigFarmerMaxZ = 42				                    	-- et-Target MaxZ

-- Processing Items
Config.AppleProcessing = 3                              -- Trading Amount
Config.BeefProcessing = 2
Config.BaconProcesing = 3
Config.HamProcessing = 2
Config.PorkProcessing = 1
Config.SausageProcessing = 2
Config.MilkProcessing = 2
Config.PumpkinProcessing = 1
Config.CornProcessing = 2
Config.GrapeProcessing = 3
Config.ChillyProcessing = 3
Config.TomatoesProcessing = 4

-- Processed Items
Config.AppleJuice = 1                                   -- Received Amount
Config.BaconProcessed = 3
Config.HamProcessed = 2
Config.PorkProcessed = 1
Config.SausageProcessed = 2
Config.CowMeat = 2
Config.Milk = 4
Config.PumpkinBoxes = 3
Config.CornProcessed = 1
Config.GrapeProcessed = 1
Config.ChillyProcessed = 1
Config.TomatoesProcessed = 1

-- Processing time
Config.ProcessingTime = {
    ["apple_processingtime"] = 5000,                    -- MS = Seconds (5000 ms = 5 seconds)
    ["beef_processingtime"] = 10000,
    ["bacon_processingtime"] = 10000,
    ["ham_processingtime"] = 10000,
    ["pork_processingtime"] = 10000,
    ["sausage_processingtime"] = 10000,
    ["milk_tradingtime"] = 7500,
    ["pumpkin_smashingtime"] = 7500,
    ["grape_processingtime"] = 7500,
    ["chillypepper_processingtime"] = 7500,
    ["tomatoes_processingtime"] = 7500,
}


-- Sell Items
Config.Sell = {
    ["apple"] = {
        ["price"] = math.random(5, 15)                  -- Seller Price
    },
    ["apple_juice"] = {
        ["price"] = math.random(25, 35)
    },
    ["milkbucket"] = {
        ["price"] = math.random(25, 35)
    },
    ["raw_beef"] = {
        ["price"] = math.random(25, 35)
    },
    ["beef"] = {
        ["price"] = math.random(25, 35)
    },
    ["milk"] = {
        ["price"] = math.random(25, 35)
    },
    ["rawpumpkin"] = {
        ["price"] = math.random(25, 35)
    },
    ["pumpkinpiebox"] = {
        ["price"] = math.random(25, 35)
    },
    ["slicedpie"] = {
        ["price"] = math.random(25, 35)
    },
    ["corncob"] = {
        ["price"] = math.random(25, 35)
    },
    ["canofcorn"] = {
        ["price"] = math.random(25, 35)
    },
    ["grapes"] = {
        ["price"] = math.random(25, 35)
    },
    ["grapejuice"] = {
        ["price"] = math.random(25, 35)
    },
    ["greenpepper"] = {
        ["price"] = math.random(25, 35)
    },
    ["chillypepper"] = {
        ["price"] = math.random(25, 35)
    },
    ["hotsauce"] = {
        ["price"] = math.random(25, 35)
    },
    ["tomato"] = {
        ["price"] = math.random(25, 35)
    },
    ["tomatopaste"] = {
        ["price"] = math.random(25, 35)
    },
    ["raw_bacon"] = {
        ["price"] = math.random(25, 35)
    },
    ["raw_sausage"] = {
        ["price"] = math.random(25, 35)
    },
    ["raw_pork"] = {
        ["price"] = math.random(25, 35)
    },
    ["raw_ham"] = {
        ["price"] = math.random(25, 35)
    },
    ["cooked_bacon"] = {
        ["price"] = math.random(25, 35)
    },
    ["cooked_sausage"] = {
        ["price"] = math.random(25, 35)
    },
    ["cooked_pork"] = {
        ["price"] = math.random(25, 35)
    },
    ["cooked_ham"] = {
        ["price"] = math.random(25, 35)
    },
    ["pig_leather"] = {
        ["price"] = math.random(25, 35)
    },
    ["cow_leather"] = {
        ["price"] = math.random(25, 35)
    }

}


-- Alert Notification
Config.Alerts = {
    ['cancel'] = 'Hủy bỏ',
    ['weapon'] = 'Bạn không có dao để làm việc này',
    ['itemamount'] = 'Số lượng không đủ!',

    ['apple_pickingbar'] = 'Đang Hái táo',
    ['apple_progressbar'] = 'Làm nước ép',
	['apple_pickingfront'] = 'Bạn Đã Hái ',
    ['apple_pickingend'] = ' Quả Táo Từ Cây',
    ['apple_processing'] = 'Bạn đang sử lý ' ..Config.AppleProcessing.. ' Quả táo',    
    ['error_appleprocessor'] = 'Hm, Có vẻ như bạn không có quả táo nào để xử lý... Hãy quay lại sau!',
    ['apple_trader'] = 'Bạn đã nhận được ' ..Config.AppleJuice.. ' Nước ép vào kho đồ',

    ['cow_milking'] = 'Đang Vắt sữa bò',
    ['emptybucket'] = 'Bạn không có thùng Sữa',
    ['killing_cow'] = 'Giết Mổ Bò',
    ['error_rawmeat'] = 'Hừm, có vẻ như bạn không có thịt sống để chế biến... Hãy quay lại sau!',
    ['cow_processbar'] = 'Nấu thịt bò',
    ['cow_processing'] = 'Bạn đã nấu ' ..Config.BeefProcessing.. ' Thịt Bò sống',
    ['cow_dairyprocessorbar'] = 'Dóng gói sữa',
    ['milk_processing'] = 'Bạn đã xử lý ' ..Config.MilkProcessing.. ' xô sữa tươi',
    ['milk_trader'] = 'Bạn đã nhận được ' ..Config.Milk.. ' Hộp Sữa',
    ['error_milkprocessor'] = 'Có vẻ như bạn không có xô sữa nào....',
    ['error_milklocation'] = 'Hãy Đến Nông trại vắt sữa bò rồi quay lại',

    ['picking_pumpkins'] = 'Đang Nhặt bí ngô',
    ['pumpkin_processingbar'] = 'Chế biến bí ngô',
    ['pumpkin_processing'] = 'Chế Biến Thành công ' ..Config.PumpkinProcessing, ' Bí ngô', 
    ['pumpkin_trader'] = 'Làm ra ' ..Config.PumpkinBoxes.. ' Hộp bánh bí ngô',
    ['error_pumpkinsmashing'] = 'Bạn không có quả bí ngô nào để Chế Biến',

    ['corn_picking'] = 'Đang hái ngô',
    ['corn_progressbar'] = 'Chế biến ngô đóng hộp',
    ['corn_processing'] = 'Bạn đã xử lý ' ..Config.CornProcessing.. ' Ngô',
    ['corn_processed'] = 'Bạn đã Nhận được ' ..Config.CornProcessed.. ' Ngô đóng hộp',
    ['error_corncob'] = 'Có vẻ như bạn không có bắp ngô nào để chế biến... Hãy quay lại sau!',

    ['grape_picking'] = 'Đang hái nho',
    ['grape_progressbar'] = 'Straining Grapes',
    ['grape_processing'] = 'Strained ' ..Config.GrapeProcessing.. ' grapes',
    ['grape_processed'] = 'Made ' ..Config.GrapeProcessed.. ' bottles of juice',
    ['error_grape'] = 'Hm, It seems like you don\'t have any grapes to process... Come back later!',

    ['greenpepper_picking'] = "Picking GreenPeppers",

    ['chillypepper_picking'] = 'Picking ChillyPeppers',
    ['chilly_hotsauce'] = 'Making Hot Sauce',
    ['chilly_processing'] = 'Crushed ' ..Config.ChillyProcessing.. ' chilly Peppers',
    ['chilly_processed'] = 'Made ' ..Config.ChillyProcessed.. ' hot sauce bottle\'s',
    ['error_chilly'] = 'Hừm, có vẻ như bạn không có ớt để chế biến... Hãy quay lại sau!',

    ['tomatoes_picking'] = 'Picking Tomatoes',
    ['tomatoes_progressbar'] = 'Smashing Tomatoes',
    ['tomatoes_processing'] = 'Squeezed ' ..Config.TomatoesProcessing.. ' tomatoes',
    ['tomatoes_processed'] = 'Made ' ..Config.TomatoesProcessed.. ' jars of tomatopaste',
    ['error_tomatoes'] = 'Hm, Có vẻ như bạn không có cà chua nào để chế biến... Hãy quay lại sau!',


    ['bacon_progressbar'] = 'Đang nấu thịt xông khói',
    ['bacon_processing'] = 'bạn đã nấu chín ' ..Config.BaconProcessed.. '   Thịt xông khói',
    ['error_bacon'] = 'Không có thịt xông khói để nấu ăn',

    ['ham_progressbar'] = 'Đang Nấu Thịt Nguội ',
    ['ham_processing'] = 'bạn đã nấu chín ' ..Config.HamProcessed.. ' Thịt Nguội',
    ['error_ham'] = 'Không có Thịt Nguội để nấu ăn',

    ['pork_progressbar'] = 'đang nấu thịt lợn',
    ['pork_cooking'] = 'bạn đã nấu chín ' ..Config.PorkProcessed.. '  miếng thịt lợn',
    ['error_pork'] = 'Không có thịt lợn để nấu ăn',

    ['sausage_progressbar'] = 'đang Nấu xúc xích',
    ['sausage_processing'] = 'Bạn đã nấu thành công ' ..Config.SausageProcessed.. ' miếng xúc xích',
    ['error_sausage'] = 'Không có xúc xích để nấu ăn',

    ['killing_pig'] = 'đang giết mổ lợn',
    ['pig_reward'] = 'Vật phẩm nhận được khi giết lợn',

    ['error.soybean'] = 'Bạn không có đậu nành để cho lợn ăn',
    ['stress'] = 'Căng thẳng của bạn đã được giải tỏa',
}
