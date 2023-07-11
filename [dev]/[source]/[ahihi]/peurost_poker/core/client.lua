Citizen.CreateThread(function()
	while not NetworkIsSessionStarted() do Wait(10) end
	Citizen.Wait(500)
	TriggerServerEvent("peu_poker:loadTables")
end)

local currentTable = -1
local tables = {}
local tableObjects = {}
local sitPos = nil
local initialViewMode = 0

-- [[ FUNCTIONS ]]
function spawnTables()
	for k, v in ipairs(tables) do
		if tableObjects[v.id] ~= nil then deleteTable(v) end
		SpawnLocalObject(Config.TableModel, v.pos, function(object)
			tableObjects[v.id] = {table = object}
			spawnChairs(tables[k])
			FreezeEntityPosition(object, true)
			SetEntityAsMissionEntity(object, true, true)
			_print("PEU_POKER || DEBUG || Created table at "..json.encode(v.pos).. " with object ID: "..object)
		end)
	end
end

function spawnTable(_table, key)
	if tableObjects[tables[key].id] ~= nil then deleteTable(_table) end
	SpawnLocalObject(Config.TableModel, _table.pos, function(object)
		tableObjects[tables[key].id] = {table = object}
		spawnChairs(tables[key])
		FreezeEntityPosition(object, true)
		SetEntityAsMissionEntity(object, true, true)
		_print("PEU_POKER || DEBUG || Created table at "..json.encode(_table.pos).. " with object ID: "..object)
	end)
end

Citizen.CreateThread(function()
    Poker = AddBlipForCoord(vector3(163.85, -985.63, 30.9))
    SetBlipSprite (Poker, 276)
    SetBlipDisplay(Poker, 4)
    SetBlipScale  (Poker, 1.0)
    SetBlipAsShortRange(Poker, true)
    SetBlipColour(Poker, 1)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName('Bàn Poker Thanoss')
    EndTextCommandSetBlipName(Poker)
end)

function spawnChairs(pTable)
	tableObjects[pTable.id].chairs = {}
	local pos = pTable.pos
	for i = 1, pTable.maxPlayers, 1 do
		local offset = Config.ChairOffsets[i]
		local coords = vector3(pos.x + offset.pos.x, pos.y + offset.pos.y, pos.z + offset.pos.z)
		SpawnLocalObject(Config.ChairModel, coords, function(object)
			table.insert(tableObjects[pTable.id].chairs, object)
			FreezeEntityPosition(object, true)
			SetEntityAsMissionEntity(object, true, true)
			SetEntityHeading(object, offset.head)
		end)
	end
end

function deleteTable(pTable)
	RemoveObject(tableObjects[pTable.id].table)
	if tableObjects[pTable.id].chairs ~= {} and tableObjects[pTable.id].chairs ~= nil then 
		for k, v in ipairs(tableObjects[pTable.id].chairs) do
			RemoveObject(v)
		end
	end
	if currentTable == pTable.id then
		SendNUIMessage({
			type = "close"
		})
		currentTable = -1
	end
end

function showUI(pTable)
	SetNuiFocus(true, true)
	SendNUIMessage({
		type = "open",
		data = pTable
	})
end

function sitOnChair(chairNum, state)
	local playerPed = PlayerPedId()
	if not state then
		ClearPedTasks(playerPed)
		FreezeEntityPosition(playerPed, false)
		Citizen.Wait(500)
		SetEntityCoords(PlayerPedId(), sitPos.x, sitPos.y, sitPos.z, 0, 0, 0, false)
		SetFollowPedCamViewMode(initialViewMode)
	else
		local closest = getClosestTable()
		if closest == nil then return end
		initialViewMode = GetFollowPedCamViewMode()
		SetFollowPedCamViewMode(tonumber("4"))
		sitPos = GetEntityCoords(PlayerPedId())
		local pos = GetEntityCoords(tableObjects[closest.id].chairs[chairNum])
		local objectCoords = pos.x .. pos.y .. pos.z
		FreezeEntityPosition(playerPed, true)
		TaskStartScenarioAtPosition(playerPed, Config.SitData.scenario, pos.x, pos.y, pos.z - Config.SitData.verticalOffset, GetEntityHeading(tableObjects[closest.id].chairs[chairNum]) + Config.SitData.rotation, 8000000, true, true)
	end
