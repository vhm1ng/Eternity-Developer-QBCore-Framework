QBCore = exports['et-core']:GetCoreObject()

--Event to Remove Money from player upon failed attempt at theoritical test
RegisterNetEvent('et-dmv:theorypaymentfailed', function()
    local amount = Config.Amount['theoretical']/2
	local _source = source
	local Player = QBCore.Functions.GetPlayer(_source)
    Player.Functions.RemoveMoney(Config.PaymentType, amount)
    TriggerClientEvent('et-dmv:Notify', source, 'Bạn đã trả $'..amount, 3000, 'error', 'Paid')
    TriggerClientEvent('et-dmv:Notify', source, 'Bạn đã thất bại trong bài kiểm tra. Vui lòng thử lại!', 3000, 'error', 'Failed')

end)

--Event to Remove Money and Add Item upon successful attempt at theoritical test
RegisterNetEvent('et-dmv:theorypaymentpassed', function()
	local _source = source
	local Player = QBCore.Functions.GetPlayer(_source)
    local license = true
    local info = {}
    if Config.DriversTest then
        local info = {}
        local _source = source
        local Player = QBCore.Functions.GetPlayer(_source)
        local licenseTable = Player.PlayerData.metadata['licences']
        info.type = "Drivers Permit"
        licenseTable['permit'] = true
        Player.Functions.SetMetaData('licences', licenseTable)
        Player.Functions.RemoveMoney(Config.PaymentType, Config.Amount['theoretical'])
        if Config.GiveItem then
            Player.Functions.AddItem('permit', 1, nil, info)
            TriggerClientEvent('et-dmv:Notify', source, 'Bạn đã vượt qua và nhận được giấy phép của bạn. Xin chúc mừng!', 3000, 'success', 'Passed')
            TriggerClientEvent('inventory:client:ItemBox', _source, QBCore.Shared.Items['permit'], 'add')
        else
            TriggerClientEvent('et-dmv:Notify', source, 'Bạn đã vượt qua bài kiểm tra. Đến tòa thị chính để nhận giấy phép của bạn. Xin chúc mừng!', 3000, 'success', 'Passed')
        end
        TriggerClientEvent('et-dmv:Notify', source, 'Bạn đã trả $'..Config.Amount['theoretical'], 3000, 'success', 'Paid')
    elseif Config.DriversTest == false then
        info.firstname = Player.PlayerData.charinfo.firstname
        info.lastname = Player.PlayerData.charinfo.lastname
        info.birthdate = Player.PlayerData.charinfo.birthdate
        info.type = "Class C Driver License"
        local licenseTable = Player.PlayerData.metadata['licences']
        licenseTable['driver'] = true
        Player.Functions.SetMetaData('licences', licenseTable)
        Player.Functions.RemoveMoney(Config.PaymentType, Config.Amount['driving'])
        if Config.GiveItem then
            Player.Functions.AddItem('driver_license', 1, nil, info)
            TriggerClientEvent('et-dmv:Notify',source, 'Bạn đã vượt qua và có bằng lái xe của bạn. Xin chúc mừng!', 3000, 'success', 'Passed')
            TriggerClientEvent('inventory:client:ItemBox', _source, QBCore.Shared.Items['driver_license'], 'add')
        else
            TriggerClientEvent('et-dmv:Notify', source, 'Bạn đã đậu! Phải đến tòa thị chính và lấy bằng lái xe của bạn.', 3000, 'success', 'Passed')
        end
        TriggerClientEvent('et-dmv:Notify', source, 'Bạn đã trả $ '..Config.Amount['driving'], 3000, 'info', 'Paid')
    end
end)

RegisterNetEvent('et-dmv:driverpaymentpassed', function ()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local info = {}
    if Config.DriversTest then
        local info = {}
        local _source = source
        local Player = QBCore.Functions.GetPlayer(_source)
        local licenseTable = Player.PlayerData.metadata['licences']
        info.citizenid = Player.PlayerData.citizenid
        info.firstname = Player.PlayerData.charinfo.firstname
        info.lastname = Player.PlayerData.charinfo.lastname
        info.birthdate = Player.PlayerData.charinfo.birthdate
        info.gender = Player.PlayerData.charinfo.gender
        info.nationality = Player.PlayerData.charinfo.nationality
        licenseTable['driver'] = true
        Player.Functions.SetMetaData('licences', licenseTable)
        Player.Functions.RemoveMoney(Config.PaymentType, Config.Amount['driving'])
        if Config.GiveItem == true then
            Player.Functions.AddItem('driver_license', 1, nil, info)
            TriggerClientEvent('et-dmv:Notify', source, 'Bạn đã vượt qua bài kiểm tra trình điều khiển và nhận được giấy phép lái xe của mình. Xin chúc mừng!', 3000, 'success', 'Passed')
            TriggerClientEvent('inventory:client:ItemBox', _source, QBCore.Shared.Items['driver_license'], 'add')
        else
            TriggerClientEvent('et-dmv:Notify', source, 'Bạn đã vượt qua Bài kiểm tra trình điều khiển. Đến Tòa thị chính để lấy giấy phép.', 3000, 'success', 'Passed')
        end
        TriggerClientEvent('et-dmv:Notify', source, 'Bạn đã trả $'..Config.Amount['driving'], 3000, 'success', 'Paid')
    end
end)

RegisterNetEvent('et-dmv:driverpaymentfailed', function ()
    local amount = Config.Amount['driving']/2
    local _source = source
    local Player = QBCore.Functions.GetPlayer(_source)
    Player.Functions.RemoveMoney(Config.PaymentType, amount)
    TriggerClientEvent('et-dmv:Notify', source, 'Bạn đã trả $'..amount, 3000, 'error', 'Paid')
end)

QBCore.Functions.CreateCallback('et-dmv:server:permitdata', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local licenseTable = Player.PlayerData.metadata['licences']
    if licenseTable['permit'] == true then
        cb(false)
    else
        cb(true)
    end
end)

QBCore.Functions.CreateCallback('et-dmv:server:licensedata', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local licenseTable = Player.PlayerData.metadata['licences']
    if licenseTable['driver'] then
        cb(false)
    elseif licenseTable['permit'] and licenseTable['driver'] == false then
        cb(true)
    end
end)


-------- THIS IS A TEST FOR ADDING PERMIT AND LICENSE TO DATABASE FOR EXISTING PLAYERS
RegisterNetEvent('et-dmv:server:updatemetadata', function ()
    local src = source
    local PlayerData = QBCore.Players[source].PlayerData
    MySQL.Async.insert('INSERT INTO players (metadata) VALUES (:metadata) ON DUPLICATE KEY UPDATE metadata = :metadata', {
        metadata = 'permit = false'
    })
end)




RegisterNetEvent('et-cityhall:server:banPlayer', function()
    local src = source
    TriggerClientEvent('chatMessage', -1, "QB Anti-Cheat", "error", GetPlayerName(src).." has been banned for sending POST Request's ")
    MySQL.Async.insert('INSERT INTO bans (name, license, discord, ip, reason, expire, bannedby) VALUES (?, ?, ?, ?, ?, ?, ?)', {
        GetPlayerName(src),
        QBCore.Functions.GetIdentifier(src, 'license'),
        QBCore.Functions.GetIdentifier(src, 'discord'),
        QBCore.Functions.GetIdentifier(src, 'ip'),
        'Abuse localhost:13172 For POST Requests',
        2145913200,
        GetPlayerName(src)
    })
    DropPlayer(src, 'Attempting To Exploit')
end)
