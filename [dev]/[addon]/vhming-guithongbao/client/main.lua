RegisterNetEvent('guiThongBao')
AddEventHandler('guiThongBao', function(message)
  cardOpen = true
  SendNUIMessage({
    action = 'open',
    message = message
  })
end)

Citizen.CreateThread(function()
  while true do
    Wait(0)
    if IsControlPressed(0, 322) or IsControlPressed(0, 177) and cardOpen then
      SendNUIMessage({
        action = "close"
      })
      cardOpen = false
    end
  end
end)
