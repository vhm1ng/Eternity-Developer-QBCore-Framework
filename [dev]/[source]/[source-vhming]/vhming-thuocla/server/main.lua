local QBCore = exports['et-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("thuocla", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("vhming-thuocla:client:kiemtrabatlua", source)
end)
