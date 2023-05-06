-- local function Notify(text, type, length)
--     type = type or 'primary'
--     length = length or 5000
--     SendNUIMessage({
-- 		text = text,
--         type = type,
-- 		length = length
-- 	})
-- end
-- exports('Notify', Notify)
-- RegisterNetEvent(("%s:Notify"):format(GetCurrentResourceName()), Notify)

RegisterNetEvent("et-notify:client:sendAlert", function(data)
	SendAlert(data.type, data.text, data.length)
end)

RegisterNetEvent("et-notify:client:sendPoliceNotification", function(data)
	SendPoliceNotification(data.type, data.text)
end)
-- RegisterCommand('testnotify', function()
--     TriggerEvent("et-notify:client:testNotifications")
-- end, false)
RegisterNetEvent("et-notify:client:testNotifications", function()
	SendAlert(
		"primary",
		"This is just to test to see what it looks like when you have a really really really really really really really really really really really really long message"
	)
	Wait(500)
	SendAlert("success", "This is a success alert!", 3000)
	Wait(500)
	SendAlert("error", "This is an error alert!", 3000)
	Wait(500)
	SendAlert("primary", "This is an inform alert!", 3000)
	Wait(500)
	SendAlert("police", "This is a police alert!", 3000)
end)

function SendPoliceNotification(type, text)
	SendNUIMessage({
		type = type,
		text = text,
		length = 3000,
	})
end

function SendAlert(type, text, length, style)
	SendNUIMessage({
		type = type,
		text = text,
		length = length,
		style = style,
	})
end

function ReciveAlert(data)
	SendAlert(data.type, data.text, data.length, data.style)
end

exports("SendAlert", ReciveAlert)