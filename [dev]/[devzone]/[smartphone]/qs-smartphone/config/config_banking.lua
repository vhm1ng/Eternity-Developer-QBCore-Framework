QSPhone.RegisterServerCallback('qs-smartphone:server:GetBankData', function(source, cb)
    if Config.Framework == 'ESX' then 
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)
        if Config.IbanBank and not Config.okokBankingIban then
            cb({bank = xPlayer.getAccount('bank').money, iban = QS.GetPlayerFromId(src).PlayerData.charinfo.account, username = QS.GetPlayerFromId(src).PlayerData.charinfo.firstname .. " " ..QS.GetPlayerFromId(src).PlayerData.charinfo.lastname })
        elseif Config.okokBankingIban then
            MySQL.Async.fetchAll('SELECT iban FROM users WHERE identifier = @identifier', {
                ['@identifier'] = xPlayer.identifier
            }, function(result)
                if result and result[1] then 
                    xPlayer = ESX.GetPlayerFromId(src) -- Get data again just in case the query take too much time
                    cb({bank = xPlayer.getAccount('bank').money, iban = result[1].iban, username = QS.GetPlayerFromId(src).PlayerData.charinfo.firstname .. " " ..QS.GetPlayerFromId(src).PlayerData.charinfo.lastname })
                end
            end)
        else 
            cb({bank = xPlayer.getAccount('bank').money, iban = source, username = QS.GetPlayerFromId(src).PlayerData.charinfo.firstname .. " " ..QS.GetPlayerFromId(src).PlayerData.charinfo.lastname })
        end
    elseif Config.Framework == 'QBCore' then -- Framework QBCore
        local src = source
        local xPlayer = GetPlayerFromIdFramework(src)
        cb({bank = xPlayer.PlayerData.money['bank'], iban = source, username = xPlayer.PlayerData.charinfo.firstname .. " " .. xPlayer.PlayerData.charinfo.lastname })
    end
end)

