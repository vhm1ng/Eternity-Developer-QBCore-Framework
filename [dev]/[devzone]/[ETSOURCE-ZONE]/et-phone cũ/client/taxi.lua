local QBCore = exports['et-core']:GetCoreObject()

RegisterNUICallback('GetAvailableTaxiDrivers', function(_, cb)
    QBCore.Functions.TriggerCallback('et-phone:server:GetAvailableTaxiDrivers', function(drivers)
        cb(drivers)
    end)
end)