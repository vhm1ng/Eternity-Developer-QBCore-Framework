QSPhone.RegisterServerCallback("qs-smartphone:getCars", function(a, b)
    if Config.Framework == 'ESX' then
        local player = ESX.GetPlayerFromId(source)
        MySQL.Async.execute("SELECT plate, vehicle, stored FROM owned_vehicles WHERE `owner` = @cid and `type` = @type", {["@cid"] = c.identifier, ["@type"] = "car"}, function(d)
            local e = {}
            for f, g in ipairs(d) do
                table.insert(e, {["garage"] = g["stored"], ["plate"] = g["plate"], ["props"] = json.decode(g["vehicle"])})
            end
            b(e)
        end)
    elseif Config.Framework == 'QBCore' then
        local player = GetPlayerFromIdFramework(source) 
        MySQL.Async.execute("SELECT plate, vehicle, stored FROM player_vehicles WHERE `citizenid` = @cid and `type` = @type", {["@cid"] = player.citizenid, ["@type"] = "car"}, function(d)
            local e = {} 
            for f, g in ipairs(d) do
                table.insert(e, {["garage"] = g["stored"], ["plate"] = g["plate"], ["props"] = json.decode(g["vehicle"])})
            end
            b(e)
        end)
    end
end)

RegisterServerEvent("qs-smartphone:finish")
AddEventHandler("qs-smartphone:finish", function(a)
    if Config.Framework == 'ESX' then
        local b = source;
        local c = ESX.GetPlayerFromId(b)
        if c.getAccount('bank').money >= Config.ValetPrice then
            TriggerClientEvent("qs-smartphone:sendMessage", b,  Config.ValetPrice .. Lang("GARAGE_PAY"), 'error')
            c.removeAccountMoney("bank", Config.ValetPrice)
        end
    elseif Config.Framework == 'QBCore' then
        local b = source;
        local player = GetPlayerFromIdFramework(b)
        if player and player.PlayerData.money['bank'] >= Config.ValetPrice then
            TriggerClientEvent("qs-smartphone:sendMessage", b,  Config.ValetPrice .. Lang("GARAGE_PAY"), 'error')
            player.Functions.RemoveMoney('bank', Config.ValetPrice)
        end
    end
end)

RegisterServerEvent("qs-smartphone:valetCarSetOutside")
AddEventHandler("qs-smartphone:valetCarSetOutside", function(a)
    if Config.Framework == 'ESX' then
        local b = source;
        local c = ESX.GetPlayerFromId(b)
        MySQL.Async.execute("UPDATE owned_vehicles SET `stored` = @stored WHERE `plate` = @plate", {["@plate"] = a, ["@stored"] = 0})
    elseif Config.Framework == 'QBCore' then
        local b = source;
        MySQL.Async.execute("UPDATE " .. Config.QBCoreFrameworkVehiclesTable .. " SET `state` = @state WHERE `plate` = @plate", {["@plate"] = a, ["@state"] = 0})
    end
end)

RegisterServerEvent("qs-smartphone:getInfoPlate")
AddEventHandler("qs-smartphone:getInfoPlate", function(plaka)
    if Config.Framework == 'ESX' then
        local src = source;
        local xPlayer = ESX.GetPlayerFromId(src)
      
        local veh_datastore = MySQL.Sync.fetchAll("SELECT * FROM owned_vehicles WHERE `owner` ='"..xPlayer.identifier.."' AND `plate` ='"..plaka.."' ", {})
        if veh_datastore and veh_datastore[1] then 
            if veh_datastore[1].modelname then 
                TriggerClientEvent("qs-smartphone:vehSpawn", src, veh_datastore[1].vehicle, veh_datastore[1].modelname, veh_datastore[1].plate)
            else 
                TriggerClientEvent("qs-smartphone:vehSpawn", src, veh_datastore[1].vehicle, nil, veh_datastore[1].plate)
            end
        end
    elseif Config.Framework == 'QBCore' then
        local src = source;
        local player = GetPlayerFromIdFramework(src)
      
        local veh_datastore = MySQL.Sync.fetchAll("SELECT mods, vehicle, plate FROM " .. Config.QBCoreFrameworkVehiclesTable .. " WHERE `citizenid` ='"..player.citizenid.."' AND `plate` ='"..plaka.."' ", {})
        if veh_datastore and veh_datastore[1] then
            TriggerClientEvent("qs-smartphone:vehSpawn", src, veh_datastore[1].mods, veh_datastore[1].vehicle, veh_datastore[1].plate)
        end
    end
end)

QSPhone.RegisterServerCallback("qs-smartphone:enoughMoney", function(a, cb)
    if Config.Framework == 'ESX' then
        local b = source
        local c = ESX.GetPlayerFromId(b)
        if c.getAccount('bank').money >= Config.ValetPrice then
            cb(true)
        else 
            cb(false)
        end
    elseif Config.Framework == 'QBCore' then
        local b = source
        local player = GetPlayerFromIdFramework(b)
        if player and player.PlayerData.money['bank'] >= Config.ValetPrice then
            cb(true)
        else 
            cb(false)
        end
    end
end)