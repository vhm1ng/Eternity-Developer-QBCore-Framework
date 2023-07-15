local QBCore = exports['et-core']:GetCoreObject()

-- NUI Callback

RegisterNUICallback('GetCurrentLawyers', function(data, cb)
    QBCore.Functions.TriggerCallback('et-phone:server:GetCurrentLawyers', function(lawyers)
        cb(lawyers)
    end)
end)