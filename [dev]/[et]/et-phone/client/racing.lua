local QBCore = exports['et-core']:GetCoreObject()

-- NUI Callback

RegisterNUICallback('GetAvailableRaces', function(_, cb)
    QBCore.Functions.TriggerCallback('et-lapraces:server:GetRaces', function(Races)
        cb(Races)
    end)
end)

RegisterNUICallback('JoinRace', function(data, cb)
    TriggerServerEvent('et-lapraces:server:JoinRace', data.RaceData)
    cb("ok")
end)

RegisterNUICallback('LeaveRace', function(data, cb)
    TriggerServerEvent('et-lapraces:server:LeaveRace', data.RaceData)
    cb("ok")
end)

RegisterNUICallback('StartRace', function(data, cb)
    TriggerServerEvent('et-lapraces:server:StartRace', data.RaceData.RaceId)
    cb("ok")
end)

RegisterNUICallback('SetAlertWaypoint', function(data, cb)
    local coords = data.alert.coords
    QBCore.Functions.Notify('GPS set: '..data.alert.title, "primary")
    SetNewWaypoint(coords.x, coords.y)
    cb("ok")
end)

RegisterNUICallback('GetRaces', function(_, cb)
    QBCore.Functions.TriggerCallback('et-lapraces:server:GetListedRaces', function(Races)
        cb(Races)
    end)
end)

RegisterNUICallback('GetTrackData', function(data, cb)
    QBCore.Functions.TriggerCallback('et-lapraces:server:GetTrackData', function(TrackData, CreatorData)
        TrackData.CreatorData = CreatorData
        cb(TrackData)
    end, data.RaceId)
end)

RegisterNUICallback('SetupRace', function(data, cb)
    TriggerServerEvent('et-lapraces:server:SetupRace', data.RaceId, tonumber(data.AmountOfLaps))
    cb("ok")
end)

RegisterNUICallback('HasCreatedRace', function(_, cb)
    QBCore.Functions.TriggerCallback('et-lapraces:server:HasCreatedRace', function(HasCreated)
        cb(HasCreated)
    end)
end)

RegisterNUICallback('IsInRace', function(_, cb)
    local InRace = exports['et-lapraces']:IsInRace()
    cb(InRace)
end)

RegisterNUICallback('IsAuthorizedToCreateRaces', function(data, cb)
    QBCore.Functions.TriggerCallback('et-lapraces:server:IsAuthorizedToCreateRaces', function(IsAuthorized, NameAvailable)
        local sendData = {
            IsAuthorized = IsAuthorized,
            IsBusy = exports['et-lapraces']:IsInEditor(),
            IsNameAvailable = NameAvailable,
        }
        cb(sendData)
    end, data.TrackName)
end)

RegisterNUICallback('StartTrackEditor', function(data, cb)
    TriggerServerEvent('et-lapraces:server:CreateLapRace', data.TrackName)
    cb("ok")
end)

RegisterNUICallback('GetRacingLeaderboards', function(_, cb)
    QBCore.Functions.TriggerCallback('et-lapraces:server:GetRacingLeaderboards', function(Races)
        cb(Races)
    end)
end)

RegisterNUICallback('RaceDistanceCheck', function(data, cb)
    QBCore.Functions.TriggerCallback('et-lapraces:server:GetRacingData', function(RaceData)
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local checkpointcoords = RaceData.Checkpoints[1].coords
        local dist = #(coords - vector3(checkpointcoords.x, checkpointcoords.y, checkpointcoords.z))
        if dist <= 115.0 then
            if data.Joined then
                TriggerEvent('et-lapraces:client:WaitingDistanceCheck')
            end
            cb(true)
        else
            QBCore.Functions.Notify('You\'re too far away from the race. GPS set.', "error", 5000)
            SetNewWaypoint(checkpointcoords.x, checkpointcoords.y)
            cb(false)
        end
    end, data.RaceId)
end)

RegisterNUICallback('IsBusyCheck', function(data, cb)
    if data.check == "editor" then
        cb(exports['et-lapraces']:IsInEditor())
    else
        cb(exports['et-lapraces']:IsInRace())
    end
end)

RegisterNUICallback('CanRaceSetup', function(_, cb)
    QBCore.Functions.TriggerCallback('et-lapraces:server:CanRaceSetup', function(CanSetup)
        cb(CanSetup)
    end)
end)

-- Events

RegisterNetEvent('et-phone:client:RaceNotify', function(message)
    TriggerEvent('et-phone:client:CustomNotification',
        "Racing",
        message,
        "fas fa-flag-checkered",
        "#353b48",
        3500
    )
end)

RegisterNetEvent('et-phone:client:UpdateLapraces', function()
    SendNUIMessage({
        action = "UpdateRacingApp",
    })
end)