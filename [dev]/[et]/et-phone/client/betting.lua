local QBCore = exports['et-core']:GetCoreObject()

-- NUI Callback

RegisterNUICallback('CasinoAddBet', function(data, cb)
    TriggerServerEvent('et-phone:server:CasinoAddBet', data)
    cb("ok")
end)

RegisterNetEvent('et-phone:client:addbetForAll', function(data)
    SendNUIMessage({
        action = "BetAddToApp",
        datas = data,
    })
end)

RegisterNUICallback('BettingAddToTable', function(data, cb)
    TriggerServerEvent('et-phone:server:BettingAddToTable', data)
    cb("ok")
end)

RegisterNUICallback('CasinoDeleteTable', function(_, cb)
    TriggerServerEvent('et-phone:server:DeleteAndClearTable')
    cb("ok")
end)

RegisterNUICallback('CheckHasBetTable', function(_, cb)
    QBCore.Functions.TriggerCallback('et-phone:server:CheckHasBetTable', function(HasTable)
        cb(HasTable)
    end)
end)

RegisterNUICallback('casino_status', function(_, cb)
    TriggerServerEvent('et-phone:server:casino_status')
    cb("ok")
end)

RegisterNUICallback('CheckHasBetStatus', function(_, cb)
    QBCore.Functions.TriggerCallback('et-phone:server:CheckHasBetStatus', function(HasStatus)
        cb(HasStatus)
    end)
end)

RegisterNUICallback('WineridCasino', function(data, cb)
    TriggerServerEvent('et-phone:server:WineridCasino', data)
    cb("ok")
end)