-- NUI Callback
RegisterNUICallback('GetTruckerData', function(_, cb)
    local TruckerMeta = PlayerData.metadata.jobrep.trucker
    local TierData = exports['et-trucker']:GetTier(TruckerMeta)
    cb(TierData)
end)