-- Variables
local QBCore = exports['et-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
local testDriveZone = nil
local vehicleMenu = {}
local Initialized = false
local testDriveVeh, inTestDrive = 0, false
local ClosestVehicle = 1
local zones = {}
local insideShop, tempShop = nil, nil

local onDuty = false
local isInsideDutyZone = false
local dutyTargetBoxID = 'dutyTarget'

local function DeleteTarget(id)
    if Config.UseTarget then
        exports['et-target']:RemoveZone(id)
    else
        if Config.Targets[id] and Config.Targets[id].zone then
            Config.Targets[id].zone:destroy();
        end
    end

    Config.Targets[id] = nil
end

local function RegisterDutyTarget()
    local coords = Config.Locations['duty']
    local boxData = Config.Targets[dutyTargetBoxID] or {}

    if boxData and boxData.created then
        return
    end

    if PlayerData.job.name ~= 'cardealer' then
        return
    end

    local label = "Vào Ca"
    if onDuty then
        label = "Tan Ca"
    end

    local zone = BoxZone:Create(coords, 1.5, 1.5, {
        name = dutyTargetBoxID,
        heading = 0,
        debugPoly = false,
        minZ = coords.z - 1.0,
        maxZ = coords.z + 1.0,
    })
    zone:onPlayerInOut(function (isPointInside)
        if isPointInside then
            exports['et-core']:DrawText("[E] - " .. label, 'left')
        else
            exports['et-core']:HideText()
        end
        isInsideDutyZone = isPointInside
    end)
    Config.Targets[dutyTargetBoxID] = {created = true, zone = zone}
end

-- Handlers
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
    local citizenid = PlayerData.citizenid
    if not Initialized then Init() end
end)

AddEventHandler('onResourceStart', function(resource)
    if resource ~= GetCurrentResourceName() then
        return
    end
    if next(PlayerData) ~= nil and not Initialized then
        PlayerData = QBCore.Functions.GetPlayerData()
        local citizenid = PlayerData.citizenid
        Init()
    end
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerData.job = JobInfo
    onDuty = PlayerData.job.onduty
    DeleteTarget(dutyTargetBoxID)
    RegisterDutyTarget()
end)

RegisterNetEvent('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
    DeleteTarget(dutyTargetBoxID)
    RegisterDutyTarget()
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    PlayerData = {}
end)

-- Static Headers
local vehHeaderMenu = {
    {
        header = Lang:t('menus.vehHeader_header'),
        txt = Lang:t('menus.vehHeader_txt'),
        icon = "fa-solid fa-car",
        params = {
            event = 'vhming-vehicleshop:client:showVehOptions'
        }
    }
}

local returnTestDrive = {
    {
        header = Lang:t('menus.returnTestDrive_header'),
        icon = "fa-solid fa-flag-checkered",
        params = {
            event = 'vhming-vehicleshop:client:TestDriveReturn'
        }
    }
}

-- Functions
local function drawTxt(text, font, x, y, scale, r, g, b, a)
    SetTextFont(font)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextOutline()
    SetTextCentre(1)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end

local function comma_value(amount)
    local formatted = amount
    local k
    while true do
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if k == 0 then
            break
        end
    end
    return formatted
end

local function getVehName()
    return QBCore.Shared.Vehicles[Config.Shops[insideShop]["ShowroomVehicles"][ClosestVehicle].chosenVehicle]["name"]
end

local function getVehPrice()
    return comma_value(QBCore.Shared.Vehicles[Config.Shops[insideShop]["ShowroomVehicles"][ClosestVehicle].chosenVehicle]["price"])
end

local function getVehBrand()
    return QBCore.Shared.Vehicles[Config.Shops[insideShop]["ShowroomVehicles"][ClosestVehicle].chosenVehicle]['brand']
end

local function setClosestShowroomVehicle()
    local pos = GetEntityCoords(PlayerPedId(), true)
    local current = nil
    local dist = nil
    local closestShop = insideShop
    for id in pairs(Config.Shops[closestShop]["ShowroomVehicles"]) do
        local dist2 = #(pos - vector3(Config.Shops[closestShop]["ShowroomVehicles"][id].coords.x, Config.Shops[closestShop]["ShowroomVehicles"][id].coords.y, Config.Shops[closestShop]["ShowroomVehicles"][id].coords.z))
        if current then
            if dist2 < dist then
                current = id
                dist = dist2
            end
        else
            dist = dist2
            current = id
        end
    end
    if current ~= ClosestVehicle then
        ClosestVehicle = current
    end
