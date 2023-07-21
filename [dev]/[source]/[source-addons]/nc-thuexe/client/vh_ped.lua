local QBCore = exports['et-core']:GetCoreObject()

CreateThread(function()
    -- Blip
    local blip = AddBlipForCoord(Config.CreatePed.x, Config.CreatePed.y, Config.CreatePed.z)
    SetBlipSprite(blip, 326)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.7)
    SetBlipAsShortRange(blip, true)
    SetBlipColour(blip, 6)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("~b~[Nghề Nghiệp] Thuê Xe")
    EndTextCommandSetBlipName(blip)

    -- Load ped model
    local pedModel = `s_m_m_migrant_01`
    RequestModel(pedModel)
    while not HasModelLoaded(pedModel) do Wait(0) end

    -- Create Ped
    ped = CreatePed(0, pedModel, Config.CreatePed.x, Config.CreatePed.y, Config.CreatePed.z, Config.CreatePed.w, false, false)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    TaskStartScenarioInPlace( ped, "WORLD_HUMAN_CLIPBOARD", 0, true)

    -- Add et-target interaction
    exports['et-target']:AddTargetEntity(ped, {
        options = {
            {
                event = "et-rental:vehiclelist",
                icon = "fas fa-circle",
                label = "Thuê Xe",
            },
            {
                event = "et-rental:returnvehicle",
                icon = "fas fa-circle",
                label = "Trả xe (Nhận lại 50% giá gốc)",
            },
        },
        distance = 3.5,
    })
end)