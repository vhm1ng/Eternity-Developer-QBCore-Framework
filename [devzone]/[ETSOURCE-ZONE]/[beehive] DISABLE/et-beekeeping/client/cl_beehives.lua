local QBCore = exports['et-core']:GetCoreObject()

local BeeHives = {}
local ActiveBeehives = {}

local inZone = 0
local setDeleteAll = false
local isPlacing = false
local hasShownMessage = false

CreateThread(function()
    --local c = Config.SeedLocations
    for id,zone in ipairs(HiveZones) do
        local Blip = AddBlipForCoord(zone[1])
        SetBlipSprite (Blip, 570)
        SetBlipDisplay(Blip, 4)
        SetBlipScale  (Blip, 0.7)
        SetBlipAsShortRange(Blip, true)
        SetBlipColour(Blip, 5)
        SetBlipAlpha(Blip, 0.7)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName("Trang trại ong")
        EndTextCommandSetBlipName(Blip)
    end
end)

CreateThread(function()
    local b = {
        `np_beehive`,
        `np_beehive02`,
        `np_beehive03`,
    }

    local b1 = {
        `np_beehive03`,lt
    }

	exports['et-target']:AddTargetModel(b, {
		options = {
			{
				event = "et-beekeeping:checkBeehive",
				icon = "fas fa-archive",
				label = "Kiểm tra",
			},
		},
		job = {"all"},
		distance = 2.0
	}) 

    exports['et-target']:AddTargetModel(b1, {
		options = {
			{
				event = "et-beekeeping:harvestHive",
				icon = "fas fa-hand-holding-water",
				label = "Thu hoạch",
			},
		},
		job = {"all"},
		distance = 2.0
	}) 
end)

RegisterNetEvent('QBCore:Client:UpdateObject', function()
	QBCore = exports['et-core']:GetCoreObject()
end) 

--Creates da hives
--TODO: cache close hives
Citizen.CreateThread(function()
    while true do
        local plyCoords = GetEntityCoords(PlayerPedId())
        if BeeHives == nil then BeeHives = {} end
        for idx, hive in ipairs(BeeHives) do
            if idx % 100 == 0 then
                Wait(0) --Process 100 per frame
            end

           -- local hivecoords = hive.coords
           -- print(hivecoords.x, hivecoords.y, hivecoords.z)
            if not setDeleteAll then
                --print('gei')
                local harvestPercent = getHiveReadyPercent(hive)
                local curStage = getStageFromPercent(harvestPercent)
                local isChanged = (ActiveBeehives[hive.id] and ActiveBeehives[hive.id].stage ~= curStage)

                if isChanged then
                    removeBeehive(hive.id)
                end

                if not ActiveBeehives[hive.id] or isChanged then
                    --print('gesad')
                    local beeHive = createBeehiveStageAtCoords(curStage, hive.coords, hive.heading)
                    ActiveBeehives[hive.id] = {
                        object = beeHive,
                        stage = curStage
                    }
                end
            else
                removeBeehive(hive.id)
            end
        end
        if setDeleteAll then
            BeeHives = {}
            setDeleteAll = false
        end
        Wait(inZone > 0 and 500 or 1000)
    end
end)

RegisterNetEvent("et-beekeeping:itemUsed")
AddEventHandler("et-beekeeping:itemUsed", function()
    if not isPlacing then
        if inZone > 0 then
            isPlacing = true
            if not hasShownMessage then
                local mss1 = "Xoay bằng các phím mũi tên"
                local mss2 = "Nhấn [Enter] để đặt khi có thể nhìn thấy tổ ong"
                local mss3 = "Nhấn [Escape] để hủy."
                TriggerEvent('chat:addMessage', { 
                    template = '<div style="padding: 0.475vw; padding-left: 0.8vw; padding-right: 0.7vw; margin: 0.1vw; background-color: rgb(51 165 163 / 85%); border-radius: 3px 3px 3px 3px;font-family: Source Sans Pro, sans-serif;"><span style="font-weight: bold;"></span><strong>Instructions:</strong><br> {0}<br> {1}<br> {2}<br></div>',
                    args = {
                        mss1,
                        mss2,
                        mss3
                    } 
                })
                hasShownMessage = true
            end
            cod = GetEntityCoords(PlayerPedId())
            placeObject("np_beehive", function(pPlaced, cod, pHeading)
                if pPlaced then
                    TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_HAMMERING", 0, true)
                    --local finished = exports['et-beekbar']:taskBar(15000, "Xây tổ ong...")
                    QBCore.Functions.Progressbar('pickup', 'Xây tổ ong...', 15000, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function()
                       -- if finished == 100 then
                            ClearPedTasks(PlayerPedId())
                            TriggerServerEvent("et-beekeeping:installHive", cod, pHeading)
                           -- end
                    end)
                else
                    QBCore.Functions.Notify("Không thể đặt nó hoặc bạn đã hủy.", 'success')
                end
                isPlacing = false
            end)
        else
            QBCore.Functions.Notify("Bạn nên tìm một khu vực tốt hơn để cài đặt cái này trong.", 'success')
        end
    end
end)

