local notified = false
local currentText = ""

function Open(message, color, position)
	if not notified or message ~= currentText then
		SendNUIMessage({
			action = 'open',
			message = message,
			color = color,
			position = position,
		})
		currentText = message
		notified = true
	end
end

function KeyPressed()
	SendNUIMessage({
		action = 'close'
	})
	-- without the notified = false, because if the player presses the key, the script will close the UI, but the player being in range of the marker, the UI will open again
end

function Close()
	SendNUIMessage({
		action = 'close'
	})
	currentText = ""
	notified = false
end

RegisterNetEvent('okokTextUI:Open')
AddEventHandler('okokTextUI:Open', function(message, color, position)
	Open(message, color, position)
end)

RegisterNetEvent('okokTextUI:Close')
AddEventHandler('okokTextUI:Close', function()
	Close()
end)

RegisterNetEvent('okokTextUI:KeyPressed')
AddEventHandler('okokTextUI:KeyPressed', function()
	KeyPressed()
end)