end

local function createTestDriveReturn()
    testDriveZone = BoxZone:Create(
        Config.Shops[insideShop]["ReturnLocation"],
        3.0,
        5.0,
        {
            name = "box_zone_testdrive_return_" .. insideShop,
        })

    testDriveZone:onPlayerInOut(function(isPointInside)
        if isPointInside and IsPedInAnyVehicle(PlayerPedId()) then
            SetVehicleForwardSpeed(GetVehiclePedIsIn(PlayerPedId(), false), 0)
            exports['et-menu']:openMenu(returnTestDrive)
        else
            exports['et-menu']:closeMenu()
        end
    end)
end

local function startTestDriveTimer(testDriveTime, prevCoords)
    local gameTimer = GetGameTimer()
    CreateThread(function()
	Wait(2000) -- Avoids the condition to run before entering vehicle
        while inTestDrive do
            if GetGameTimer() < gameTimer + tonumber(1000 * testDriveTime) then
                local secondsLeft = GetGameTimer() - gameTimer
                if secondsLeft >= tonumber(1000 * testDriveTime) - 20 or GetPedInVehicleSeat(NetToVeh(testDriveVeh), -1) ~= PlayerPedId() then
                    TriggerServerEvent('vhming-vehicleshop:server:deleteVehicle', testDriveVeh)
                    testDriveVeh = 0
                    inTestDrive = false
                    SetEntityCoords(PlayerPedId(), prevCoords)
                    QBCore.Functions.Notify(Lang:t('general.testdrive_complete'))
                end
                drawTxt(Lang:t('general.testdrive_timer') .. math.ceil(testDriveTime - secondsLeft / 1000), 4, 0.5, 0.93, 0.50, 255, 255, 255, 180)
            end
            Wait(0)
        end
    end)
end

local function createVehZones(shopName, entity)
    if not Config.UsingTarget then
        for i = 1, #Config.Shops[shopName]['ShowroomVehicles'] do
            zones[#zones + 1] = BoxZone:Create(
                vector3(Config.Shops[shopName]['ShowroomVehicles'][i]['coords'].x,
                    Config.Shops[shopName]['ShowroomVehicles'][i]['coords'].y,
                    Config.Shops[shopName]['ShowroomVehicles'][i]['coords'].z),
                Config.Shops[shopName]['Zone']['size'],
                Config.Shops[shopName]['Zone']['size'],
                {
                    name = "box_zone_" .. shopName .. "_" .. i,
                    minZ = Config.Shops[shopName]['Zone']['minZ'],
                    maxZ = Config.Shops[shopName]['Zone']['maxZ'],
                    debugPoly = false,
                })
        end
        local combo = ComboZone:Create(zones, {name = "vehCombo", debugPoly = false})
        combo:onPlayerInOut(function(isPointInside)
            if isPointInside then
                if PlayerData and PlayerData.job and (PlayerData.job.name == Config.Shops[insideShop]['Job'] or Config.Shops[insideShop]['Job'] == 'none') then
                    exports['et-menu']:showHeader(vehHeaderMenu)
                end
            else
                exports['et-menu']:closeMenu()
            end
        end)
    else
        exports['et-target']:AddTargetEntity(entity, {
            options = {
                {
                    type = "client",
                    event = "vhming-vehicleshop:client:showVehOptions",
                    icon = "fas fa-circle",
                    label = Lang:t('general.vehinteraction'),
                    canInteract = function()
                        local closestShop = insideShop
                        return closestShop and (Config.Shops[closestShop]['Job'] == 'none' or PlayerData.job.name == Config.Shops[closestShop]['Job'])
                    end
                },
            },
            distance = 3.0
        })
    end
end