AddEventHandler("et-beekeeping:checkBeehive", function()
    local pedCoords = GetEntityCoords(PlayerPedId())
    local object = nil
    local x1,y1,z1 = table.unpack(GetEntityCoords(PlayerPedId()))
    for k,v in ipairs(HiveConfig.HiveObjects) do
        local closestObject = GetClosestObjectOfType(x1, y1, z1, 0.8, v.hash, false, false, false)
        if closestObject ~= nil and closestObject ~= 0 then
            object = closestObject
            break
        end
    end
    local hiveId = getHiveId(object)
    if not hiveId then return end
    showHiveMenu(hiveId)
end)

AddEventHandler('et-beekeeping:addQueen', function(data)
    local hasItem = QBCore.Functions.HasItem("beequeen")
    if hasItem then
        TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_GARDENER_PLANT", 0, true)
        QBCore.Functions.Progressbar('pickup', 'Thêm ong chúa...', 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
        ClearPedTasks(PlayerPedId())
        QBCore.Functions.TriggerCallback('et-beekeeping:addQueen', function(success) 
            if not success then
                QBCore.Functions.Notify("Không thể thêm ong chúa.", 'success')
            end
            end, data)
        end)
    else 
        QBCore.Functions.Notify("Không có ong chúa.", 'success')
    end 
end)


--AddEventHandler('et-beekeeping:removeHive', function(data)
   -- print(data)
   -- TriggerEvent("animation:PlayAnimation","layspike")
   -- local finished = exports['et-beekbar']:taskBar(10000, "Removing")
   -- if finished == 100 then
   --     ClearPedTasks(PlayerPedId())
    --    QBCore.Functions.TriggerCallback('et-beekeeping:removeHive', function(success) 
    --        removeBeehive(data)
    --        if not success then
    --            print("Could not remove. pid:", data)
    --        else
     --           removeBeehive(data)
    --        end
    --    end, data)
  ----  end
--end)
AddEventHandler('et-beekeeping:removeHive', function(data)
    TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_GARDENER_PLANT", 0, true)
    --local finished = exports["et-taskbar"]:taskBar(10000, "Đang phá hủy")
    QBCore.Functions.Progressbar('pickup', 'Đang phá hủy...', 10000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        ClearPedTasks(PlayerPedId())
       --if finished == 100 then
            --local getFertilizer = getPlantGrowthPercent(getPlantById(data)) > 20.0
            QBCore.Functions.TriggerCallback('et-beekeeping:removeHive', function(success) 
                if not success then
                else
                    removeBeehive(data)
                end
            end, data)
        --end
    end)
    
end)

AddEventHandler("et-beekeeping:harvestHive", function()
    local pedCoords = GetEntityCoords(PlayerPedId())
    local object = nil
    local x1,y1,z1 = table.unpack(GetEntityCoords(PlayerPedId()))
    for k,v in ipairs(HiveConfig.HiveObjects) do
        local closestObject = GetClosestObjectOfType(x1, y1, z1, 0.8, v.hash, false, false, false)
        if closestObject ~= nil and closestObject ~= 0 then
            object = closestObject
            break
        end
    end
    local hiveId = getHiveId(object)
    if not hiveId then return end

    local hive = getHiveById(hiveId)
    local timeSinceHarvest = GetCloudTimeAsInt()
    if getHiveReadyPercent(hive) < HiveConfig.HarvestPercent or timeSinceHarvest <= (HiveConfig.TimeBetweenHarvest * 60) then
        QBCore.Functions.Notify(QBCore.Functions.Notify("Không thể đặt nó hoặc bạn đã hủy.", 'success'), 'success')
        return
    end

   -- TriggerEvent("animation:PlayAnimation","layspike")
    TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_GARDENER_PLANT", 0, true)
    --local finished = exports['et-beekbar']:taskBar(5000, "Harvesting")
    QBCore.Functions.Progressbar('pickup', 'Harvesting...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
       -- if finished == 100 then
            ClearPedTasks(PlayerPedId())
            QBCore.Functions.TriggerCallback('et-beekeeping:harvestHive', function(cb)
                if not cb then
                end
            end, hiveId)
       -- end
    end)
   
end)

AddEventHandler("et-polyzone:enter", function(zone, data)
    if zone == "et-beekeeping:bee_zone" then
        inZone = inZone + 1
        if inZone == 1 then
            QBCore.Functions.TriggerCallback('et-beekeeping:getBeehives', function(cb)
                BeeHives = cb
            end)
        end
    end
end)

