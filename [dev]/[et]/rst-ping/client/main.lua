QBCore = nil
local pings = nil
local inMenu = false
local menu = false
local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('rst-ping:openMenu')
AddEventHandler('rst-ping:openMenu',function()
    OpenMenu()
    inMenu = true
end)
RegisterCommand('openmenu',function()
    if QBCore.Functions.GetPlayerData().job.name =='ambulance' then
        TriggerEvent('rst-ping:openMenu')
    end
end)

RegisterCommand('911e', function()
    TriggerServerEvent('rst-ping:requestForServerP',GetEntityCoords(PlayerPedId()))
end)
RegisterNetEvent('rst-ping:getDataFromServerP')
AddEventHandler('rst-ping:getDataFromServerP', function(data)
    pings = data
end)

RegisterNetEvent('rst-ping:dataInitP')
AddEventHandler('rst-ping:dataInitP',function()
    if inMenu then
        for k,v in ipairs(pings) do
            local cord = vector3(v.cords.x,v.cords.y,v.cords.z)
            local dist = distance(cord)
            v.distance = dist
        end
        SendNUIMessage(
            {
                type="getpinglist",
                list=pings, 
                myid=GetPlayerServerId(PlayerId()),
            }
        )
        toggle(true,true)
    end 
end)

RegisterNUICallback('xoa',function(data)
    print(data.id)
    TriggerServerEvent('rst-ping:removeP',data.id)
end)




RegisterNUICallback('nhan',function(data)
    print(data.x,data.y)
    SetNewWaypoint(tonumber(data.x), tonumber(data.y))
    TriggerServerEvent('rst-ping:updateP',data.id)
end)

function OpenMenu()
    if pings then
        for k,v in ipairs(pings) do
            local cord = vector3(v.cords.x,v.cords.y,v.cords.z)
            local dist = distance(cord)
            v.distance = dist
        end
        SendNUIMessage(
            {
                type="getpinglist",
                list=pings, 
                myid=GetPlayerServerId(PlayerId()),
            }
        )
        toggle(true,true) 
        inMenu = true
    else
        QBCore.Functions.Notify('Chưa có ai chết cả','error')
    end
end

RegisterNUICallback('huy',function(data)
    TriggerServerEvent('rst-ping:cancelP',data.id)
end)

function toggle(state,send)
    SetNuiFocus(state, state)
    if send then
        SendNUIMessage({
            type = "toggle",
            state = state
        })
    end
end

function distance(destination)
    local playerPed = PlayerPedId()
    local lCoords = GetEntityCoords(playerPed)
    local distance  = GetDistanceBetweenCoords(lCoords, destination, true)
    return distance
end

RegisterNUICallback('toggle', function(data)
    if data.state == false then
        SetNuiFocus(data.state,data.state)
        inMenu = false
    else
        SetNuiFocus(data.state,data.state)
    end
end)