-- Zones
function createFreeUseShop(shopShape, name)
    local zone = PolyZone:Create(shopShape, {
        name = name,
        minZ = shopShape.minZ,
        maxZ = shopShape.maxZ
    })

    zone:onPlayerInOut(function(isPointInside)
        if isPointInside then
            insideShop = name
            CreateThread(function()
                while insideShop do
                    setClosestShowroomVehicle()
                    vehicleMenu = {
                        {
                            isMenuHeader = true,
                            icon = "fa-solid fa-circle-info",
                            header = getVehBrand():upper() .. ' ' .. getVehName():upper() .. ' - $' .. getVehPrice(),
                        },
                        {
                            header = Lang:t('menus.test_header'),
                            txt = Lang:t('menus.freeuse_test_txt'),
                            icon = "fa-solid fa-car-on",
                            params = {
                                event = 'vhming-vehicleshop:client:TestDrive',
                            }
                        },
                        {
                            header = Lang:t('menus.freeuse_buy_header'),
                            txt = Lang:t('menus.freeuse_buy_txt'),
                            icon = "fa-solid fa-hand-holding-dollar",
                            params = {
                                isServer = true,
                                event = 'vhming-vehicleshop:server:buyShowroomVehicle',
                                args = {
                                    buyVehicle = Config.Shops[insideShop]["ShowroomVehicles"][ClosestVehicle].chosenVehicle
                                }
                            }
                        },
                        {
                            header = Lang:t('menus.swap_header'),
                            txt = Lang:t('menus.swap_txt'),
                            icon = "fa-solid fa-arrow-rotate-left",
                            params = {
                                event = 'vhming-vehicleshop:client:vehCategories',
                            }
                        },
                    }
                    Wait(1000)
                end
            end)
        else
            insideShop = nil
            ClosestVehicle = 1
        end
    end)
end

function createManagedShop(shopShape, name)
    local zone = PolyZone:Create(shopShape, {
        name = name,
        minZ = shopShape.minZ,
        maxZ = shopShape.maxZ
    })

    zone:onPlayerInOut(function(isPointInside)
        if isPointInside then
            insideShop = name
            CreateThread(function()
                while insideShop and PlayerData.job and PlayerData.job.name == Config.Shops[name]['Job'] do
                    setClosestShowroomVehicle()
                    vehicleMenu = {
                        {
                            isMenuHeader = true,
                            icon = "fa-solid fa-circle-info",
                            header = getVehBrand():upper() .. ' ' .. getVehName():upper() .. ' - $' .. getVehPrice(),
                        },
                        {
                            header = Lang:t('menus.test_header'),
                            txt = Lang:t('menus.managed_test_txt'),
                            icon = "fa-solid fa-user-plus",
                            params = {
                                event = 'vhming-vehicleshop:client:openIdMenu',
                                args = {
                                    vehicle = Config.Shops[insideShop]["ShowroomVehicles"][ClosestVehicle].chosenVehicle,
                                    type = 'testDrive'
                                }
                            }
                        },
                        {
                            header = Lang:t('menus.managed_sell_header'),
                            txt = Lang:t('menus.managed_sell_txt'),
                            icon = "fa-solid fa-cash-register",
                            params = {
                                event = 'vhming-vehicleshop:client:openIdMenu',
                                args = {
                                    vehicle = Config.Shops[insideShop]["ShowroomVehicles"][ClosestVehicle].chosenVehicle,
                                    type = 'sellVehicle'
                                }
                            }
                        },
                        {
                            header = Lang:t('menus.swap_header'),
                            txt = Lang:t('menus.swap_txt'),
                            icon = "fa-solid fa-arrow-rotate-left",
                            params = {
                                event = 'vhming-vehicleshop:client:vehCategories',
                            }
                        },
                    }
                    Wait(1000)
                end
            end)
        else
            insideShop = nil
            ClosestVehicle = 1
        end
    end)
end

