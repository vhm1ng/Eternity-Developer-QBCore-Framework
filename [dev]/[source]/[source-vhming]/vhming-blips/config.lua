Config = Config or {}     
Config.SuDungBlipsTest = false  -- 540
Config.SuDungBlips = true

-- Đây là config test

BlipTestped = {
    targetZone = vector3(-83.55, -427.66, 36.5),                    -- Vector của target
    targetHeading = 273.47,                                         -- Vùng của target
    coords = vector4(-83.55, -427.66, 36.5, 179.49),                -- Vector vị trí blips và ped
    SetBlipSprite = 85,                                             -- Icon Blips (https://docs.fivem.net/docs/game-references/blips/)
    SetBlipDisplay = 6,                                             -- Cái này k biết nói như nào tự check (https://docs.fivem.net/natives/?_0x9029B2F3DA924928)
    SetBlipScale = 0.85,                                            -- Cỡ của blips
    SetBlipColour = 5,                                              -- Màu blips
    BlipLabel = "Blip test có ped",                                 -- Tên blips
    minZ = 32.92,                                                   -- Z tối thiểu
    maxZ = 35.92,                                                   -- Z tối đa
}

BlipTestNoPed = {
    coords = vector3(-93.21, -429.14, 36.28),                       -- Vector vị trí blips
    SetBlipSprite = 85,                                             -- Icon Blips (https://docs.fivem.net/docs/game-references/blips/)
    SetBlipDisplay = 6,                                             -- Cái này k biết nói như nào tự check (https://docs.fivem.net/natives/?_0x9029B2F3DA924928)
    SetBlipScale = 0.85,                                            -- Cỡ của blips
    SetBlipColour = 5,                                              -- Màu blips
    BlipLabel = "Blip test khong co ped",                           -- Tên blips
}

-- Đây là config chuẩn

BlipVHMingBlip = {
    coords = vector3(714.21, 4123.86, 35.78),                       -- Vector vị trí blips
    SetBlipSprite = 68,                                             -- Icon Blips (https://docs.fivem.net/docs/game-references/blips/)
    SetBlipDisplay = 6,                                             -- Cái này k biết nói như nào tự check (https://docs.fivem.net/natives/?_0x9029B2F3DA924928)
    SetBlipScale = 0.8,                                            -- Cỡ của blips
    SetBlipColour = 38,                                              -- Màu blips
    BlipLabel = "Câu cá",                           -- Tên blips 
}
