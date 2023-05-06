RegisterNetEvent('et-radialmenu:server:RemoveStretcher', function(pos, stretcherObject)
    TriggerClientEvent('et-radialmenu:client:RemoveStretcherFromArea', -1, pos, stretcherObject)
end)

RegisterNetEvent('et-radialmenu:Stretcher:BusyCheck', function(id, type)
    TriggerClientEvent('et-radialmenu:Stretcher:client:BusyCheck', id, source, type)
end)

RegisterNetEvent('et-radialmenu:server:BusyResult', function(isBusy, otherId, type)
    TriggerClientEvent('et-radialmenu:client:Result', otherId, isBusy, type)
end)