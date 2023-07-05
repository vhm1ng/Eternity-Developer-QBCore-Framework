local QBCore = exports["et-core"]:GetCoreObject()

RegisterServerEvent('lotus-milky:server:Apanhar', function() 
    local src = source
    local Player  = QBCore.Functions.GetPlayer(src)
    local quantity = math.random(1, 3)
    Player.Functions.AddItem("milk", quantity)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["milk"], 'add')
end)

QBCore.Functions.CreateUseableItem("xosua", function(source, item)
    --Player = QBCore.Functions.GetPlayer(source)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("lotus-milky:client:Apanhar", source)
        TriggerClientEvent('lotus-milky:client:dobenxosua', source, item.slot)
    end
end)

-- QBCore.Functions.CreateUseableItem("knife", function(source, item)
--     --Player = QBCore.Functions.GetPlayer(source)
--     local Player = QBCore.Functions.GetPlayer(source)
-- 	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
--         TriggerClientEvent("lotus-milky:slaughterCow", source)
--         TriggerClientEvent('lotus-milky:client:dobenknife', source, item.slot)
--     end
-- end)
-- Processo
RegisterServerEvent("lotus-milky:processo")
AddEventHandler("lotus-milky:processo", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local quantity = math.random(2,6)
    local trigo = Player.Functions.GetItemByName("milk")
    if trigo then
        if trigo.amount >= 2 then
            Player.Functions.RemoveItem("milk", 2)
            Player.Functions.AddItem("milk_pack", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["milk_pack"], "add")
			TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["milk"], "remove")
            TriggerClientEvent("QBCore:Notify", src, "Xong!", "success")
        else
            TriggerClientEvent("QBCore:Notify", src, "Bạn cần ít nhất 2 xô sữa đầy...!", "error")
        end
    else
        TriggerClientEvent("QBCore:Notify", src, "Bạn không có xô sữa đầy...!", "error")

    end
end)


RegisterServerEvent("lotus-milky:server:cowkilling", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local quantity = math.random(2,4)

    Player.Functions.AddItem("thitdongvat", quantity)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["thitdongvat"], "add")

    TriggerClientEvent("QBCore:Notify", src, "Xong!", "success")
    
end)

-- thịt nướng
RegisterServerEvent('lotus-nuongthit:ProcessThitbo',function()
    local a=source;
    local b=QBCore.Functions.GetPlayer(a)
    local c=b.Functions.GetItemByName('thitdongvat')
    local d=b.Functions.GetItemByName('tree_bark')
    if c and d then 
        if c.amount>=2 and d.amount>=1 then 
            b.Functions.RemoveItem('thitdongvat',2)
            b.Functions.RemoveItem('tree_bark',1)
            b.Functions.AddItem('thitbonuong',2)
            TriggerClientEvent("inventory:client:ItemBox",source,QBCore.Shared.Items['thitdongvat'],"remove")
            TriggerClientEvent("inventory:client:ItemBox",source,QBCore.Shared.Items['thitbonuong'],"add")
            TriggerClientEvent('QBCore:Notify',a, 'Bạn đã nướng xong thịt bò',"success", 4000)
        else 
            TriggerClientEvent('QBCore:Notify',a, 'Bạn cần 2 thịt bòa và 2 vỏ gỗ',"error", 4000)
        end 
    else 
        TriggerClientEvent('QBCore:Notify',a, 'Bạn cần 2 thịt bòa và 2 vỏ gỗ',"error", 4000)
    end 
end)
