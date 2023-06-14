local QBCore = exports['et-core']:GetCoreObject()

--Items
QBCore.Functions.CreateUseableItem('beehive', function(source)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.RemoveItem('beehive', 1)
    TriggerClientEvent('et-beekeeping:itemUsed', source)
end)

--Callbacks
QBCore.Functions.CreateCallback('et-beekeeping:removeHive', function(source, cb, hId)
    MySQL.update('DELETE FROM beehives WHERE id = @id', {["@id"] = hId}, function(hives)
        TriggerClientEvent('et-beekeeping:trigger_zone', -1, 4, hId)
        cb(true)
    end)
end)

QBCore.Functions.CreateCallback('et-beekeeping:addQueen', function(source, cb, key)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    
    MySQL.Async.execute('UPDATE beehives SET queen = 1 WHERE id = @id', {["@id"] = key}, function(rowschanged)
        MySQL.Async.fetchAll('SELECT * FROM beehives WHERE id = @id', {["@id"] = key}, function(hive)
            TriggerClientEvent('et-beekeeping:trigger_zone', -1, 3, hive[1])
             xPlayer.Functions.RemoveItem("beequeen", 1)
           -- TriggerClientEvent("inventory:removeItem", xPlayer.source, "beequeen", 1)
            cb(true)
        end)
    end)
end)

QBCore.Functions.CreateCallback('et-beekeeping:CheckItem', function(source, cb, item)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local quantity = xPlayer.Functions.GetItemByName(item).count
    if source then
    cb(quantity)
    end
end)

QBCore.Functions.CreateCallback('et-beekeeping:harvestHive', function(source, cb, hId)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local hive = getHiveById(hId)
    local check=-1
    check=tonumber(hive.queen)
    if check~=0 and check~=1 then return end
    xPlayer.Functions.AddItem('beeswax', math.random(2, 5))
    xPlayer.Functions.AddItem('honey', math.random(0, 2))
    TriggerClientEvent('et-beekeeping:trigger_zone', -1, 4, hId)
    MySQL.Sync.execute('DELETE FROM beehives WHERE id = @id', {["@id"] = hId})
    cb(true)  
end)

QBCore.Functions.CreateCallback('et-beekeeping:getBeehives', function(source, cb)
    MySQL.Async.fetchAll('SELECT * FROM beehives', {}, function(hives)
        cb(hives)
    end)
end)

--Funtions
function getHiveById(hiveId)
    local result = MySQL.Sync.fetchAll('SELECT * FROM beehives WHERE id = @id', {["@id"] = hiveId})
    return result[1]
end

--Events
RegisterServerEvent('et-beekeeping:installHive')
AddEventHandler('et-beekeeping:installHive', function(coords, heading)
    local timestamp = os.time()
    MySQL.Async.insert('INSERT INTO beehives (coords, timestamp, heading, queen) VALUES (@coords, @state, @heading, @qn)', {
        ['@coords'] = json.encode(coords),
        ['@heading'] = json.encode(heading),
        ['@state'] = timestamp,
        ['@qn'] = 0,
    }, function(response)
        if response then
            MySQL.Async.fetchAll('SELECT * FROM beehives WHERE id = @id', {["@id"] = response}, function(hive)
                TriggerClientEvent('et-beekeeping:trigger_zone', -1, 2, hive[1])
            end)
        end
    end)
end)