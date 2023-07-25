local QBCore = exports['et-core']:GetCoreObject()

CreateThread(function()
    while true do
        Wait(1000)
        GenerateVehicleList()
        Wait((1000 * 60) * 60)
    end
end)

RegisterNetEvent('vhming-scrapyard:server:LoadVehicleList', function()
    local src = source
    TriggerClientEvent("et-scapyard:client:setNewVehicles", src, Config.CurrentVehicles)
end)


QBCore.Functions.CreateCallback('vhming-scrapyard:checkOwnerVehicle', function(_, cb, plate)
    local result = MySQL.scalar.await("SELECT `plate` FROM `player_vehicles` WHERE `plate` = ?",{plate})
    if result then
        cb(false)
    else
        cb(true)
    end
end)


RegisterNetEvent('vhming-scrapyard:server:ScrapVehicle', function(listKey)
    print("alo1")
    local src = source
    print("alo1")
    local Player = QBCore.Functions.GetPlayer(src)
    print("alo1")
    -- if Config.CurrentVehicles[listKey] ~= nil then
        print("alo1")
        for _ = 1, math.random(2, 4), 1 do
            print("alo1")
            local item = Config.Items[math.random(1, #Config.Items)]
            print("alo1")
            Player.Functions.AddItem(item, math.random(25, 45))
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
            Wait(500)
        end
        local Luck = math.random(1, 8)
        local Odd = math.random(1, 8)
        if Luck == Odd then
            local random = math.random(10, 20)
            Player.Functions.AddItem("rubber", random)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["rubber"], 'add')

        end
        -- Config.CurrentVehicles[listKey] = nil
        -- TriggerClientEvent("et-scapyard:client:setNewVehicles", -1, Config.CurrentVehicles)
    -- end
end)

function GenerateVehicleList()
    Config.CurrentVehicles = {}
    for i = 1, Config.VehicleCount, 1 do
        local randVehicle = Config.Vehicles[math.random(1, #Config.Vehicles)]
        if not IsInList(randVehicle) then
            Config.CurrentVehicles[i] = randVehicle
        end
    end
    TriggerClientEvent("et-scapyard:client:setNewVehicles", -1, Config.CurrentVehicles)
end

function IsInList(name)
    local retval = false
    if Config.CurrentVehicles ~= nil and next(Config.CurrentVehicles) ~= nil then
        for k in pairs(Config.CurrentVehicles) do
            if Config.CurrentVehicles[k] == name then
                retval = true
            end
        end
    end
    return retval
end
