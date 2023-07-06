QBCore = nil
local tableDsBs = {}
local QBCore = exports['et-core']:GetCoreObject()

RegisterNetEvent('vhming-ping:requestForServerP')
AddEventHandler('vhming-ping:requestForServerP', function(coords)
    local src = source
    for k, v in pairs(tableDsBs) do
        if v.id == source then
            table.remove(tableDsBs, k)
        end
    end
    
    table.insert(tableDsBs, {id = source, name = GetPlayerName(source), phonenumber = QBCore.Functions.GetPlayer(src).PlayerData.charinfo.phone,status = 0, cords = coords,receiver_name = 'Chưa Nhận',receiver = nil})
    local xPlayers = QBCore.Functions.GetPlayers()
    for i=1, #xPlayers, 1 do
        local xPlayer = QBCore.Functions.GetPlayer(xPlayers[i])
        if xPlayer.PlayerData.job.name == 'ambulance' then
            TriggerClientEvent('vhming-ping:getDataFromServerP', xPlayers[i], tableDsBs)
            TriggerClientEvent("QBCore:Notify",src, "Bạn đã gọi bệnh viện ETERNITY HOSPITAL",'success',3000)
            TriggerClientEvent("QBCore:Notify",xPlayers[i], GetPlayerName(source).." vừa gọi Bác sĩ ",'success',3000)
            TriggerClientEvent('InteractSound_CL:PlayOnOne', xPlayers[i], 'pingbs', 0.5)
            TriggerClientEvent('vhming-ping:dataInitP',xPlayers[i])
        end
    end
end)

RegisterServerEvent("vhming-ping:updateP")
AddEventHandler("vhming-ping:updateP", function(id)
    local src = source
    local text = GetPlayerName(source)
    for k, v in pairs(tableDsBs) do
        if tonumber(v.id) == tonumber(id) then
            if v.status == 0 then
                tableDsBs[k].receiver = src
                tableDsBs[k].status = 1
                tableDsBs[k].receiver_name = GetPlayerName(source)

                local xPlayers = QBCore.Functions.GetPlayers()
                for i=1, #xPlayers, 1 do
                    local xPlayer = QBCore.Functions.GetPlayer(xPlayers[i])
                    if xPlayer.PlayerData.job.name == 'ambulance' then
                        TriggerClientEvent('vhming-ping:getDataFromServerP',  xPlayers[i], tableDsBs)
                        TriggerClientEvent("QBCore:Notify",xPlayers[i], GetPlayerName(source).." đã nhận "..GetPlayerName(id),'success',3000,'success',3000)
                        TriggerClientEvent('vhming-ping:dataInitP',xPlayers[i])
                    end
                end
                TriggerClientEvent("QBCore:Notify", source, "Bạn đã nhận "..GetPlayerName(id),'success',3000)
            end
        end
    end
end)

RegisterNetEvent('vhming-ping:cancelP')
AddEventHandler('vhming-ping:cancelP',function(id)
    for k, v  in pairs(tableDsBs) do
        if tonumber(v.id) == tonumber(id) then
            tableDsBs[k].status = 0
            local xPlayers = QBCore.Functions.GetPlayers()
            for i=1, #xPlayers, 1 do
                local xPlayer = QBCore.Functions.GetPlayer(xPlayers[i])
                if xPlayer.PlayerData.job.name == 'ambulance' then
                    TriggerClientEvent('vhming-ping:getDataFromServerP',  xPlayers[i], tableDsBs)
                    TriggerClientEvent("QBCore:Notify",xPlayers[i], GetPlayerName(source).." đã hủy yêu cầu của "..GetPlayerName(id),'success',3000)
                    TriggerClientEvent('vhming-ping:dataInitP',xPlayers[i])
                end
            end
        end
    end
end)

RegisterNetEvent('vhming-ping:removeP')
AddEventHandler('vhming-ping:removeP',function(id)
    local src = source
    for k, v in pairs(tableDsBs) do
        if tonumber(v.id) == tonumber(id) then
            table.remove(tableDsBs,k)
            local xPlayers = QBCore.Functions.GetPlayers()
            for i=1, #xPlayers, 1 do
                local xPlayer = QBCore.Functions.GetPlayer(xPlayers[i])
                if xPlayer.PlayerData.job.name == 'ambulance' then
                    TriggerClientEvent('QBCore:Notify',xPlayers[i], GetPlayerName(src)..' đã xóa yêu cầu của '..GetPlayerName(id),'success',3000)
                    TriggerClientEvent('vhming-ping:getDataFromServerP',  xPlayers[i], tableDsBs)
                    TriggerClientEvent('vhming-ping:dataInitP',xPlayers[i])
                end
            end
        end
    end
end)


RegisterNetEvent('vhming-ping:requestRemoveP')
AddEventHandler('vhming-ping:requestRemoveP',function()
    local src = source
    for k,v in pairs(tableDsBs) do
        if tonumber(v.id) == tonumber(src) then
            table.remove(tableDsBs,k)
            local xPlayers = QBCore.Functions.GetPlayers()
            for i=1, #xPlayers, 1 do
                local xPlayer = QBCore.Functions.GetPlayer(xPlayers[i])
                if xPlayer.PlayerData.job.name == 'ambulance' then
                    TriggerClientEvent('QBCore:Notify',xPlayers[i], GetPlayerName(src)..' đã tự hủy yêu cầu Med','success',3000)
                    TriggerClientEvent('vhming-ping:getDataFromServerP',  xPlayers[i], tableDsBs)
                    TriggerClientEvent('vhming-ping:dataInitP',xPlayers[i])
                end
            end
            TriggerClientEvent('QBCore:Notify',src,'Bạn đã hủy yêu cầu thành công','success',3000)
        end
    end
end)



