if GetResourceState('lj-inventory') ~= 'started' then return end

QBCore = exports['et-core']:GetCoreObject()

function NewMetaDataLicense(src, itemName)
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    local newMetaDataItem = Player.Functions.GetItemByName(itemName)
    if newMetaDataItem then
        Player.PlayerData.items[newMetaDataItem.slot].info.mugShot = lib.callback.await('tC-idcard:client:callBack:getMugShot', src)
        Player.Functions.SetInventory(Player.PlayerData.items)
    end
end
