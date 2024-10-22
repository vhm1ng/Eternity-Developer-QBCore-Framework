local QBCore = exports['et-core']:GetCoreObject()

-- Functions

local function findVehFromPlateAndLocate(plate)
    local gameVehicles = QBCore.Functions.GetVehicles()
    for i = 1, #gameVehicles do
        local vehicle = gameVehicles[i]
        if DoesEntityExist(vehicle) then
            if QBCore.Functions.GetPlate(vehicle) == plate then
                local vehCoords = GetEntityCoords(vehicle)
                SetNewWaypoint(vehCoords.x, vehCoords.y)
                return true
            end
        end
    end
end

-- NUI Callback

RegisterNUICallback('SetupGarageVehicles', function(_, cb)
    QBCore.Functions.TriggerCallback('et-phone:server:GetGarageVehicles', function(vehicles)
        cb(vehicles)
    end)
end)

RegisterNUICallback('gps-vehicle-garage', function(data, cb)
    local veh = data.veh
    if veh.state == 'In' then
        if veh.parkingspot then
            SetNewWaypoint(veh.parkingspot.x, veh.parkingspot.y)
            QBCore.Functions.Notify("Xe của bạn đã được đính vị", "success")
        end
    elseif veh.state == 'Out' and findVehFromPlateAndLocate(veh.plate) then
        QBCore.Functions.Notify("Xe của bạn đã được đính vị", "success")
    else
        QBCore.Functions.Notify("Xe của bạn không thể đính vị", "error")
    end
    cb("ok")
end)

RegisterNUICallback('sellVehicle', function(data, cb)
    TriggerServerEvent('et-phone:server:sendVehicleRequest', data)
    cb("ok")
end)

-- Events

RegisterNetEvent('et-phone:client:sendVehicleRequest', function(data, seller)
    local success = exports['et-phone']:PhoneNotification("VEHICLE SALE", 'Purchase '..data.plate..' for $'..data.price, 'fas fa-map-pin', '#b3e0f2', "NONE", 'fas fa-check-circle', 'fas fa-times-circle')
    if success then
        TriggerServerEvent("et-phone:server:sellVehicle", data, seller, 'accepted')
    else
        TriggerServerEvent("et-phone:server:sellVehicle", data, seller, 'denied')
    end
end)

RegisterNetEvent('et-phone:client:updateGarages', function()
    SendNUIMessage({
        action = "UpdateGarages",
    })
end)
