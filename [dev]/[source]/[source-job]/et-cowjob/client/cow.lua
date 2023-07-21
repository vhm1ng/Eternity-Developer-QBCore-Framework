local QBCore = exports['et-core']:GetCoreObject()
local spawnedPlants = 0
local farmPlants = {}
local Stations = {}
local inPackingMilkStation = false
RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    inPackingMilkStation = false
	Stations = {}
end)
-- Criar blip para a "Horta"
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(2437.35, 4767.61, 34.32) -- Mudar coordenadas do blip aqui!
	SetBlipSprite(blip, 141) -- Mudar estilo do blip aqui!
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, 0.7)
	SetBlipAsShortRange(blip, true)
	SetBlipColour(blip, 16)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName("~b~[Nghề Nghiệp] Bóp zú bòa") -- Mudar nome do Blip aqui!
    EndTextCommandSetBlipName(blip)
end)

-- Criar blip para o processo
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(2502.120, 4801.250, 43.740) -- Mudar coordenadas do blip aqui!
	SetBlipSprite(blip, 141) -- Mudar estilo do blip aqui!
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, 0.7)
	SetBlipAsShortRange(blip, true)
	SetBlipColour(blip, 16)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName("~b~[Nghề Nghiệp] Đóng hộp sữa") -- Mudar nome do Blip aqui!
    EndTextCommandSetBlipName(blip)
end)

-- Criar blip para venda de alimentos
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(454.92874, -841.5122, 27.647983) -- Mudar coordenadas do blip aqui!
	SetBlipSprite(blip, 648) -- Mudar estilo do blip aqui!
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, 0.7)
	SetBlipAsShortRange(blip, true)
	SetBlipColour(blip, 17)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName("~b~[Nghề Nghiệp] Nướng Thịt Bòa") -- Mudar nome do Blip aqui!
    EndTextCommandSetBlipName(blip)
end)

-- Apanhar Plantas
RegisterNetEvent('lotus-milky:client:Apanhar', function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	local nearbyObject, nearbyID
	for i=1, #farmPlants, 1 do
		if GetDistanceBetweenCoords(coords, GetEntityCoords(farmPlants[i]), false) < 1.2 then
			nearbyObject, nearbyID = farmPlants[i], i
		end
	end
			if nearbyObject and IsPedOnFoot(playerPed) then
				isPickingUp = true
                local ped = PlayerPedId()
                -- local time = math.random(6,10)
                -- local circles = 1
                -- local success = exports['et-ui']:StartLockPickCircle(circles, time, success)
                exports['ps-ui']:Circle(function(success)
                    if success then
                        TaskStartScenarioInPlace(playerPed, 'PROP_HUMAN_BUM_BIN', 0, false)
                        QBCore.Functions.Progressbar('Apanhar', 'Đang bóp zú...',(500*10), false, true, {
                            disableMovement = true, --
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        }, {
                        }, {}, {}, function() 
                            TriggerServerEvent('lotus-milky:server:Apanhar')
                            SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                            ClearPedTasks(playerPed)
                            Wait(1000)  
                        end, function() -- Cancel
                            ClearPedTasks(playerPed) 
                            QBCore.Functions.Notify('Đã hủy.') 
                        end)
                    else    
                        QBCore.Functions.Notify('Bạn bóp nặng tay quá, nhẹ nhẹ thôiii!', 'error')
                    end
                end, 1, 10)
                -- exports.rprogress:MiniGame({
                --     Difficulty = "Easy",
                --     onComplete = function(success)
                --         if success then  
                --             TaskStartScenarioInPlace(playerPed, 'PROP_HUMAN_BUM_BIN', 0, false)
                --             QBCore.Functions.Progressbar('Apanhar', 'Đang bóp zú...', math.random(10000, 10000), false, true, {
                --                 disableMovement = true, --
                --                 disableCarMovement = true,
                --                 disableMouse = false,
                --                 disableCombat = true,
                --             }, {
                --             }, {}, {}, function() 
                --                 TriggerServerEvent('lotus-milky:server:Apanhar')
                --                 SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                --                 ClearPedTasks(playerPed)
                --                 Wait(1000)  
                --             end, function() -- Cancel
                --                 ClearPedTasks(playerPed) 
                --                 QBCore.Functions.Notify('Đã hủy.') 
                --             end)
                --         else
                --             QBCore.Functions.Notify('Bạn bóp nặng tay quá, nhẹ nhẹ thôiii!', 'error')
                --         end    
                --     end
                -- })
            else
                QBCore.Functions.Notify('Quá xa con bòa...', 'error', 3500)
            end
		--else
			--QBCore.Functions.Notify('You dont have a towler!', 'error', 3500)
		--end
	--end, "trowel")

