local QBCore = exports['et-core']:GetCoreObject()

RegisterServerEvent('et-rental:attemptPurchase', function(car,price)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    local cash = Player.PlayerData.money.cash
    if cash >= price then
        Player.Functions.RemoveMoney("cash",price,"rentals")
        TriggerClientEvent('et-rental:vehiclespawn', source, car)
        TriggerClientEvent('QBCore:Notify', src, car .. " đã được thuê với giá $" .. price .. ", nếu trả lại bạn sẽ nhận được lại 50% chi phí thuê xe.", "success")
    else
        TriggerClientEvent('et-rental:attemptvehiclespawnfail', source)
    end
end)

RegisterServerEvent('et-rental:giverentalpaperServer', function(model, plateText)
    local src = source
    local PlayerData = QBCore.Functions.GetPlayer(src)
    local info = {
        label = plateText
    }
    PlayerData.Functions.AddItem('rentalpapers', 1, false, info)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['rentalpapers'], "add")
end)

RegisterServerEvent('et-rental:server:payreturn', function(model)
    local src = source
    local Player = QBCore.Functions.GetPlayer(source)
    for k,v in pairs(Config.vehicleList) do 
        if string.lower(v.model) == model then
            local payment = v.price / 2
            Player.Functions.AddMoney("cash",payment,"rental-return")
            TriggerClientEvent('QBCore:Notify', src, "Bạn đã trả lại chiếc xe đã thuê của mình và nhận được lại $" .. payment .. "success")
        end
    end
end)

QBCore.Functions.CreateCallback('et-rental:server:hasrentalpapers', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local Item = Player.Functions.GetItemByName("rentalpapers")
    if Item ~= nil then
        cb(true)
    else
        cb(false)
    end
end)
