local QBCore = exports['et-core']:GetCoreObject()

RegisterNetEvent('et-requests:ShowMenuData', function(id, time, title, message, trigger, side, parameters, parametersNum)
	TriggerClientEvent('et-requests:ShowMenu', id, source, time, title, message, trigger, side, parameters, parametersNum)
end)

RegisterNetEvent('et-requests:ExecuteClient', function(id, trigger, parameters, parametersNum)
	if parametersNum == 0 or parameters == nil or parametersNum == nil then
		TriggerClientEvent(trigger, id)
	elseif parametersNum == 1 then
		TriggerClientEvent(trigger, id, parameters)
	elseif parametersNum == 2 then
		local param1, param2 = parameters:match("([^,]+),([^,]+)")
		TriggerClientEvent(trigger, id, param1, param2)
	elseif parametersNum == 3 then
		local param1, param2, param3 = parameters:match("([^,]+),([^,]+),([^,]+)")
		TriggerClientEvent(trigger, id, param1, param2, param3)
	elseif parametersNum == 4 then
		local param1, param2, param3, param4 = parameters:match("([^,]+),([^,]+),([^,]+),([^,]+)")
		TriggerClientEvent(trigger, id, param1, param2, param3, param4)
	elseif parametersNum == 5 then
		local param1, param2, param3, param4, param5 = parameters:match("([^,]+),([^,]+),([^,]+),([^,]+),([^,]+)")
		TriggerClientEvent(trigger, id, param1, param2, param3, param4, param5)
	end
end)

RegisterNetEvent('et-requests:AcceptedMessage', function(id)
	local Player = QBCore.Functions.GetPlayer(source)
	local FullName = Player.PlayerData.charinfo.firstname.. " "..Player.PlayerData.charinfo.lastname
	TriggerClientEvent('QBCore:Notify', id, FullName.." đã chấp nhận yêu cầu!", 'success')
	
end)

RegisterNetEvent('et-requests:DeniedMessage', function(id)
	local Player = QBCore.Functions.GetPlayer(source)
	local FullName = Player.PlayerData.charinfo.firstname.. " "..Player.PlayerData.charinfo.lastname
	TriggerClientEvent('QBCore:Notify', id, FullName.." đã từ chối!", 'error')
end)

RegisterNetEvent('et-requests:ExpiredMessage', function(id)
	local Player = QBCore.Functions.GetPlayer(source)
	local FullName = Player.PlayerData.charinfo.firstname.. " "..Player.PlayerData.charinfo.lastname
	TriggerClientEvent('QBCore:Notify', id, FullName.." đã không trả lời yêu cầu!", 'warning')
end)

RegisterNetEvent('et-requests:BlockedMessage', function(id)
	local Player = QBCore.Functions.GetPlayer(source)
	local FullName = Player.PlayerData.charinfo.firstname.. " "..Player.PlayerData.charinfo.lastname
	TriggerClientEvent('QBCore:Notify', id, FullName.." đang chặn yêu cầu từ người ngoài!", 'error')
end)

RegisterNetEvent('et-requests:SomeoneTriedMessage', function(id)
	local Player = QBCore.Functions.GetPlayer(id)
	local FullName = Player.PlayerData.charinfo.firstname.. " "..Player.PlayerData.charinfo.lastname
	TriggerClientEvent('QBCore:Notify', source, FullName.." đang cố gắng gửi yêu cầu cho bạn, hãy bật yêu cầu để nhận thông báo!")
end)



