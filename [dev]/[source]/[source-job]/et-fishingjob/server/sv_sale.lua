local moneyType = 'cash'
local priceTable = {
    fish = 50,
    fish2 = 54,
    goldfish = 60,
    largemouthbass = 64,
    redfish = 70,
    salmon = 74,
    stingray = 150,
    stripedbass = 160,
    whale = 420,
    whale2 = 440
}

RegisterNetEvent('et-fishing:server:SellFish', function(fish, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if type(fish) ~= 'string' or type(amount) ~= 'number' then return end

    -- Distance Exploit Check
    if #(GetEntityCoords(GetPlayerPed(src)) - Shared.SellLocation.xyz) > 5.0 then
        exports['et-core']:ExploitBan(src, 'fishing-sell-fish')
        return
    end

    local item = Player.Functions.GetItemByName(fish)
    if not item then return end
    if not priceTable[fish] then return end
    if item.amount >= amount then
        if exports['et-inventory']:RemoveItem(Player.PlayerData.source, item.name, amount, false) then
            -- Item Box
            TriggerClientEvent('inventory:client:ItemBox', Player.PlayerData.source, QBCore.Shared.Items[item.name], 'remove', amount)

            -- Wait to sync with animation
            Wait(3500)

            -- Give Cash
            Player.Functions.AddMoney(moneyType, amount * priceTable[item.name])

            -- Log
            TriggerEvent('et-log:server:CreateLog', 'fishing', 'Sale Fish', 'lightgreen', "**"..Player.PlayerData.name .. " (citizenid: "..Player.PlayerData.citizenid.." | id: "..Player.PlayerData.source..")** received $"..amount * priceTable[item.name].." for selling "..amount.."x "..QBCore.Shared.Items[item.name].label)

            -- Notification
            TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, 'Bạn nhận $'..amount * priceTable[item.name]..' vì đã bán '..QBCore.Shared.Items[item.name].label, 'success', 2500)
        end
    end
end)

QBCore.Functions.CreateCallback('et-fishing:server:CanSell', function(source, cb, fish, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if type(fish) ~= 'string' or type(amount) ~= 'number' then return end

    -- Distance Exploit Check
    if #(GetEntityCoords(GetPlayerPed(src)) - Shared.SellLocation.xyz) > 5.0 then
        exports['et-core']:ExploitBan(src, 'fishing-can-sell')
        return
    end

    local item = Player.Functions.GetItemByName(fish)
    if not item then return end

    if item.amount >= amount then
        cb(true)
    else
        cb(false)
    end
end)