AddEventHandler("et-polyzone:exit", function(zone, data)
    if zone == "et-beekeeping:bee_zone" then
        inZone = inZone - 1
        stopPlacing()
        if inZone < 0 then inZone = 0 end
        if inZone == 0 then
            setDeleteAll = true
        end
    end
end)

RegisterNetEvent('et-beekeeping:trigger_zone')
AddEventHandler('et-beekeeping:trigger_zone', function (type, pData)
    if type == 1 then
        for _, hive in ipairs(BeeHives) do
            local keep = false
           for _, newhive in ipairs(pData) do
                if hive.id == newhive.id then
                    keep = true
                   break
                end
            end

            if not keep then
                removeBeehive(hive.id)
            end
        end
        BeeHives = pData
    end

    --New hive being added
    if type == 2 then
        BeeHives[#BeeHives+1] = pData
    end

    --hive being harvested/updated
    if type == 3 then
        for idx, hive in ipairs(BeeHives) do
            if hive.id == pData.id then
                BeeHives[idx] = pData
                break
            end
        end
    end
  
    --hive being removed
    if type == 4 then
        for idx, hive in ipairs(BeeHives) do
            if hive.id == pData then
                print(hive.id)
                table.remove(BeeHives, idx)
                removeBeehive(hive.id)
                break
            end
        end
    end
end)

AddEventHandler("onResourceStop", function(resource)
    if resource ~= GetCurrentResourceName() then return end
    for idx, hive in pairs(ActiveBeehives) do
        DeleteObject(hive.object)
    end
end)

function createBeehiveStageAtCoords(pStage, pCoords, pHeading)
    local model = HiveConfig.HiveObjects[pStage].hash
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end
    coords = json.decode(pCoords)
    local hiveObject = CreateObject(model, coords.x, coords.y, coords.z, 0, 0, 0)
    FreezeEntityPosition(hiveObject, true)
    if not pHeading then pHeading = 0.0 end
    SetEntityHeading(hiveObject, pHeading + 0.00001)
    -- SetEntityProofs(
    --   hiveObject --[[ Entity ]], 
    --   true --[[ boolean ]], 
    --   true --[[ boolean ]], 
    --   true --[[ boolean ]], 
    --   true --[[ boolean ]], 
    --   true --[[ boolean ]], 
    --   true --[[ boolean ]], 
    --   true --[[ boolean ]], 
    --   true --[[ boolean ]]
    -- )
    return hiveObject
end

function removeBeehive(pHiveId)
    if ActiveBeehives[pHiveId] then
        DeleteObject(ActiveBeehives[pHiveId].object)
        ActiveBeehives[pHiveId] = nil
    end
end

function getStageFromPercent(pPercent)
  if pPercent < 50.0 then
    return 1
  elseif pPercent >= 50.0 and pPercent < 100.0 then
    return 2
  else
    return 3
  end
end

function getHiveReadyPercent(pHive)
    local timeDiff = (GetCloudTimeAsInt() - pHive.timestamp) / 60
    local queenFactor = (pHive.queen == 1 and HiveConfig.QueenFactor or 1)
    local growthFactors = (HiveConfig.GrowthTime / queenFactor)
    return math.min((timeDiff / growthFactors) * 100, 100.0)
end

function getHiveId(pEntity)
    for hiveId, hive in pairs(ActiveBeehives) do
        if hive.object == pEntity then
            return hiveId
        end
    end
end

function getHiveById(pHiveId)
    for _, hive in pairs(BeeHives) do
        if hive.id == pHiveId then
            return hive
        end
    end
end

function showHiveMenu(pHiveId)
    local hive = getHiveById(pHiveId)
    local harvest = getHiveReadyPercent(hive)
    local PlayerData = QBCore.Functions.GetPlayerData()
    local myjob = PlayerData.job.name
    local context = {
        {
            header = 'Sẵn sàng thu hoạch: ' .. string.format("%.2f", harvest) .. '%',
            txt = (hive.queen == 1 and "Có ong chúa" or "Không có ong chúa"),
            params = {
                event = ""
            }
        },
        {
            header = "Thêm ong chúa",
            txt = "Làm cho tổ ong hạnh phúc.",
            params = {
                event = "et-beekeeping:addQueen",
                args = pHiveId,
            }
        },
    }

    if harvest >= 95 or myjob == "police" or myjob == "judge" then
        table.insert(context, {
            header = "Phá hủy",
            txt = "",
            params = {
                event = "et-beekeeping:removeHive",
                args =  pHiveId,
            },
        })
    end
    Wait(100)
    exports['et-menu']:openMenu(context)
end