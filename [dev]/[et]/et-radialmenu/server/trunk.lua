local QBCore = exports['et-core']:GetCoreObject()
local trunkBusy = {}

RegisterNetEvent('et-radialmenu:trunk:server:Door', function(open, plate, door)
    TriggerClientEvent('et-radialmenu:trunk:client:Door', -1, plate, door, open)
end)

RegisterNetEvent('et-trunk:server:setTrunkBusy', function(plate, busy)
    trunkBusy[plate] = busy
end)

RegisterNetEvent('et-trunk:server:KidnapTrunk', function(targetId, closestVehicle)
    TriggerClientEvent('et-trunk:client:KidnapGetIn', targetId, closestVehicle)
end)

QBCore.Functions.CreateCallback('et-trunk:server:getTrunkBusy', function(_, cb, plate)
    if trunkBusy[plate] then cb(true) return end
    cb(false)
end)

QBCore.Commands.Add("getintrunk", Lang:t("general.getintrunk_command_desc"), {}, false, function(source)
    TriggerClientEvent('et-trunk:client:GetIn', source)
end)

QBCore.Commands.Add("putintrunk", Lang:t("general.putintrunk_command_desc"), {}, false, function(source)
    TriggerClientEvent('et-trunk:server:KidnapTrunk', source)
end)