function Init()
    Initialized = true
    CreateThread(function()
        for name, shop in pairs(Config.Shops) do
            if shop['Type'] == 'free-use' then
                createFreeUseShop(shop['Zone']['Shape'], name)
            elseif shop['Type'] == 'managed' then
                createManagedShop(shop['Zone']['Shape'], name)
            end
        end
    end)
    CreateThread(function()
        for k in pairs(Config.Shops) do
            for i = 1, #Config.Shops[k]['ShowroomVehicles'] do
                local model = GetHashKey(Config.Shops[k]["ShowroomVehicles"][i].defaultVehicle)
                RequestModel(model)
                while not HasModelLoaded(model) do
                    Wait(0)
                end
                local veh = CreateVehicle(model, Config.Shops[k]["ShowroomVehicles"][i].coords.x, Config.Shops[k]["ShowroomVehicles"][i].coords.y, Config.Shops[k]["ShowroomVehicles"][i].coords.z, false, false)
                SetModelAsNoLongerNeeded(model)
                SetVehicleOnGroundProperly(veh)
                SetEntityInvincible(veh, true)
                SetVehicleDirtLevel(veh, 0.0)
                SetVehicleDoorsLocked(veh, 3)
                SetEntityHeading(veh, Config.Shops[k]["ShowroomVehicles"][i].coords.w)
                FreezeEntityPosition(veh, true)
                SetVehicleNumberPlateText(veh, 'BUY ME')
                if Config.UsingTarget then createVehZones(k, veh) end
            end
            if not Config.UsingTarget then createVehZones(k) end
        end
    end)
end

-- Events
RegisterNetEvent('vhming-vehicleshop:client:homeMenu', function()
    exports['et-menu']:openMenu(vehicleMenu)
end)

RegisterNetEvent('vhming-vehicleshop:client:showVehOptions', function()
    exports['et-menu']:openMenu(vehicleMenu, true, true)
end)

RegisterNetEvent('vhming-vehicleshop:client:TestDrive', function()
    if not inTestDrive and ClosestVehicle ~= 0 then
        inTestDrive = true
        local prevCoords = GetEntityCoords(PlayerPedId())
        tempShop = insideShop -- temp hacky way of setting the shop because it changes after the callback has returned since you are outside the zone
        QBCore.Functions.TriggerCallback('QBCore:Server:SpawnVehicle', function(netId)
            local veh = NetToVeh(netId)
            exports['vhming-fuel']:SetFuel(veh, 100)
            SetVehicleNumberPlateText(veh, 'TESTDRIVE')
            SetEntityHeading(veh, Config.Shops[tempShop]["TestDriveSpawn"].w)
            TriggerEvent('vehiclekeys:client:SetOwner2', QBCore.Functions.GetPlate(veh))
            testDriveVeh = netId
            QBCore.Functions.Notify(Lang:t('general.testdrive_timenoti', {testdrivetime = Config.Shops[tempShop]["TestDriveTimeLimit"]}))
        end, Config.Shops[tempShop]["ShowroomVehicles"][ClosestVehicle].chosenVehicle, Config.Shops[tempShop]["TestDriveSpawn"], true)
        createTestDriveReturn()
        startTestDriveTimer(Config.Shops[tempShop]["TestDriveTimeLimit"] * 60, prevCoords)
    else
        QBCore.Functions.Notify(Lang:t('error.testdrive_alreadyin'), 'error')
    end
end)

RegisterNetEvent('vhming-vehicleshop:client:customTestDrive', function(data)
    if not inTestDrive then
        inTestDrive = true
        local vehicle = data
        local prevCoords = GetEntityCoords(PlayerPedId())
        tempShop = insideShop -- temp hacky way of setting the shop because it changes after the callback has returned since you are outside the zone
        QBCore.Functions.TriggerCallback('QBCore:Server:SpawnVehicle', function(netId)
            local veh = NetToVeh(netId)
            exports['vhming-fuel']:SetFuel(veh, 100)
            SetVehicleNumberPlateText(veh, 'TESTDRIVE')
            SetEntityHeading(veh, Config.Shops[tempShop]["TestDriveSpawn"].w)
            TriggerEvent('vehiclekeys:client:SetOwner2', QBCore.Functions.GetPlate(veh))
            testDriveVeh = netId
            QBCore.Functions.Notify(Lang:t('general.testdrive_timenoti', {testdrivetime = Config.Shops[tempShop]["TestDriveTimeLimit"]}))
        end, vehicle, Config.Shops[tempShop]["TestDriveSpawn"], true)
        createTestDriveReturn()
        startTestDriveTimer(Config.Shops[tempShop]["TestDriveTimeLimit"] * 60, prevCoords)
    else
        QBCore.Functions.Notify(Lang:t('error.testdrive_alreadyin'), 'error')
    end
end)

