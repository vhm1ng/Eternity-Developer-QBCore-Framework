QBCore = exports['et-core']:GetCoreObject()

RegisterNetEvent('et-fishing:server:RemoveBait', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    if exports['et-inventory']:RemoveItem(Player.PlayerData.source, 'fishingbait', 1, false) then
        TriggerClientEvent('inventory:client:ItemBox', Player.PlayerData.source, QBCore.Shared.Items['fishingbait'], 'remove', 1)
    end
end)

RegisterNetEvent('et-fishing:server:ReceiveFish', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    local random = math.random(100) -- Random number from 1 to 100
    local item

    if random >= 1 and random <= 19 then -- 19%
        item = 'fish'
    elseif random >= 19 and random <= 38 then -- 19%
        item = 'fish2'
    elseif random >= 38 and random <= 51 then -- 13%
        item = 'goldfish'
    elseif random >= 51 and random <= 64 then -- 13%
        item = 'largemouthbass'
    elseif random >= 64 and random <= 75 then -- 11%
        item = 'redfish'
    elseif random >= 75 and random <= 86 then -- 11%
        item = 'salmon'
    elseif random >= 86 and random <= 92 then -- 2%
        item = 'stingray'
    elseif random >= 92 and random <= 98 then -- 2%
        item = 'stripedbass'
    elseif random >= 98 and random <= 99 then -- 1%
        item = 'whale'
    elseif random >= 99 and random <= 100 then -- 1%
        item = 'whale2'
    end

    if exports['et-inventory']:AddItem(Player.PlayerData.source, item, 1, false) then
        TriggerClientEvent('inventory:client:ItemBox', Player.PlayerData.source, QBCore.Shared.Items[item], 'add', 1)
        TriggerEvent('et-log:server:CreateLog', 'fishing', 'Received Fish', 'blue', "**"..Player.PlayerData.name .. " (citizenid: "..Player.PlayerData.citizenid.." | id: "..Player.PlayerData.source..")** received 1x "..QBCore.Shared.Items[item].label)
    else
        TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, 'Your inventory is full already..', 'error', 2500)
    end
end)

QBCore.Functions.CreateUseableItem('fishingrod', function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not Player.Functions.GetItemByName('fishingrod') then return end
    TriggerClientEvent('et-fishing:client:FishingRod', src)
end)