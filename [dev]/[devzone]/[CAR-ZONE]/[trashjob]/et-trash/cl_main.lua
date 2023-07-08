local QBCore = exports["et-core"]:GetCoreObject()
local DoingRoute = false
local HasBag = false
local BagObject = nil
local pickupLocation = vector3(0.0, 0.0, 0.0)
local Truck = nil


RegisterNetEvent("garbage:attemptStart", function()
    if exports["et-groups"]:IsGroupLeader() then 
        if exports["et-groups"]:GetJobStage() == "WAITING" then
            local groupID = exports["et-groups"]:GetGroupID()
            
            local model = GetHashKey("trash")
            RequestModel(model)
            while not HasModelLoaded(model) do
                Wait(0)
            end

            TriggerServerEvent("garbage:createGroupJob", groupID)
        else 
            QBCore.Functions.Notify("Nhóm của bạn đang làm gì đó!", "error")
        end
    else 
        QBCore.Functions.Notify("Bạn không phải là trưởng nhóm!", "error")
    end
end)

RegisterNetEvent("garbage:attemptStop", function()
    if exports["et-groups"]:IsGroupLeader() then 
        if exports["et-groups"]:GetJobStage() == "GARBAGE RUN" then
            local groupID = exports["et-groups"]:GetGroupID()
            TriggerServerEvent("garbage:stopGroupJob", groupID)
        else 
            QBCore.Functions.Notify("Nhóm của bạn không chạy!", "error")
        end
    else 
        QBCore.Functions.Notify("Bạn không phải là trưởng nhóm!", "error")
    end
end)
RegisterNetEvent("garbage:spawnTrash", function(plate)
     exports['et-vehiclekeys']:SetVehicleKey(plate, true)
end)

RegisterNetEvent("garbage:startRoute", function(truckID)
    Truck = NetworkGetEntityFromNetworkId(truckID)
    exports['et-target']:AddGlobalVehicle({
        options = { 
        {

            icon = 'fas fa-trash-alt',
            label = 'Quăng rác',
            action = function(entity) 
                TossTrash()
            end,   
            canInteract = function(entity, distance, data)
                if entity == Truck and HasBag then return true end 
                return false
            end,
            }
        },
        distance = 2.5,
    })

    RouteLoop()
end)

RegisterNetEvent("garbage:endRoute", function()
    exports['et-target']:RemoveGlobalVehicle("Quăng rác")
    DoingRoute = false
    HasBag = false
    BagObject = nil
    Truck = nil
    pickupLocation = vector3(0.0, 0.0, 0.0)
    DetachEntity(BagObject, 1, false)
    DeleteObject(BagObject)
    BagObject = nil
end)

RegisterNetEvent("garage:pickupClean", function()
    DetachEntity(BagObject, 1, false)
    DeleteObject(BagObject)
    BagObject = nil
end)

RegisterNetEvent("garbage:updatePickup", function(coords)
    pickupLocation = coords
end)

function RouteLoop()
    DoingRoute = true
    local sleep = 2000
    CreateThread(function()
        while DoingRoute do
            local ped = PlayerPedId()
            local pos = GetEntityCoords(ped)
            local Distance = #(pos - vector3(pickupLocation.x, pickupLocation.y, pickupLocation.z))
            local DisplayText = false
            if Distance < 15 then 
                sleep = 0
                LoadAnimation('missfbi4prepp1')
                DrawMarker(27, pickupLocation.x, pickupLocation.y, pickupLocation.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 100, 245, 195, 255, false, false, false, false, false, false, false)
                if Distance < 1.5 then
                    if not DisplayText and not HasBag then
                        DisplayText = true
                        exports['et-core']:DrawText("[E] Lấy rác", "left")
                    end
                    if IsControlJustPressed(0, 51) then
                        HasBag = true
                        exports['et-core']:HideText()
                        TakeAnim()
                    end
                elseif Distance > 1.5 then
                    if DisplayText then
                        DisplayText = false
                        exports['et-core']:HideText()
                    end
                end
            else 
                sleep = 2000
            end

            Wait(sleep)
        end
    end)
end


function LoadAnimation(dict)
    RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do Wait(10) end
end

function AnimCheck()
    CreateThread(function()
        while HasBag do
            local ped = PlayerPedId()
            if not IsEntityPlayingAnim(ped, 'missfbi4prepp1', '_bag_walk_garbage_man', 3) then
                ClearPedTasksImmediately(ped)
                LoadAnimation('missfbi4prepp1')
                TaskPlayAnim(ped, 'missfbi4prepp1', '_bag_walk_garbage_man', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
            end
            Wait(200)
        end
    end)
end

function TakeAnim()
    local ped = PlayerPedId()
    LoadAnimation('missfbi4prepp1')
    TaskPlayAnim(ped, 'missfbi4prepp1', '_bag_walk_garbage_man', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
    BagObject = CreateObject(`prop_cs_rub_binbag_01`, 0, 0, 0, true, true, true)
    AttachEntityToEntity(BagObject, ped, GetPedBoneIndex(ped, 57005), 0.12, 0.0, -0.05, 220.0, 120.0, 0.0, true, true, false, true, 1, true)
    AnimCheck()
end

function DeliverAnim()
    local ped = PlayerPedId()
    LoadAnimation('missfbi4prepp1')
    TaskPlayAnim(ped, 'missfbi4prepp1', '_bag_throw_garbage_man', 8.0, 8.0, 1100, 48, 0.0, 0, 0, 0)
    FreezeEntityPosition(ped, true)
    SetTimeout(1250, function()
        DetachEntity(BagObject, 1, false)
        DeleteObject(BagObject)
        TaskPlayAnim(ped, 'missfbi4prepp1', 'exit', 8.0, 8.0, 1100, 48, 0.0, 0, 0, 0)
        FreezeEntityPosition(ped, false)
        BagObject = nil
    end)
end

function TossTrash()
    QBCore.Functions.Progressbar("deliverbag", "Đang quăng rác", 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        HasBag = false
        DeliverAnim()
        Wait(1500)
        TriggerServerEvent("garbage:updateBags", exports["et-groups"]:GetGroupID())
    end, function() -- Cancel
       
    end)
end


CreateThread(function()
    local garbageBlip = AddBlipForCoord(Config.Blip)
    SetBlipSprite(garbageBlip, 318)
    SetBlipDisplay(garbageBlip, 4)
    SetBlipScale(garbageBlip, 1.0)
    SetBlipAsShortRange(garbageBlip, true)
    SetBlipColour(garbageBlip, 2)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Nghề Rác")
    EndTextCommandSetBlipName(garbageBlip)

    exports['et-target']:SpawnPed({
        model = 's_m_y_garbage', 
        coords = Config.NPC,
        minusOne = true, 
        freeze = true, 
        invincible = true, 
        blockevents = true,
        scenario = 'WORLD_HUMAN_AA_COFFEE', 
        target = {
          useModel = false,
          options = {
            {
                type = "client",
                event = "garbage:attemptStart",
                label = 'Bắt đầu lấy rác',
                icon = 'fa-solid fa-circle',
                canInteract = function()
                    if DoingRoute then return false end
                    return true
                end,
            },
            {
                type = "client",
                event = "garbage:attemptStop",
                label = 'Hoàn thành cuộc lấy rác',
                icon = 'fa-solid fa-circle',
                canInteract = function()
                    return DoingRoute
                end,
            },
          },
          distance = 2.5,
        },
      })
end)