RegisterNetEvent('vhming-vehicleshop:client:TestDriveReturn', function()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped)
    local entity = NetworkGetEntityFromNetworkId(testDriveVeh)
    if veh == entity then
        testDriveVeh = 0
        inTestDrive = false
        DeleteEntity(veh)
        exports['et-menu']:closeMenu()
        testDriveZone:destroy()
    else
        QBCore.Functions.Notify(Lang:t('error.testdrive_return'), 'error')
    end
end)

RegisterNetEvent('vhming-vehicleshop:client:vehCategories', function()
	local catmenu = {}
    local categoryMenu = {
        {
            header = Lang:t('menus.goback_header'),
            icon = "fa-solid fa-angle-left",
            params = {
                event = 'vhming-vehicleshop:client:homeMenu'
            }
        }
    }
	for k, v in pairs(QBCore.Shared.Vehicles) do
        if type(QBCore.Shared.Vehicles[k]["shop"]) == 'table' then
            for _, shop in pairs(QBCore.Shared.Vehicles[k]["shop"]) do
                if shop == insideShop then
                    catmenu[v.category] = v.category
                end
            end
        elseif QBCore.Shared.Vehicles[k]["shop"] == insideShop then
                catmenu[v.category] = v.category
        end
    end
    for k, v in pairs(catmenu) do
        categoryMenu[#categoryMenu + 1] = {
            header = v,
            icon = "fa-solid fa-circle",
            params = {
                event = 'vhming-vehicleshop:client:openVehCats',
                args = {
                    catName = k
                }
            }
        }
    end
    exports['et-menu']:openMenu(categoryMenu)
end)

RegisterNetEvent('vhming-vehicleshop:client:openVehCats', function(data)
    local vehMenu = {
        {
            header = Lang:t('menus.goback_header'),
            icon = "fa-solid fa-angle-left",
            params = {
                event = 'vhming-vehicleshop:client:vehCategories'
            }
        }
    }
    for k, v in pairs(QBCore.Shared.Vehicles) do
        if QBCore.Shared.Vehicles[k]["category"] == data.catName then
            if type(QBCore.Shared.Vehicles[k]["shop"]) == 'table' then
                for _, shop in pairs(QBCore.Shared.Vehicles[k]["shop"]) do
                    if shop == insideShop then
                        vehMenu[#vehMenu + 1] = {
                            header = v.name,
                            txt = Lang:t('menus.veh_price') .. v.price,
                            icon = "fa-solid fa-car-side",
                            params = {
                                isServer = true,
                                event = 'vhming-vehicleshop:server:swapVehicle',
                                args = {
                                    toVehicle = v.model,
                                    ClosestVehicle = ClosestVehicle,
                                    ClosestShop = insideShop
                                }
                            }
                        }
                    end
                end
            elseif QBCore.Shared.Vehicles[k]["shop"] == insideShop then
                vehMenu[#vehMenu + 1] = {
                    header = v.name,
                    txt = Lang:t('menus.veh_price') .. v.price,
                    icon = "fa-solid fa-car-side",
                    params = {
                        isServer = true,
                        event = 'vhming-vehicleshop:server:swapVehicle',
                        args = {
                            toVehicle = v.model,
                            ClosestVehicle = ClosestVehicle,
                            ClosestShop = insideShop
                        }
                    }
                }
            end
        end
    end
    exports['et-menu']:openMenu(vehMenu)
end)

