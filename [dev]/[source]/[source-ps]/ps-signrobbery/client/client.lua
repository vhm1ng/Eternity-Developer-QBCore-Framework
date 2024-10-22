local QBCore = exports['et-core']:GetCoreObject()
local objects = {}
local holdingSign = false
local CurrentCops = 0

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.TriggerCallback('et-signrobbery:server:GetObjects', function(incObjects)
        objects = incObjects
    end)
end)

--Functions
local function AlertCops()
    -- README: UNCOMMENT WHICHEVER ALERT YOU WANNA USE UNLESS YOU USE A DIFFERENT ALERT SYSTEM
    --TriggerServerEvent('police:server:policeAlert', 'Sign being stolen') -- Default QBCore Dispatch
    exports['ps-dispatch']:SignRobbery() -- ps-dispatch
end

local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(1)
    end
end

local function LoadPropDict(model)
    while not HasModelLoaded(GetHashKey(model)) do
        RequestModel(GetHashKey(model))
        Wait(10)
    end
end

-- Register Net Event
RegisterNetEvent('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

--Events
local hasTimeout = false
local timeoutDuration = 1000 * 60 * 1 --timeout
local robbery
local timeLogin = 60*10 --thời gian cần có ở trong tp để cướp
local timeRobberySign = 1000*60*3 --thời gian lau biển
RegisterNetEvent("et-signrobbery:client:StopSign", function(data)
    local test = GetGameTimer() / 1000 --giây
    if test >= timeLogin then --10 phút
        if CurrentCops >= Config.Police then
            -- -= 1 
            if hasTimeout == true then 
                local remainingTime = math.ceil((timeoutDuration/1000 - (test - robbery) )) --tính theo giây
                QBCore.Functions.Notify("Bạn vừa thực hiện hành vi này rồi, hãy thử lại sau ".. remainingTime .." giây", "test")
            else
                local ped = PlayerPedId()
                -- exports['ps-dispatch']:SignRobbery()
                exports['ps-ui']:Circle(function(success)
                    if success then
                        AlertCops()
                        loadAnimDict("amb@prop_human_bum_bin@base")
                        hasTimeout = true
                        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
                        QBCore.Functions.Progressbar("robbing_sign", "Lau biển cho sạch nàoo", timeRobberySign, false, true, {
                            disableMovement = true,
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        }, {}, {}, function()
                        end, function()
                            local coords = GetEntityCoords(data.entity)
                            SetEntityAsMissionEntity(data.entity, true, true)
                            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
                            DeleteEntity(data.entity)
                            local object = {coords = coords, model = -949234773}
                            TriggerServerEvent("et-signrobbery:server:delete", object)
                            Citizen.SetTimeout(timeoutDuration, function()
                                hasTimeout = false -- Reset the flag to false after the timeout
                            end)
                        end)
                        robbery = GetGameTimer() / 1000
                    end
                end, 3, 6)
            end
        else
        QBCore.Functions.Notify('Không đủ nhân lực cảnh sát', 'error', 3500) -- Thông báo không đủ cs
        end
    else
        local timeToRobbery = math.ceil((timeLogin - test))
        QBCore.Functions.Notify("Bạn cần ở trong thành phố thêm ".. timeToRobbery .." giây nữa để thực hiện hành vi", "test")
    end    
end)

-- RegisterNetEvent("et-signrobbery:client:WalkingManSign", function(data)
--     local ped = PlayerPedId()
--     exports['ps-ui']:Circle(function(success)
--         if success then
--             loadAnimDict("amb@prop_human_bum_bin@base")
--             TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
--             QBCore.Functions.Progressbar("robbing_sign", "Stealing Pedestrian Sign..", math.random(3000, 4000), false, true, {
--                 disableMovement = true,
--                 disableCarMovement = true,
--                 disableMouse = false,
--                 disableCombat = true,
--             }, {}, {}, function()
--             end, function()
--                 local coords = GetEntityCoords(data.entity)
--                 SetEntityAsMissionEntity(data.entity, true, true)
--                 StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
--                 DeleteEntity(data.entity)
--                 local object = {coords = coords, model = 1502931467}
--                 TriggerServerEvent("et-signrobbery:server:delete", object)
--                 AlertCops()
--             end)
--         end
--     end, 2, 6)
-- end)

-- RegisterNetEvent("et-signrobbery:client:DontBlockIntersectionSign", function(data)
--     local ped = PlayerPedId()
--     exports['ps-ui']:Circle(function(success)
--         if success then
--             loadAnimDict("amb@prop_human_bum_bin@base")
--             TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
--             QBCore.Functions.Progressbar("robbing_sign", "Stealing Intersection Sign..", math.random(3000, 4000), false, true, {
--                 disableMovement = true,
--                 disableCarMovement = true,
--                 disableMouse = false,
--                 disableCombat = true,
--             }, {}, {}, function()
--             end, function()
--                 local coords = GetEntityCoords(data.entity)
--                 SetEntityAsMissionEntity(data.entity, true, true)
--                 StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
--                 DeleteEntity(data.entity)
--                 local object = {coords = coords, model = 1191039009}
--                 TriggerServerEvent("et-signrobbery:server:delete", object)
--                 AlertCops()
--             end)
--         end
--     end, 2, 6)
-- end)

-- RegisterNetEvent("et-signrobbery:client:UTurnSign", function(data)
--     local ped = PlayerPedId()
--     exports['ps-ui']:Circle(function(success)
--         if success then
--             loadAnimDict("amb@prop_human_bum_bin@base")
--             TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
--             QBCore.Functions.Progressbar("robbing_sign", "Stealing U Turn Sign..", math.random(3000, 4000), false, true, {
--                 disableMovement = true,
--                 disableCarMovement = true,
--                 disableMouse = false,
--                 disableCombat = true,
--             }, {}, {}, function()
--             end, function()
--                 local coords = GetEntityCoords(data.entity)
--                 SetEntityAsMissionEntity(data.entity, true, true)
--                 StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
--                 DeleteEntity(data.entity)
--                 local object = {coords = coords, model = 4138610559}
--                 TriggerServerEvent("et-signrobbery:server:delete", object)
--                 AlertCops()
--             end)
--         end
--     end, 2, 6)
-- end)

-- RegisterNetEvent("et-signrobbery:client:NoParkingSign", function(data)
--     local ped = PlayerPedId()
--     exports['ps-ui']:Circle(function(success)
--         if success then
--             loadAnimDict("amb@prop_human_bum_bin@base")
--             TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
--             QBCore.Functions.Progressbar("robbing_sign", "Stealing No Parking Sign..", math.random(3000, 4000), false, true, {
--                 disableMovement = true,
--                 disableCarMovement = true,
--                 disableMouse = false,
--                 disableCombat = true,
--             }, {}, {}, function()
--             end, function()
--                 local coords = GetEntityCoords(data.entity)
--                 SetEntityAsMissionEntity(data.entity, true, true)
--                 StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
--                 DeleteEntity(data.entity)
--                 local object = {coords = coords, model = 3830972543}
--                 TriggerServerEvent("et-signrobbery:server:delete", object)
--                 AlertCops()
--             end)
--         end
--     end, 2, 6)
-- end)

-- RegisterNetEvent("et-signrobbery:client:LeftTurnSign", function(data)
--     local ped = PlayerPedId()
--     exports['ps-ui']:Circle(function(success)
--         if success then
--             loadAnimDict("amb@prop_human_bum_bin@base")
--             TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
--             QBCore.Functions.Progressbar("robbing_sign", "Stealing Left Turn Sign..", math.random(3000, 4000), false, true, {
--                 disableMovement = true,
--                 disableCarMovement = true,
--                 disableMouse = false,
--                 disableCombat = true,
--             }, {}, {}, function()
--             end, function()
--                 local coords = GetEntityCoords(data.entity)
--                 SetEntityAsMissionEntity(data.entity, true, true)
--                 StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
--                 DeleteEntity(data.entity)
--                 local object = {coords = coords, model = 2643325436}
--                 TriggerServerEvent("et-signrobbery:server:delete", object)
--                 AlertCops()
--             end)
--         end
--     end, 2, 6)
-- end)

-- RegisterNetEvent("et-signrobbery:client:RightTurnSign", function(data)
--     local ped = PlayerPedId()
--     exports['ps-ui']:Circle(function(success)
--         if success then
--             loadAnimDict("amb@prop_human_bum_bin@base")
--             TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
--             QBCore.Functions.Progressbar("robbing_sign", "Stealing Right Turn Sign..", math.random(3000, 4000), false, true, {
--                 disableMovement = true,
--                 disableCarMovement = true,
--                 disableMouse = false,
--                 disableCombat = true,
--             }, {}, {}, function()
--             end, function()
--                 local coords = GetEntityCoords(data.entity)
--                 SetEntityAsMissionEntity(data.entity, true, true)
--                 StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
--                 DeleteEntity(data.entity)
--                 local object = {coords = coords, model = 793482617}
--                 TriggerServerEvent("et-signrobbery:server:delete", object)
--                 AlertCops()
--             end)
--         end
--     end, 2, 6)
-- end)

-- RegisterNetEvent("et-signrobbery:client:NoTrespassingSign", function(data)
--     local ped = PlayerPedId()
--     exports['ps-ui']:Circle(function(success)
--         if success then
--             loadAnimDict("amb@prop_human_bum_bin@base")
--             TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
--             QBCore.Functions.Progressbar("robbing_sign", "Stealing No Trespassing Sign..", math.random(3000, 4000), false, true, {
--                 disableMovement = true,
--                 disableCarMovement = true,
--                 disableMouse = false,
--                 disableCombat = true,
--             }, {}, {}, function()
--             end, function()
--                 local coords = GetEntityCoords(data.entity)
--                 SetEntityAsMissionEntity(data.entity, true, true)
--                 StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
--                 DeleteEntity(data.entity)
--                 local object = {coords = coords, model = 1021214550}
--                 TriggerServerEvent("et-signrobbery:server:delete", object)
--                 AlertCops()
--             end)
--         end
--     end, 2, 6)
-- end)

-- RegisterNetEvent("et-signrobbery:client:YieldSign", function(data)
--     local ped = PlayerPedId()
--     exports['ps-ui']:Circle(function(success)
--         if success then
--             loadAnimDict("amb@prop_human_bum_bin@base")
--             TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
--             QBCore.Functions.Progressbar("robbing_sign", "Stealing Yield Sign..", math.random(3000, 4000), false, true, {
--                 disableMovement = true,
--                 disableCarMovement = true,
--                 disableMouse = false,
--                 disableCombat = true,
--             }, {}, {}, function()
--             end, function()
--                 local coords = GetEntityCoords(data.entity)
--                 SetEntityAsMissionEntity(data.entity, true, true)
--                 StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
--                 DeleteEntity(data.entity)
--                 local object = {coords = coords, model = 3654973172}
--                 TriggerServerEvent("et-signrobbery:server:delete", object)
--                 AlertCops()
--             end)
--         end
--     end, 2, 6)
-- end)

local prop = nil
function AddPropToPlayerAndAnim(prop1, bone, off1, off2, off3, rot1, rot2, rot3)
    loadAnimDict("amb@world_human_janitor@male@base")
    local Player = PlayerPedId()
    local x,y,z = table.unpack(GetEntityCoords(Player))
    if not HasModelLoaded(prop1) then
        LoadPropDict(prop1)
    end
    prop = CreateObject(GetHashKey(prop1), x, y, z+0.2,  true,  true, true)
    AttachEntityToEntity(prop, Player, GetPedBoneIndex(Player, bone), off1, off2, off3, rot1, rot2, rot3, true, true, false, true, 1, true)
    SetModelAsNoLongerNeeded(prop1)
    TaskPlayAnim(Player, "amb@world_human_janitor@male@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)

    CreateThread(function()
        while holdingSign do
            Wait(1000)
            if not IsEntityPlayingAnim(PlayerPedId(), "amb@world_human_janitor@male@base", "base", 3) and holdingSign then
                holdingSign = false
                DeleteEntity(prop)
            end
        end
    end)
end

--Emote Events
RegisterNetEvent("et-signrobbery:use:StopSign", function(src)
    if not holdingSign then
        holdingSign = true
        AddPropToPlayerAndAnim("prop_sign_road_01a", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
    else
        holdingSign = false
        DeleteEntity(prop)
        ClearPedSecondaryTask(PlayerPedId())
    end
end)

-- RegisterNetEvent("et-signrobbery:use:WalkingManSign", function(src) 
--     if not holdingSign then
--         holdingSign = true
--         AddPropToPlayerAndAnim("prop_sign_road_05a", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
--     else
--         holdingSign = false
--         DeleteEntity(prop)
--         ClearPedSecondaryTask(PlayerPedId())
--     end
-- end)

-- RegisterNetEvent("et-signrobbery:use:DontBlockIntersectionSign", function(src)
--     if not holdingSign then
--         holdingSign = true
--         AddPropToPlayerAndAnim("prop_sign_road_03e", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
--     else
--         holdingSign = false
--         DeleteEntity(prop)
--         ClearPedSecondaryTask(PlayerPedId())
--     end
-- end)

-- RegisterNetEvent("et-signrobbery:use:UturnSign", function(src)
--     if not holdingSign then
--         holdingSign = true
--         AddPropToPlayerAndAnim("prop_sign_road_03m", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
--     else
--         holdingSign = false
--         DeleteEntity(prop)
--         ClearPedSecondaryTask(PlayerPedId())
--     end
    
-- end)

-- RegisterNetEvent("et-signrobbery:use:NoParkingSign", function(src)
--     if not holdingSign then
--         holdingSign = true
--         AddPropToPlayerAndAnim("prop_sign_road_04a", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
--     else
--         holdingSign = false
--         DeleteEntity(prop)
--         ClearPedSecondaryTask(PlayerPedId())
--     end
    
-- end)

-- RegisterNetEvent("et-signrobbery:use:LeftTurnSign", function(src)
--     if not holdingSign then
--         holdingSign = true
--         AddPropToPlayerAndAnim("prop_sign_road_05e", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
--     else
--         holdingSign = false
--         DeleteEntity(prop)
--         ClearPedSecondaryTask(PlayerPedId())
--     end
    
-- end)

-- RegisterNetEvent("et-signrobbery:use:RightTurnSign", function(src)
--     if not holdingSign then
--         holdingSign = true
--         AddPropToPlayerAndAnim("prop_sign_road_05f", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
--     else
--         holdingSign = false
--         DeleteEntity(prop)
--         ClearPedSecondaryTask(PlayerPedId())
--     end
    
-- end)

-- RegisterNetEvent("et-signrobbery:use:NoTrespassingSign", function(src)
--     if not holdingSign then
--         holdingSign = true
--         AddPropToPlayerAndAnim("prop_sign_road_restriction_10", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
--     else
--         holdingSign = false
--         DeleteEntity(prop)
--         ClearPedSecondaryTask(PlayerPedId())
--     end
    
-- end)

-- RegisterNetEvent("et-signrobbery:use:YieldSign", function(src)
--     if not holdingSign then
--         holdingSign = true
--         AddPropToPlayerAndAnim("prop_sign_road_02a", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
--     else
--         holdingSign = false
--         DeleteEntity(prop)
--         ClearPedSecondaryTask(PlayerPedId())
--     end
    
-- end)

--Deleting The Sign Event
RegisterNetEvent("signrobbery:client:delete", function(object)
    objects[#objects+1] = {coords = object.coords, model = object.model}
    local ent = GetClosestObjectOfType(object.coords.x, object.coords.y, object.coords.z, 0.1, object.model, false, false, false)
    if DoesEntityExist(ent) then
        SetEntityAsMissionEntity(ent, 1, 1)
        DeleteObject(ent)
        SetEntityAsNoLongerNeeded(ent)
    end
end)

--Target Exports
CreateThread(function()
    exports['et-target']:AddTargetModel('prop_sign_road_01a', {
        options = {
            {
                type = 'client',
                event = "et-signrobbery:client:StopSign",
                icon = 'fas fa-user-secret',
                label = 'Lau sạch biển',
            }
        },
        distance = 4.0, 
    })

--     exports['et-target']:AddTargetModel('prop_sign_road_05a', {
--         options = {
--             {
--                 type = 'client',
--                 event = "et-signrobbery:client:WalkingManSign",
--                 icon = 'fas fa-user-secret',
--                 label = 'Steal Sign',
--             }
--         },
--         distance = 4.0, 
--     })

--     exports['et-target']:AddTargetModel('prop_sign_road_03e', {
--         options = {
--             {
--                 type = 'client',
--                 event = "et-signrobbery:client:DontBlockIntersectionSign",
--                 icon = 'fas fa-user-secret',
--                 label = 'Steal Sign',
--             }
--         },
--         distance = 4.0, 
--     })

--     exports['et-target']:AddTargetModel('prop_sign_road_03m', {
--         options = {
--             {
--                 type = 'client',
--                 event = "et-signrobbery:client:UTurnSign",
--                 icon = 'fas fa-user-secret',
--                 label = 'Steal Sign',
--             }
--         },
--         distance = 4.0, 
--     })

--     exports['et-target']:AddTargetModel('prop_sign_road_04a', {
--         options = {
--             {
--                 type = 'client',
--                 event = "et-signrobbery:client:NoParkingSign",
--                 icon = 'fas fa-user-secret',
--                 label = 'Steal Sign',
--             }
--         },
--         distance = 4.0, 
--     })

--     exports['et-target']:AddTargetModel('prop_sign_road_05e', {
--         options = {
--             {
--                 type = 'client',
--                 event = "et-signrobbery:client:LeftTurnSign",
--                 icon = 'fas fa-user-secret',
--                 label = 'Steal Sign',
--             }
--         },
--         distance = 4.0, 
--     })

--     exports['et-target']:AddTargetModel('prop_sign_road_05f', {
--         options = {
--             {
--                 type = 'client',
--                 event = "et-signrobbery:client:RightTurnSign",
--                 icon = 'fas fa-user-secret',
--                 label = 'Steal Sign',
--             }
--         },
--         distance = 4.0, 
--     })

--     exports['et-target']:AddTargetModel('prop_sign_road_restriction_10', {
--         options = {
--             {
--                 type = 'client',
--                 event = "et-signrobbery:client:NoTrespassingSign",
--                 icon = 'fas fa-user-secret',
--                 label = 'Steal Sign',
--             }
--         },
--         distance = 4.0, 
--     })

--     exports['et-target']:AddTargetModel('prop_sign_road_02a', {
--         options = {
--             {
--                 type = 'client',
--                 event = "et-signrobbery:client:YieldSign",
--                 icon = 'fas fa-user-secret',
--                 label = 'Steal Sign',
--             }
--         },
--         distance = 4.0, 
--     })
end)

--Sell Animation
RegisterNetEvent('SignRobbery:TradeAnim', function(data)
	local pid = PlayerPedId()
	loadAnimDict("mp_common")
	TriggerServerEvent('SignRobbery:TradeItems', data)
	TaskPlayAnim(pid, "mp_common", "givetake2_a", 100.0, 200.0, 0.3, 120, 0.2, 0, 0, 0)
    Wait(1500)
    holdingSign = false
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    StopAnimTask(pid, "mp_common", "givetake2_a", 1.0)
    RemoveAnimDict("mp_common")
end)

--Sign Robbery To Scrap Material Event
RegisterNetEvent('SignRobbery:Trade:Menu', function()
    exports['et-menu']:openMenu({
		{ header = "Sign Scrapping", txt = "Trade Signs for Materials", isMenuHeader = true },
		{ header = "Stop Signs", txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 1 } },
		{ header = "Walking Man Signs",  txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 2 } },
        { header = "Don't Block Intersections Signs",  txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 3 } },
        { header = "U Turn Signs", txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 4 } },
        { header = "No Parking Signs", txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 5 } },
        { header = "Turn Left Signs", txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 6 } },
        { header = "Turn Right Signs", txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 7 } },
        { header = "No Trespassing Signs", txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 8 } },
        { header = "Yield Signs", txt = "Trade", params = { event = "SignRobbery:TradeAnim", args = 9 } },
        { header = "", txt = "❌ Close", params = { event = "SignRobbery:CloseMenu" } },
    })
end)

RegisterNetEvent("SignRobbery:CloseMenu", function() exports['et-menu']:closeMenu() end)

--Export For Scrapping The Sign
exports['et-target']:AddBoxZone("SignRobberyScrap", vector3(2332.43, 3026.89, 48.15), 1.5, 1, {
	name = "SignRobberyScrap",
	heading = 270,
	debugPoly = false,
	minZ = 44.35,
	maxZ = 48.35,
}, {
	options = {
		{
            type = "client",
            event = "SignRobbery:Trade:Menu",
			icon = "fas fa-recycle",
			label = "Scrap Sign",
		},
	},
	distance = 2.5
})

CreateThread(function()
    while true do
        for k = 1, #objects, 1 do
            v = objects[k]
            local ent = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 0.1, v.model, false, false, false)
            if DoesEntityExist(ent) then
                SetEntityAsMissionEntity(ent, 1, 1)
                DeleteObject(ent)
                SetEntityAsNoLongerNeeded(ent)
            end
        end
        Wait(1000)
    end
end)