end

function getClosestTable()
	local coords = GetEntityCoords(PlayerPedId())
	local closest = nil
	local closestDistance = 100
	for k, v in ipairs(tables) do
		if GetDistanceBetweenCoords(coords, v.pos, true) < closestDistance then
			closest = v
			closestDistance = GetDistanceBetweenCoords(coords, v.pos, true)
		end
	end
	return closest
end

function deleteClosest()
	local closest = getClosestTable()
	if closest == nil then return end
	Callbacks.TriggerServerCallback("peu_poker:deleteTable", function() end, closest.id)
end

function SpawnLocalObject(model, coords, cb)
	local model = (type(model) == 'number' and model or GetHashKey(model))

	Citizen.CreateThread(function()
		loadModel(model)
		local obj = CreateObject(model, coords.x, coords.y, coords.z, false, false, false)
		SetModelAsNoLongerNeeded(model)
		if cb then
			cb(obj)
		end
	end)
end

function loadModel(modelHash, cb)
	modelHash = (type(modelHash) == 'number' and modelHash or GetHashKey(modelHash))
	if not HasModelLoaded(modelHash) and IsModelInCdimage(modelHash) then
		RequestModel(modelHash)

		while not HasModelLoaded(modelHash) do
			Citizen.Wait(1)
		end
	end
	if cb ~= nil then
		cb()
	end
end

function RemoveObject(object)
	SetEntityAsMissionEntity(object, false, true)
	DeleteObject(object)
end

-- [[ THREADS ]]


-- [[ EVENTS ]]
RegisterNetEvent("peu_poker:updateAllTables")
AddEventHandler('peu_poker:updateAllTables', function(_tables)
	tables = _tables
	spawnTables()
end)

RegisterNetEvent("peu_poker:forceLeave")
AddEventHandler("peu_poker:forceLeave", function()
	SendNUIMessage({
		type = "forceLeave"
	})
end)

RegisterNetEvent("peu_poker:createTable")
AddEventHandler("peu_poker:createTable", function()
	local pPos = GetEntityCoords(PlayerPedId())
	Callbacks.TriggerServerCallback("peu_poker:createTable", function()
		_print("PEU_POKER || Creating table...")
	end, vector3(pPos.x, pPos.y, pPos.z - 1))
end)

RegisterNetEvent("peu_poker:deletedTable")
AddEventHandler("peu_poker:deletedTable", function(pTable)
	deleteTable(tables[pTable])
end)

RegisterNetEvent("peu_poker:deleteClosest")
AddEventHandler("peu_poker:deleteClosest", function()
	deleteClosest()
end)

