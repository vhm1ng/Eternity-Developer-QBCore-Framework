RegisterNetEvent('vhming-idcard:server:sendData', function(src,metadata)
    if metadata.mugShot ~= 'none' then
        lib.callback('vhming-idcard:client:callBack:getClosestPlayer', src, function(player)
            if player ~= 0 then
                TriggerClientEvent('vhming-idcard:client:notifyOx', src, {
                    title = 'You showed your idcard', 
                    desc = 'You are showing your ID Card to the closest player',
                    icon = 'id-card',
                    iconColor = 'green'
                })
                src = player
            end
            TriggerClientEvent('vhming-idcard:client:sendData', src, metadata)
        end)
        TriggerClientEvent('vhming-idcard:client:startAnim', src, metadata.cardtype)
    else
        NewMetaDataLicense(src,metadata.cardtype)
    end
end)

for k,_ in pairs(Config.Licenses) do
    CreateRegisterItem(k)
end