end)

-- Pegar Coordenadas
CreateThread(function()
	while true do
		Wait(10)
		local coords = GetEntityCoords(PlayerPedId())
		if GetDistanceBetweenCoords(coords, Cow.PlantsField, true) < 40 then
			SpawnfarmPlants()
			Wait(500)
		else
			Wait(500)
		end
	end
end)

-- Eliminar Plantas ao Apanhar
AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		for k, v in pairs(farmPlants) do
			DeleteObject(v)
		end
	end
end)
local cd = 0

function CreateCows()
	math.randomseed(GetGameTimer())
    local random = math.random(5, 10)
	local hash2 = GetHashKey(Cow.CowProp)
    RequestModel(hash2)
    while not HasModelLoaded(hash2) do
        Citizen.Wait(1)
    end
    while cd < random do
		Citizen.Wait(1)
		local DEF = GenerateWeedCoords(Cow.NuongthitZones.CowFarm.coords)
		-- print(DEF)
		-- local EEF = CreateObject(hash2, DEF.x, DEF.y, DEF.z + 3, false, false, true)
		local EEF =  CreatePed(4, hash2, DEF.x, DEF.y, DEF.z, -149.404, false, true)
		SetEntityInvincible(EEF, true)
        PlaceObjectOnGroundProperly(EEF)
		-- TaskReactAndFleePed(EEF, PlayerPedId())
		Citizen.Wait(1000)
        table.insert(cowobjects, EEF)
		-- print(cd)
        cd = cd + 1
    end
end
-- Spawn Plantas
function SpawnObject(model, coords, heading, cb)
	local model = (type(model) == 'number' and model or GetHashKey(model))
	RequestModel(model)
	while not HasModelLoaded(model) do
		Wait(1)
	end
    local obj = CreatePed(4, model, coords.x, coords.y, coords.z, heading, false, true)
    SetEntityInvincible(obj, true)
    --SetModelAsNoLongerNeeded(model)
    PlaceObjectOnGroundProperly(obj)
    --FreezeEntityPosition(obj, true)
    if cb then
        cb(obj)
    end
end

-- Gerar Coordenadas para as Plantas
function SpawnfarmPlants()
	while spawnedPlants < 15 do
		Wait(1)
		local plantCoords = GeneratePlantsCoords()
		SpawnObject('a_c_cow', plantCoords, math.random(0, 360), function(obj)
			table.insert(farmPlants, obj)
			spawnedPlants = spawnedPlants + 1
		end)
	end
end 

-- Validar Coordenadas
function ValidatePlantsCoord(plantCoord)
	if spawnedPlants > 0 then
		local validate = true
		for k, v in pairs(farmPlants) do
			if GetDistanceBetweenCoords(plantCoord, GetEntityCoords(v), true) < 5 then
				validate = false
			end
		end
		if GetDistanceBetweenCoords(plantCoord, Cow.PlantsField, false) > 50 then
			validate = false
		end
		return validate
	else
		return true
	end
end

-- Gerar Box Coords
function GeneratePlantsCoords()
	while true do
		Wait(1)
		local cokeCoordX, cokeCoordY
		math.randomseed(GetGameTimer())
		local modX = math.random(-15, 15)
		Wait(100)
		math.randomseed(GetGameTimer())
		local modY = math.random(-15, 15)
		cokeCoordX = Cow.PlantsField.x + modX
		cokeCoordY = Cow.PlantsField.y + modY
		local coordZ = GetCoordZPlants(cokeCoordX, cokeCoordY)
		local coord = vector3(cokeCoordX, cokeCoordY, coordZ)
		if ValidatePlantsCoord(coord) then
			return coord
		end
	end
end

-- Verificar Altura das Coordenadas
function GetCoordZPlants(x, y)
	local groundCheckHeights = { 35, 36.0, 37.0, 38.0, 39.0, 40.0, 41.0, 42.0, 43.0, 44.0, 45.0, 46.0, 47.0, 48.0, 49.0, 50.0, 51.0, 52.0, 53.0, 54.0, 55.0 }
	for i, height in ipairs(groundCheckHeights) do
		local foundGround, z = GetGroundZFor_3dCoord(x, y, height)
		if foundGround then
			return z
		end
	end
	return 53.85
end


