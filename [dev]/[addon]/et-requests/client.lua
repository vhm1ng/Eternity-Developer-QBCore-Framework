local QBCore = exports['et-core']:GetCoreObject()

local responded = false
local blockrequests = false
local source, time, title, message, trigger, ClientOrServer, parameters, parametersNum

-- Request
RegisterNetEvent('et-requests:ShowMenu')
AddEventHandler('et-requests:ShowMenu', function(sourceS, timeS, titleS, messageS, triggerS, ClientOrServerS, parametersS, parametersNumS)
	source, time, title, message, trigger, ClientOrServer, parameters, parametersNum = sourceS, timeS, titleS, messageS, triggerS, ClientOrServerS, parametersS, parametersNumS
	if not blockrequests then
		SetNuiFocus(true, true)
		SendNUIMessage({
			action = 'open',
			title = title,
			message = message,
		})
		responded = false

		local time2 = time - 1

		SetTimeout(time, function()
			time2 = time + 1
		end)
		
		while time > time2 do
			if responded then
				break
			end
			Wait(1)
		end

		if not responded then
			TriggerServerEvent("et-requests:ExpiredMessage", source)
			QBCore.Functions.Notify("Đã hết thời gian yêu cầu", "warning")
			SetNuiFocus(false, false)
			
			SendNUIMessage({
				action = 'close',
			})
		end
	else
		TriggerServerEvent("et-requests:BlockedMessage", source)
		TriggerServerEvent("et-requests:SomeoneTriedMessage", source)
	end
end)

RegisterCommand('chuot', function()

        SetNuiFocus(false, false)

end)

RegisterNUICallback("action", function(data)
	if data.action == "acceptRequest" then
		responded = true
		TriggerServerEvent("et-requests:AcceptedMessage", source)
		-- exports['okokNotify']:Alert("ACCEPTED", "You accepted the request! ", 5000, 'success')
		QBCore.Functions.Notify("Bạn đã chấp nhận yêu cầu của người đó")
		SetNuiFocus(false, false)
		if ClientOrServer:lower() == "server" then
			if parametersNum == 0 or parameters == nil or parametersNum == nil then
				TriggerServerEvent(trigger)
			elseif parametersNum == 1 then
				TriggerServerEvent(trigger, parameters)
			elseif parametersNum == 2 then
				local param1, param2 = parameters:match("([^,]+),([^,]+)")
				TriggerServerEvent(trigger, param1, param2)
			elseif parametersNum == 3 then
				local param1, param2, param3 = parameters:match("([^,]+),([^,]+),([^,]+)")
				TriggerServerEvent(trigger, param1, param2, param3)
			elseif parametersNum == 4 then
				local param1, param2, param3, param4 = parameters:match("([^,]+),([^,]+),([^,]+),([^,]+)")
				TriggerServerEvent(trigger, param1, param2, param3, param4)
			elseif parametersNum == 5 then
				local param1, param2, param3, param4, param5 = parameters:match("([^,]+),([^,]+),([^,]+),([^,]+),([^,]+)")
				TriggerServerEvent(trigger, param1, param2, param3, param4, param5)
			end
		else
			TriggerServerEvent("et-requests:ExecuteClient",source, trigger, parameters, parametersNum)
		end
	elseif data.action == "declineRequest" or data.action == "closeEsc" then
		responded = true
		TriggerServerEvent("et-requests:DeniedMessage", source)
		QBCore.Functions.Notify("Bạn đã từ chối yêu cầu của người đó", "error")
		SetNuiFocus(false, false)
	end
end)

-- Block Request
RegisterCommand("requests", function()
	SetNuiFocus(true, true)
	SendNUIMessage({
		action = 'openblock',
		status = blockrequests,
	})
end, false)

RegisterNUICallback("action", function(data)
	if data.action == "saveBlockRequest" then
		SetNuiFocus(false, false)
		if data.status == "disabled" then
			blockrequests = true
			-- exports['okokNotify']:Alert("REQUESTS", "Requests have been disabled! ", 5000, 'error')
			QBCore.Functions.Notify("Đã chặn các yêu cầu của người ngoài", "error")
		elseif data.status == "enabled" then
			blockrequests = false
			QBCore.Functions.Notify("Đã bật các yêu cầu của người ngoài", "success")
		end
	elseif data.action == "closeBlockRequest" or data.action == "closeBlockEsc" then
		SetNuiFocus(false, false)
	end
end)

-- Triggers
function requestMenu(id, time, title, message, trigger, side, parameters, parametersNum)
	TriggerServerEvent('et-requests:ShowMenuData', id, time, title, message, trigger, side, parameters, parametersNum)
	QBCore.Functions.Notify("Đã gửi yêu cầu cho người đó")

end

RegisterNetEvent('et-requests:RequestMenu')
AddEventHandler('et-requests:RequestMenu', function(id, time, title, message, trigger, side, parameters, parametersNum)
	requestMenu(id, time, title, message, trigger, side, parameters, parametersNum)
end)