RegisterNetEvent('vhming-vehicleshop:client:swapVehicle', function(data)
    local shopName = data.ClosestShop
    if Config.Shops[shopName]["ShowroomVehicles"][data.ClosestVehicle].chosenVehicle ~= data.toVehicle then
        local closestVehicle, closestDistance = QBCore.Functions.GetClosestVehicle(vector3(Config.Shops[shopName]["ShowroomVehicles"][data.ClosestVehicle].coords.x, Config.Shops[shopName]["ShowroomVehicles"][data.ClosestVehicle].coords.y, Config.Shops[shopName]["ShowroomVehicles"][data.ClosestVehicle].coords.z))
        if closestVehicle == 0 then return end
        if closestDistance < 5 then DeleteEntity(closestVehicle) end
        while DoesEntityExist(closestVehicle) do
            Wait(50)
        end
        Config.Shops[shopName]["ShowroomVehicles"][data.ClosestVehicle].chosenVehicle = data.toVehicle
        local model = GetHashKey(data.toVehicle)
        RequestModel(model)
        while not HasModelLoaded(model) do
            Wait(50)
        end
        local veh = CreateVehicle(model, Config.Shops[shopName]["ShowroomVehicles"][data.ClosestVehicle].coords.x, Config.Shops[shopName]["ShowroomVehicles"][data.ClosestVehicle].coords.y, Config.Shops[shopName]["ShowroomVehicles"][data.ClosestVehicle].coords.z, false, false)
        while not DoesEntityExist(veh) do
            Wait(50)
        end
        SetModelAsNoLongerNeeded(model)
        SetVehicleOnGroundProperly(veh)
        SetEntityInvincible(veh, true)
        SetEntityHeading(veh, Config.Shops[shopName]["ShowroomVehicles"][data.ClosestVehicle].coords.w)
        SetVehicleDoorsLocked(veh, 3)
        FreezeEntityPosition(veh, true)
        SetVehicleNumberPlateText(veh, 'BUY ME')
        if Config.UsingTarget then createVehZones(shopName, veh) end
    end
end)

RegisterNetEvent('vhming-vehicleshop:client:buyShowroomVehicle', function(vehicle, plate)
    tempShop = insideShop -- temp hacky way of setting the shop because it changes after the callback has returned since you are outside the zone
    QBCore.Functions.TriggerCallback('QBCore:Server:SpawnVehicle', function(netId)
        local veh = NetToVeh(netId)
        exports['vhming-fuel']:SetFuel(veh, 100)
        SetVehicleNumberPlateText(veh, plate)
        SetEntityHeading(veh, Config.Shops[tempShop]["VehicleSpawn"].w)
        TriggerEvent("vehiclekeys:client:SetOwner2", QBCore.Functions.GetPlate(veh))
        TriggerServerEvent("et-vehicletuning:server:SaveVehicleProps", QBCore.Functions.GetVehicleProperties(veh))
    end, vehicle, Config.Shops[tempShop]["VehicleSpawn"], true)
end)

RegisterNetEvent('vhming-vehicleshop:client:openIdMenu', function(data)
    local dialog = exports['et-input']:ShowInput({
        header = QBCore.Shared.Vehicles[data.vehicle]["name"],
        submitText = Lang:t('menus.submit_text'),
        inputs = {
            {
                text = Lang:t('menus.submit_ID'),
                name = "playerid",
                type = "number",
                isRequired = true
            }
        }
    })
    if dialog then
        if not dialog.playerid then return end
        if data.type == 'testDrive' then
            TriggerServerEvent('vhming-vehicleshop:server:customTestDrive', data.vehicle, dialog.playerid)
        elseif data.type == 'sellVehicle' then
            TriggerServerEvent('vhming-vehicleshop:server:sellShowroomVehicle', data.vehicle, dialog.playerid)
        end
    end
end)

-- Threads
CreateThread(function()
    for k, v in pairs(Config.Shops) do
        if v.showBlip then
            local Dealer = AddBlipForCoord(Config.Shops[k]["Location"])
            SetBlipSprite(Dealer, Config.Shops[k]["blipSprite"])
            SetBlipDisplay(Dealer, 4)
            SetBlipScale(Dealer, 0.70)
            SetBlipAsShortRange(Dealer, true)
            SetBlipColour(Dealer, Config.Shops[k]["blipColor"])
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentSubstringPlayerName(Config.Shops[k]["ShopLabel"])
            EndTextCommandSetBlipName(Dealer)
        end
    end
    while true do
        wait = 500
        while not LocalPlayer.state.isLoggedIn do
            -- do nothing
            Wait(wait)
        end
        
        
        RegisterDutyTarget()
        if PlayerData.job.name == 'cardealer' then
            if isInsideDutyZone then
                wait = 0
                if IsControlJustPressed(0, 38) then
                    TriggerServerEvent("QBCore:ToggleDuty")
                end
            end
        end
        Wait(wait)
    end
end)