RegisterServerEvent('qs-smartphone:server:TransferMoney')
AddEventHandler('qs-smartphone:server:TransferMoney', function(iban, amount)
    if Config.Framework == 'ESX' then 
        local src = source
        local sender = ESX.GetPlayerFromId(src)

        if Config.IbanBank and not Config.okokBankingIban then
            MySQL.Async.fetchAll("SELECT * FROM `users` WHERE charinfo LIKE '%".. '"phone":"' .. iban.."%' LIMIT 1", {}, function(result)
                if result and result[1] ~= nil then
                    local ibanReceived = json.decode(result[1].charinfo).phone
                    if tostring(ibanReceived) == tostring(iban) then
                        local recieverSteam = ESX.GetPlayerFromIdentifier(result[1].identifier)
            
                        if recieverSteam ~= nil then
                            local PhoneItem = false
                            if Config.RequiredPhone then
                                for k,v in pairs(Config.Phones) do
                                    local HasPhone = recieverSteam.getInventoryItem(k)
                                    if HasPhone and HasPhone.count > 0 then
                                        PhoneItem = HasPhone
                                        break
                                    end
                                end
                            else 
                                PhoneItem = {}
                                PhoneItem.count = 1
                            end
                            if sender.getAccount('bank').money >= amount then
                                recieverSteam.addAccountMoney('bank', amount)
                                sender.removeAccountMoney('bank', amount)

                                TriggerClientEvent("qs-smartphone:sendMessage", sender.source, Lang("BANK_TRANSFER_SUCCESS"), 'success')
                                
                                if PhoneItem and PhoneItem.count > 0 then
                                    TriggerClientEvent('qs-smartphone:client:TransferMoney', recieverSteam.source, amount, recieverSteam.getAccount('bank').money)
                                    TriggerClientEvent("qs-smartphone:sendMessage", recieverSteam.source, Lang("BANK_RECEIVED") .. amount, 'success')
                                end
                                LogTransferToDiscord()
                            end                
                        else
                            if sender.getAccount('bank').money >= amount then
                                sender.removeAccountMoney('bank', amount)
                                local decoded = json.decode(result[1].accounts)
                                decoded.bank = decoded.bank + amount
                                if Config.esxVersion == 'new' then
                                    MySQL.Async.execute("UPDATE `users` SET `accounts` = '"..json.encode(decoded).."' WHERE `identifier` = '"..result[1].identifier.."'", {}) 
                                    TriggerClientEvent("qs-smartphone:sendMessage", sender.source, Lang("BANK_TRANSFER_SUCCESS"), 'success')
                                    LogTransferToDiscord()
                                elseif Config.esxVersion == 'old' then
                                    MySQL.Async.execute("UPDATE users SET bank = bank + @add WHERE identifier=@identifier",{
                                        ['@add'] = tonumber(amount),
                                        ['@identifier'] = result[1].identifier
                                    })
                                    TriggerClientEvent("qs-smartphone:sendMessage", sender.source, Lang("BANK_TRANSFER_SUCCESS"), 'success')
                                    LogTransferToDiscord()
                                else
                                    print('qs-smarthphone: Config.esxVersion should be equal to new or old')
                                end
                            end
                        end
                    else 
                        TriggerClientEvent("qs-smartphone:sendMessage", sender.source, Lang("IBAN_DONT_EXISTS"), 'error')
                        TriggerClientEvent('qs-smartphone:client:TransferMoney', sender.source, 0, sender.getAccount('bank').money)
                    end
                else 
                    TriggerClientEvent("qs-smartphone:sendMessage", sender.source, Lang("IBAN_DONT_EXISTS"), 'error')
                    TriggerClientEvent('qs-smartphone:client:TransferMoney', sender.source, 0, sender.getAccount('bank').money)
                end
            end)
        elseif Config.okokBankingIban then
            MySQL.Async.fetchAll("SELECT * FROM `users` WHERE iban = @iban", { ['@iban'] = iban }, function(result)
                if result[1] and result[1] then
                    local recieverSteam = ESX.GetPlayerFromIdentifier(result[1].identifier)
        
                    if recieverSteam ~= nil then
                        local PhoneItem = false
                        if Config.RequiredPhone then
                            for k,v in pairs(Config.Phones) do
                                local HasPhone = recieverSteam.getInventoryItem(k)
                                if HasPhone and HasPhone.count > 0 then
                                    PhoneItem = HasPhone
                                    break
                                end
                            end
                        else 
                            PhoneItem = {}
                            PhoneItem.count = 1
                        end
                        if sender.getAccount('bank').money >= amount then
                            recieverSteam.addAccountMoney('bank', amount)
                            sender.removeAccountMoney('bank', amount)
        
                            TriggerClientEvent("qs-smartphone:sendMessage", sender.source, Lang("BANK_TRANSFER_SUCCESS"), 'success')
                            
                            if PhoneItem and PhoneItem.count > 0 then
                                TriggerClientEvent('qs-smartphone:client:TransferMoney', recieverSteam.source, amount, recieverSteam.getAccount('bank').money)
                                TriggerClientEvent("qs-smartphone:sendMessage", recieverSteam.source, Lang("BANK_RECEIVED") .. amount, 'success')
                            end
                            LogTransferToDiscord()
                        end                
                    else
                        if sender.getAccount('bank').money >= amount then
                            sender.removeAccountMoney('bank', amount)
                            local decoded = json.decode(result[1].accounts)
                            decoded.bank = decoded.bank + amount
                            if Config.esxVersion == 'new' then
                                MySQL.Async.execute("UPDATE `users` SET `accounts` = '"..json.encode(decoded).."' WHERE `identifier` = '"..result[1].identifier.."'", {}) 
                                TriggerClientEvent("qs-smartphone:sendMessage", sender.source, Lang("BANK_TRANSFER_SUCCESS"), 'success')
                                LogTransferToDiscord()
                            elseif Config.esxVersion == 'old' then
                                MySQL.Async.execute("UPDATE users SET bank = bank + @add WHERE identifier=@identifier",{
                                    ['@add'] = tonumber(amount),
                                    ['@identifier'] = result[1].identifier
                                })
                                TriggerClientEvent("qs-smartphone:sendMessage", sender.source, Lang("BANK_TRANSFER_SUCCESS"), 'success')
                                LogTransferToDiscord()
                            else
                                print('qs-smarthphone: Config.esxVersion should be equal to new or old')
                            end
                        end
                    end
                else 
                    TriggerClientEvent("qs-smartphone:sendMessage", sender.source, Lang("IBAN_DONT_EXISTS"), 'error')
                    TriggerClientEvent('qs-smartphone:client:TransferMoney', sender.source, 0, sender.getAccount('bank').money)
                end
            end)
        else
            if sender then
                iban = tonumber(iban)
                local target = ESX.GetPlayerFromId(iban)
                if target then
                    if sender.getAccount('bank').money >= amount then   
                        target.addAccountMoney('bank', amount)
                        sender.removeAccountMoney('bank', amount)

                        TriggerClientEvent("qs-smartphone:sendMessage", src, Lang("BANK_TRANSFER_SUCCESS"), 'success')

                        local PhoneItem = false
                        if Config.RequiredPhone then
                            for k,v in pairs(Config.Phones) do
                                local HasPhone = target.getInventoryItem(k)
                                if HasPhone and HasPhone.count > 0 then
                                    PhoneItem = HasPhone
                                    break
                                end
                            end
                        else 
                            PhoneItem = {}
                            PhoneItem.count = 1
                        end
                        if PhoneItem and PhoneItem.count > 0 then
                            TriggerClientEvent('qs-smartphone:client:TransferMoney', iban, amount, target.getAccount('bank').money)
                            TriggerClientEvent("qs-smartphone:sendMessage", iban, Lang("BANK_RECEIVED") .. amount, 'success')
                        end
                        LogTransferToDiscord()
                    end
                else 
                    TriggerClientEvent("qs-smartphone:sendMessage", sender.source, Lang("IBAN_DONT_EXISTS"), 'error')
                    TriggerClientEvent('qs-smartphone:client:TransferMoney', sender.source, 0, sender.getAccount('bank').money)
                end
            end
        end
    elseif Config.Framework == 'QBCore' then -- Framework QBCore
        local src = source
        local sender = GetPlayerFromIdFramework(src)
        if sender then
            iban = tonumber(iban)
            local target = GetPlayerFromIdFramework(iban)
            if target then
                if sender.PlayerData.money['bank'] >= amount then   
                    target.Functions.AddMoney('bank', amount)
                    sender.Functions.RemoveMoney('bank', amount)

                    TriggerClientEvent("qs-smartphone:sendMessage", src, Lang("BANK_TRANSFER_SUCCESS"), 'success')

                    local PhoneItem = false
                    if Config.RequiredPhone then
                        for k,v in pairs(Config.Phones) do
                            local HasPhone = target.Functions.GetItemByName(k)
                            if HasPhone and HasPhone.amount > 0 then
                                PhoneItem = HasPhone
                                break
                            end
                        end
                    else 
                        PhoneItem = {}
                        PhoneItem.amount = 1
                    end
                    if PhoneItem and PhoneItem.amount > 0 then
                        TriggerClientEvent('qs-smartphone:client:TransferMoney', iban, amount, sender.PlayerData.money['bank'])
                        TriggerClientEvent("qs-smartphone:sendMessage", iban, Lang("BANK_RECEIVED") .. amount, 'success')
                    end
                    LogTransferToDiscord()
                end
            else 
                TriggerClientEvent("qs-smartphone:sendMessage", src, Lang("IBAN_DONT_EXISTS"), 'error')
                TriggerClientEvent('qs-smartphone:client:TransferMoney', src, 0, sender.PlayerData.money['bank'])
            end
        end
    end
end)

local BankWebhook = ''

function LogTransferToDiscord()
    -- Add your own function to log the transfer here
end