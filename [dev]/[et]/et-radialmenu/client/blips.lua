RegisterNetEvent("et-radialmenu:client:togglegas", function()
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1500
	local closestLocation

	for _, v in pairs(Config.GasStations) do
		local dist = GetDistanceBetweenCoords(coords, v)

		if dist < closest then
			closest = dist
            closestLocation = v
        end
    end
    SetNewWaypoint(closestLocation)
	QBCore.Functions.Notify('Closest location marked', 'primary', 2500)
end)

RegisterNetEvent("et-radialmenu:client:togglebarber", function()
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1500
	local closestLocation

	for _, v in pairs(Config.BarberShops) do
		local dist = GetDistanceBetweenCoords(coords, v)
		if dist < closest then
			closest = dist
			closestLocation = v
		end
    end
    SetNewWaypoint(closestLocation)
	QBCore.Functions.Notify('Closest location marked', 'primary', 2500)
end)

RegisterNetEvent("et-radialmenu:client:toggleclothing", function()
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1500
	local closestLocation

	for _, v in pairs(Config.Clothing) do
		local dist = GetDistanceBetweenCoords(coords, v)
		if dist < closest then
			closest = dist
			closestLocation = v
		end
    end
    SetNewWaypoint(closestLocation)
	QBCore.Functions.Notify('Closest location marked', 'primary', 2500)
end)

RegisterNetEvent("et-radialmenu:client:togglegun", function()
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1500
	local closestLocation

	for _, v in pairs(Config.Gun) do
		local dist = GetDistanceBetweenCoords(coords, v)
		if dist < closest then
			closest = dist
			closestLocation = v
		end
    end
    SetNewWaypoint(closestLocation)
	QBCore.Functions.Notify('Closest location marked', 'primary', 2500)
end)

RegisterNetEvent("et-radialmenu:client:togglestores", function()
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1500
	local closestLocation

	for _, v in pairs(Config.Stores) do
		local dist = GetDistanceBetweenCoords(coords, v)
		if dist < closest then
			closest = dist
			closestLocation = v
		end
    end
    SetNewWaypoint(closestLocation)
	QBCore.Functions.Notify('Closest location marked', 'primary', 2500)
end)

RegisterNetEvent("et-radialmenu:client:toggleyoutool", function()
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1500
	local closestLocation

	for _, v in pairs(Config.Youtool) do
		local dist = GetDistanceBetweenCoords(coords, v)
		if dist < closest then
			closest = dist
			closestLocation = v
		end
    end
    SetNewWaypoint(closestLocation)
	QBCore.Functions.Notify('Closest location marked', 'primary', 2500)
end)

RegisterNetEvent("et-radialmenu:client:toggleToathichinh", function()
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1500
	local closestLocation

	for _, v in pairs(Config.Toathichinh) do
		local dist = GetDistanceBetweenCoords(coords, v)
		if dist < closest then
			closest = dist
			closestLocation = v
		end
    end
    SetNewWaypoint(closestLocation)
	QBCore.Functions.Notify('Closest location marked', 'primary', 2500)
end)
