local QBCore = exports['et-core']:GetCoreObject()
local haveTB = false

QBCore.Commands.Add("thongbao", "Thông báo toàn thành phố ", {} , false, function(source,args)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    
    if not haveTB then
        if QBCore.Functions.HasPermission(source, 'admin') then
            TriggerClientEvent('vhming_tbao:showInput',source)
            haveTB = true
            return
        end
        for k,v in pairs(Config.job) do
            if xPlayer.PlayerData.job.name == v.name and xPlayer.PlayerData.job.grade.level == v.level then
                TriggerClientEvent('vhming_tbao:showInput',source)
                return 
            end
        end
    else
        TriggerClientEvent('QBCore:Noify',source,'Đang có thông báo đang chạy','error')
    end
    
end)

RegisterNetEvent('vhming_tbao:showTBAO',function(text)
    if text == nil then
        haveTB = false

        return
    end
    haveTB = true

    TriggerClientEvent('vhming_tbao:client:showTbao',-1,text)
    Wait(60000) -- time tat81 tb
    haveTB = false
    TriggerClientEvent('vhming_tbao:hideTbao',-1)
end)