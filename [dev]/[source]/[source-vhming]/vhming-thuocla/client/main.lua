local QBCore = exports['et-core']:GetCoreObject()

RegisterNetEvent('vhming-thuocla:client:kiemtrabatlua', function()
    local hasItem = QBCore.Functions.HasItem('lighter')
    if hasItem then
        TriggerEvent('vhming-thuocla:client:sudungthuocla')
        else
            QBCore.Functions.Notify(Lang:t('thuocla.khongcobatlua'), "error")
        end
end)


RegisterNetEvent('vhming-thuocla:client:sudungthuocla', function()
    local hasItem = QBCore.Functions.HasItem('lighter')
        if hasItem then
            QBCore.Functions.Progressbar("hutthuocla", Lang:t('thuocla.hutthuocla'), 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "amb@world_human_aa_smoke@male@idle_a",
                anim = "idle_c",
                flags = 49,
            }, {}, {}, function() -- Done
                -- TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["thuocla"], "remove")
                TriggerServerEvent('hud:server:RelieveStress', 30)
            end)
        else
            QBCore.Functions.Notify(Lang:t('thuocla.khongcobatlua'), "error")
    end 
end)