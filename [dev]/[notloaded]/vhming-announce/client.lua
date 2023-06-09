

RegisterNetEvent('ntk_tbao:showInput')
AddEventHandler('ntk_tbao:showInput', function()
    SendNUIMessage({
        action = 'open'
    })
    SetNuiFocus(true, true)
end)

RegisterNUICallback('toggle', function(data)
    SetNuiFocus(false,false)
end)

RegisterNUICallback('sendData',function(data)
    TriggerServerEvent('ntk_tbao:showTBAO',data.text)
end)

RegisterNetEvent('ntk_tbao:client:showTbao',function(text)
    SendNUIMessage({
        action = 'tbao',
        text = text
    })
end)

RegisterNetEvent('ntk_tbao:hideTbao',function()
    SendNUIMessage({
        action = 'display'
    })
end)