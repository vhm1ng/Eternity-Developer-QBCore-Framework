local QBCore = exports['et-core']:GetCoreObject()

RegisterNetEvent("et-phone:server:sendPing", function(id)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Shitter = tonumber(id)
    local Other = QBCore.Functions.GetPlayer(Shitter)
    local HasVPN = Player.Functions.GetItemByName(Config.VPNItem)
    local name = HasVPN and 'Anonymous' or Player.PlayerData.charinfo.firstname

    if not Other then return TriggerClientEvent("QBCore:Notify", src, 'ID không tồn tại!', "error") end

    local info = { type = 'ping', Other = Shitter, Player = src, Name = name, OtherName = Other.PlayerData.charinfo.firstname }
    if Player.PlayerData.citizenid ~= Other.PlayerData.citizenid then
        TriggerClientEvent("et-phone:client:sendNotificationPing", Shitter, info)
        TriggerClientEvent("QBCore:Notify", src, 'Đã gửi yêu cầu', "success")
    else
        TriggerClientEvent("QBCore:Notify", src, 'Bạn không thể tự định vị bản thân!', "error")
    end
end)

RegisterNetEvent("et-phone:server:sendingPing", function(Other, Player, Name, OtherName)
    TriggerClientEvent('et-phone:client:CustomNotification', Player, "PING", OtherName..' Đã đồng ý!', 'fas fa-map-pin', '#b3e0f2', 7500)
    TriggerClientEvent("et-phone:client:sendPing", Other, Name, GetEntityCoords(GetPlayerPed(Player)))
end)