RegisterNetEvent('lotus-milky:client:dobenxosua',function(slot)
    TriggerServerEvent('et-doben:server:RemoveItemQuality',math.random(2,3),"xosua", slot)
end)

RegisterNetEvent('lotus-milky:client:dobenknife',function(slot)
    TriggerServerEvent('et-doben:server:RemoveItemQuality',math.random(2,3),"knife", slot)
end)


local count = 0
function PackingMilk()
    -- local
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)

    local timerPacking = math.random(7000, 7000)
    ----
    
    if(count == 0) then
    count = 1
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.9, -0.98))
    prop = CreateObject(GetHashKey('hei_prop_heist_box'), x, y, z,  true,  true, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    LoadDict('amb@medic@standing@tendtodead@idle_a')
    TaskPlayAnim(GetPlayerPed(-1), 'amb@medic@standing@tendtodead@idle_a', 'idle_a', 8.0, -8.0, -1, 1, 0.0, 0, 0, 0)
    LoadDict('amb@medic@standing@tendtodead@exit')
    TaskPlayAnim(PlayerPedId(), 'amb@medic@standing@tendtodead@exit', 'exit', 8.0, -8.0, -1, 1, 0.0, 0, 0, 0)
    QBCore.Functions.Progressbar("search_register", "Đang đóng hộp..", 500*10, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('lotus-milky:processo')
        ClearPedTasks(PlayerPedId())
        DeleteEntity(prop)
        count = 0
    end, function()
        count = 0
        ClearPedTasksImmediately(PlayerPedId())
        DeleteEntity(prop)
    end)
    end
end
function LoadDict(dict)
    RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
	  	Citizen.Wait(10)
    end
end
--vector3(2506.17, 4800.36, 35.0)
local procesX = 2506.17
local procesY = 4800.36
local procesZ = 35.0

CreateThread(function() 
    for k, v in pairs(Cow.PackingMilk) do
		Stations[k] = PolyZone:Create(v.zones, {
			name="PackingMilkZone "..k,
			minZ = 	v.minz,
			maxZ = v.maxz,
			debugPoly = false
		})
		Stations[k]:onPlayerInOut(function(isPointInside)
			if isPointInside then
				inPackingMilkStation = true
			else
				inPackingMilkStation = false
			end
		end)
    end
end)

Citizen.CreateThread(function()
    while true do
	        local s1d7 = false
	        if inPackingMilkStation then
                Draw3DText(Cow.hopsua.coords.x, Cow.hopsua.coords.y, Cow.hopsua.coords.z, '[E] - Đóng hộp sữa', 1, 0.2, 0.2, Cow.SecondaryColor)
                -- exports['et-core']:DrawText('[E] Đóng hộp', 'left')
		        if IsControlJustPressed(0, 38) then 
					        s1d7 = true
                            PackingMilk()
			         while(not s1d7) do
					        Citizen.Wait(100)
		            end
		        end	
                    
            end
            if not inPackingMilkStation then
                -- exports['et-core']:HideText()
                 Citizen.Wait(1000)
             end
        Citizen.Wait(7)
    end
end)

Citizen.CreateThread(function()
local xosua = {
    `u_f_o_prolhost_01`
}
exports['et-target']:AddTargetModel(xosua, {
    options = {
        {
            event = "lotus-hoicho:shop",
            icon = "fas fa-archive",
            label = "Mua Dụng Cụ",
        },
    },
    job = {"all"},
    distance = 2
})
end)


function killCowTime(time)
    time = time / 1000
    QBCore.Functions.RequestAnimDict('melee@hatchet@streamed_core')
    TaskPlayAnim(PlayerPedId(), 'melee@hatchet@streamed_core', 'plyr_rear_takedown_b', 8.0, -8.0, -1, 2, 0, false, false, false)
    canRob = true
    Citizen.CreateThread(function()
        while canRob do
            --TriggerServerEvent('et-hud:Server:Gain:Stress', 0.3) 
            TaskPlayAnim(PlayerPedId(), 'melee@hatchet@streamed_core', 'plyr_rear_takedown_b', 8.0, -8.0, -1, 2, 0, false, false, false)
            Citizen.Wait(2000)
            time = time - 2
            if time <= 0 then
                canRob = false
                StopAnimTask(PlayerPedId(), "melee@hatchet@streamed_core", "plyr_rear_takedown_b", 1.0)
            end
        end
    end)
end
-- kill cow

RegisterNetEvent('lotus-milky:slaughterCow', function()
    local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	local nearbyObject, nearbyID
	for i=1, #farmPlants, 1 do
		if GetDistanceBetweenCoords(coords, GetEntityCoords(farmPlants[i]), false) < 1.2 then
			nearbyObject, nearbyID = farmPlants[i], i
		end
	end
--WORLD_COW_GRAZING
    if nearbyObject and IsPedOnFoot(playerPed) then
        isPickingUp = true
        QBCore.Functions.TriggerCallback('QBCore.Functions.HasItem', function(hasItem)
        if hasItem then
            killCowTime(10000)
            --if DoesEntityExist(nearbyObject) then
            --TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_BUM_WASH', 0, false)
           -- local model = loadModel(GetHashKey('w_me_knife_01'))
            --local knifeoj = CreateObject(model, GetEntityCoords(PlayerPedId()), true, false, false)
            
           --TaskPlayAnim(PlayerPedId(), 'missfam1_yachtbattle', 'yacht_door_opening_mastout', 6.0, -6.0, -1, 46, 0, 0, 0, 0)
                QBCore.Functions.Progressbar('killing_cow', "Đang làm thịt", 10000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                    }, {
                    }, {}, {}, function() 
                        DeleteEntity(nearbyObject)
                        table.remove(farmPlants, nearbyID)
                        spawnedPlants = spawnedPlants - 1
                        ClearPedTasks(PlayerPedId())
                        TriggerServerEvent('lotus-milky:server:cowkilling')
                        TriggerServerEvent('hud:Server:GainStress', math.random(1, 2))
                        --SpawnfarmPlants()
                        ClearPedTasksImmediately(PlayerPedId())
                     --   exports["et-level"]:UpdateSkill("farming", 0.03)
                    end, function()
                        QBCore.Functions.Notify("Hủy", "error")
                        ClearPedTasksImmediately(PlayerPedId())
                end)
            --end
        elseif not hasItem then
            QBCore.Functions.Notify("Bạn không có dao", "error", 3000)
        end
        end, 'knife')
    else
        QBCore.Functions.Notify('Quá xa con bò...', 'error', 3500)
    end
end)
local isProcessing = false
-- nướng thịt
CreateThread(function()
    while true do
        Wait(5)
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        if GetDistanceBetweenCoords(coords, Cow.nuongthit.coords, true) < 3 then
            --DrawMarker(27, Cow.nuongthit.coords.x, Cow.nuongthit.coords.y, Cow.nuongthit.coords.z - 1 , 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 0, 0, 200, 0, 0, 0, 0)
            if not isProcessing then
                Draw3DText(Cow.nuongthit.coords.x, Cow.nuongthit.coords.y, Cow.nuongthit.coords.z, '[E] - NƯỚNG', 4, 0.04, 0.04, Cow.SecondaryColor)
            end
            if IsControlJustReleased(0, 38) and not isProcessing then
                isProcessing = true
                TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BBQ", 0, true)
                QBCore.Functions.Progressbar("che_bien_thit", "Đang nướng thịt bò..", math.random(12000, 15000), false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                ClearPedTasks(PlayerPedId())
                isProcessing = false
                TriggerServerEvent("lotus-nuongthit:ProcessThitbo")
                sellItemsSet = false
                sellPrice = 0
            end, function() -- Cancel
                isProcessing = false
                ClearPedTasks(PlayerPedId())
                QBCore.Functions.Notify("Đã hủy bỏ", 4000, "error")
                end)
            end
        else
            Citizen.Wait(1000)
        end
    end
end)

function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY,color)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
    local scale = (1/dist)*10
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
    SetTextScale(scaleX*scale, scaleY*scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextColour(color.r, color.g, color.b, color.a)
    SetTextDropshadow(1, 1, 1, 1, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

CreateThread(function()
    -- Load ped model
    local pedModel = `a_m_m_farmer_01`
    RequestModel(pedModel)
    while not HasModelLoaded(pedModel) do Wait(0) end
    local ped
    -- Create Ped
    ped = CreatePed(0, pedModel, Cow.SellLocation.x, Cow.SellLocation.y, Cow.SellLocation.z, Cow.SellLocation.w, false, false)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_CLIPBOARD", 0, true)

    -- Add et-target interaction
    exports['et-target']:AddTargetEntity(ped, {
        options = {
            {
                type = "server",
                event = "tC-cowjob:server:SellMilk",
                icon = 'fas fa-circle',
                label = 'Bán Sữa Bò',
            }
        },
        distance = 1.5,
    })
end)
