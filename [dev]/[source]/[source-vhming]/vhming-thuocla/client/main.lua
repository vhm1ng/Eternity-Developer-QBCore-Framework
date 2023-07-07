local QBCore = exports['et-core']:GetCoreObject()

RegisterNetEvent('vhming-thuocla:client:sudungthuocla', function()
    QBCore.Functions.Progressbar("hutthuocla", Lang:t('thuocla.hutthuocla'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["thuocla"], "remove")
        TriggerServerEvent('hud:server:RelieveStress', 30)
    end)
end)

RegisterNetEvent('vhming-thuocla:client:sudungthuoc', function()
    QBCore.Functions.Progressbar("hutthuoc", Lang:t('thuocla.hutthuocla'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["thuoc"], "remove")
        TriggerServerEvent('hud:server:RelieveStress', 10)
    end)
end)