local QBCore = exports['et-core']:GetCoreObject()

QBCore.Functions.CreateCallback('et-spawn:server:getOwnedHouses', function(source, cb, cid)
    if cid ~= nil then
        local houses = exports.oxmysql:executeSync('SELECT * FROM player_houses WHERE citizenid = ?', {cid})
        if houses[1] ~= nil then
            cb(houses)
        else
            cb(nil)
        end
    else
        cb(nil)
    end
end)
