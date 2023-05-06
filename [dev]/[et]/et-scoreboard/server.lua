local QBCore = exports['et-core']:GetCoreObject()

QBCore.Functions.CreateCallback('et-scoreboard:server:GetConfig', function(_, cb)
    cb(Config.IllegalActions)
end)

QBCore.Functions.CreateCallback('et-scoreboard:server:GetScoreboardData', function(_, cb)
    local totalPlayers = 0
    local policeCount = 0
    local players = {}

    for _, v in pairs(QBCore.Functions.GetQBPlayers()) do
        if v then
            totalPlayers += 1

            if v.PlayerData.job.name == "police" and v.PlayerData.job.onduty then
                policeCount += 1
            end

            players[v.PlayerData.source] = {}
            players[v.PlayerData.source].optin = QBCore.Functions.IsOptin(v.PlayerData.source)
        end
    end
    cb(totalPlayers, policeCount, players)
end)

RegisterNetEvent('et-scoreboard:server:SetActivityBusy', function(activity, bool)
    Config.IllegalActions[activity].busy = bool
    TriggerClientEvent('et-scoreboard:client:SetActivityBusy', -1, activity, bool)
end)