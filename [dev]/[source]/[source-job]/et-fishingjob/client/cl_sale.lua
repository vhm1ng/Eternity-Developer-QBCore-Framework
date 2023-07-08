local ped

CreateThread(function()
    -- Blip
    local blip = AddBlipForCoord(Shared.SellLocation.x, Shared.SellLocation.y, Shared.SellLocation.z)
    SetBlipSprite (blip, 628)
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 0.7)
    SetBlipAsShortRange(blip, true)
    SetBlipColour(blip, 3)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Chợ bán cá")
    EndTextCommandSetBlipName(blip)

    -- Load ped model
    local pedModel = `s_m_m_migrant_01`
    RequestModel(pedModel)
    while not HasModelLoaded(pedModel) do Wait(0) end

    -- Create Ped
    ped = CreatePed(0, pedModel, Shared.SellLocation.x, Shared.SellLocation.y, Shared.SellLocation.z, Shared.SellLocation.w, false, false)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_CLIPBOARD", 0, true)

    -- Add et-target interaction
    exports['et-target']:AddTargetEntity(ped, {
        options = {
            {
                type = "server",
                event = "et-fishing:server:SellFish",
                icon = 'fas fa-hand-holding-dollar',
                label = 'Bán cá',
            }
        },
        distance = 1.5,
    })
end)