RegisterNetEvent("peu_poker:createdTable")
AddEventHandler("peu_poker:createdTable", function(_table)
	table.insert(tables, _table)
	spawnTable(_table, #tables)
end)

RegisterNetEvent("peu_poker:joiningTable")
AddEventHandler("peu_poker:joiningTable", function()
	local pPos = GetEntityCoords(PlayerPedId())
	local closest = getClosestTable()
	if closest ~= nil then
		local cPos = closest.pos
		if GetDistanceBetweenCoords(pPos, cPos, true) < Config.JoinRange and IsPedInAnyVehicle(PlayerPedId(), false) == false then
			Callbacks.TriggerServerCallback("peu_poker:getTableData", function(pTable)
				currentTable = closest.id
				showUI(pTable)
			end, closest.id)
		end
	end
end)

RegisterNetEvent("peu_poker:updateTablePlayers")
AddEventHandler("peu_poker:updateTablePlayers", function(pTable)
	currentTable = pTable.table.id
	SendNUIMessage({
		type = "update",
		data = pTable
	})
end)

RegisterNetEvent("peu_poker:updatedTable")
AddEventHandler("peu_poker:updatedTable", function(tableID, pTable)
	tables[tableID].name = pTable.name
	tables[tableID].maxPlayers = pTable.maxPlayers
	tables[tableID].smallBlind = pTable.smallBlind
		RemoveObject(tables[tableID].object)
	if tables[tableID].chairs ~= {} and tables[tableID].chairs ~= nil then 
		for k, v in ipairs(tables[tableID].chairs) do
			RemoveObject(v)
		end
	end
	spawnTable(tables[tableID], tableID)
end)

-- [[ UI CALLBACKS ]]
RegisterNUICallback('joinTable', function(data, cb)
	Callbacks.TriggerServerCallback("peu_poker:joinTable", function(pTable, seat)
		if pTable ~= false then
			currentTable = tonumber(pTable.table.id)
			cb(pTable)
			sitOnChair(seat, true)
		else
			cb(false)
		end
	end, data.table)
end)

RegisterNUICallback('leaveTable', function(data, cb)
	Callbacks.TriggerServerCallback("peu_poker:leaveTable", function(pTable)
		if pTable ~= false then
			cb(pTable)
			sitOnChair(-1, false)
		else
			cb(false)
		end
	end, data.table)
end)

RegisterNUICallback('action', function(data, cb)
	TriggerServerEvent("peu_poker:action", data)
	cb("ok")
end)

RegisterNUICallback('updateTable', function(data, cb)
	TriggerServerEvent("peu_poker:updateTable", currentTable, data)
	cb('ok')	
end)

RegisterNUICallback('deleteTable', function(data, cb)
	TriggerServerEvent("peu_poker:deleteTable", data.id)
	cb('ok')
end)

RegisterNUICallback('closeUI', function(data, cb)
	SetNuiFocus(false, false)
	cb('ok')
	currentTable = -1
end)

-- [[ DEBUG ]]

function _print(text)
	if Config.Debug then
		print(text)
	end
end

if Config.Debug then
	RegisterNetEvent("peu_poker:debug:openTable")
	AddEventHandler("peu_poker:debug:openTable", function(pTable)
		showUI(pTable)
	end)

	RegisterNetEvent("peu_poker:debug:getChairOffset")
	AddEventHandler("peu_poker:debug:getChairOffset", function()
		local closest = getClosestTable()
		if closest ~= nil then
			local coords = GetEntityCoords(PlayerPedId())
			local pos = closest.pos
			local offset = vector3(pos.x - coords.x, pos.y - coords.y, pos.z - coords.z)
			print(offset)
			print(GetEntityHeading(PlayerPedId()))
		end
	end)
end

--Cleanup tables

AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then
	  return
	end
	for k, v in ipairs(tables) do
		deleteTable(v)
	end
end) 

Citizen.Trace = function(err)
    if(string.find(err, "SCRIPT ERROR")) then
        print(err)
    end
end

-- [[ CALLBACKS ]]

Callbacks = {}

Callbacks.ServerCallbacks = {}
Callbacks.CurrentRequestId = 0

Callbacks.TriggerServerCallback = function(name, cb, ...)
	Callbacks.ServerCallbacks[Callbacks.CurrentRequestId] = cb
	TriggerServerEvent('peurost_poker:triggerServerCallback', name, Callbacks.CurrentRequestId, ...)

	if Callbacks.CurrentRequestId < 65535 then
		Callbacks.CurrentRequestId = Callbacks.CurrentRequestId + 1
	else
		Callbacks.CurrentRequestId = 0
	end
end

RegisterNetEvent('peurost_poker:serverCallback')
AddEventHandler('peurost_poker:serverCallback', function(requestId, ...)
	Callbacks.ServerCallbacks[requestId](...)
	Callbacks.ServerCallbacks[requestId] = nil
end)