

RegisterNetEvent('vhming_tbao:showInput')
AddEventHandler('vhming_tbao:showInput', function()
    SendNUIMessage({
        action = 'open'
    })
    SetNuiFocus(true, true)
end)

RegisterNUICallback('toggle', function(data)
    SetNuiFocus(false,false)
end)

RegisterNUICallback('sendData',function(data)
    TriggerServerEvent('vhming_tbao:showTBAO',data.text)
end)

RegisterNetEvent('vhming_tbao:client:showTbao',function(text)
    SendNUIMessage({
        action = 'tbao',
        text = text
    })
end)

RegisterNetEvent('vhming_tbao:hideTbao',function()
    SendNUIMessage({
        action = 'display'
    })
end)