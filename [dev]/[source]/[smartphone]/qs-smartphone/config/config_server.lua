QSPhone.RegisterServerCallback('qs-smartphone:server:HasPhone', function(source, cb)
    if Config.Framework == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(source)
        local phone = false
        if xPlayer ~= nil then
            if Config.RequiredPhone then
                for k,v in pairs(Config.PhonesProps) do
                    local HasPhone = xPlayer.getInventoryItem(k)
                    if HasPhone and HasPhone.count > 0 then
                        phone = HasPhone.name
                        break
                    end
                end
            else 
                phone = 'classic_phone'
            end
        end
        cb(phone)
    elseif Config.Framework == 'QBCore' then
        local xPlayer = GetPlayerFromIdFramework(source)
        local phone = false
        if xPlayer ~= nil then
            if Config.RequiredPhone then
                for k,v in pairs(Config.PhonesProps) do
                    local HasPhone = xPlayer.Functions.GetItemByName(k)
                    if HasPhone and HasPhone.amount > 0 then
                        phone = HasPhone.name
                        break
                    end
                end
            else 
                phone = 'classic_phone'
            end
        end
        cb(phone)
    end
end)

for k,v in pairs(Config.Phones) do
    if Config.RequiredPhone then
        if Config.Framework == 'ESX' then
            ESX.RegisterUsableItem(k, function(source, item)
                TriggerClientEvent('qs-smartphone:openPhone', source)
            end)
        elseif Config.Framework == 'QBCore' then
            QBCore.Functions.CreateUseableItem(k, function(source, item)
                TriggerClientEvent('qs-smartphone:openPhone', source)
            end)
        end
    end
end

RegisterNetEvent('qs-smartphone:SetPassword', function(pin, pay)
    if Config.Framework == 'ESX' then
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)    
        local player = QS.GetPlayerFromId(src)
        if xPlayer and player then 
            if pay then
                if xPlayer.getMoney() >= Config.ResetPassword.money then
                    xPlayer.removeMoney(Config.ResetPassword.money)
                    -- Set metadata
                    player.PlayerData.metadata["phone"].Pincode = pin
                    player.SetMetaData("phone", player.PlayerData.metadata["phone"])
                else
                    TriggerClientEvent('qs-smartphone:sendMessage', src, Lang("PINCODE_NO_MONEY"), 'error')    
                end
            else 
                -- Set metadata
                player.PlayerData.metadata["phone"].Pincode = pin
                player.SetMetaData("phone", player.PlayerData.metadata["phone"])
            end
        end
    elseif Config.Framework == 'QBCore' then
        local src = source
        local xPlayer = GetPlayerFromIdFramework(src)    
        if xPlayer then 
            if pay then
                if xPlayer.PlayerData.money['cash'] >= Config.ResetPassword.money then
                    xPlayer.Functions.RemoveMoney('cash', Config.ResetPassword.money)
                    -- Set metadata
                    xPlayer.PlayerData.metadata["phone"].Pincode = pin
                    xPlayer.Functions.SetMetaData("phone", xPlayer.PlayerData.metadata["phone"])
                else
                    TriggerClientEvent('qs-smartphone:sendMessage', src, Lang("PINCODE_NO_MONEY"), 'error')    
                end
            else 
                -- Set metadata
                xPlayer.PlayerData.metadata["phone"].Pincode = pin
                xPlayer.Functions.SetMetaData("phone", xPlayer.PlayerData.metadata["phone"])
            end
        end
    end
end)

RegisterServerEvent("qs-smartphone:server:uberPay")
AddEventHandler("qs-smartphone:server:uberPay",function(item, type)
    if Config.Framework == 'ESX' then 
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = Config.uberItems[item]["item"]
        if xPlayer and name then
            if xPlayer.getInventoryItem(name) and xPlayer.getInventoryItem(name).count > 0 then 
                xPlayer.removeInventoryItem(name, 1)
                local price = (Config.uberItems[item]["price"] * Config.uberPriceMultiplier)
                if type == 1 then 
                    price = price + math.random(Config.uberTipMin, Config.uberTipMax)
                    xPlayer.addMoney(price)
                elseif type == 2 then 
                    xPlayer.addMoney(price)
                end
            end
        end
	elseif Config.Framework == 'QBCore' then 
        local xPlayer = GetPlayerFromIdFramework(source)
        local name = Config.uberItems[item]["item"]
        if xPlayer and name then
            if xPlayer.Functions.GetItemByName(name) and xPlayer.Functions.GetItemByName(name).amount > 0 then 
                xPlayer.Functions.RemoveItem(name, 1)
                local price = (Config.uberItems[item]["price"] * Config.uberPriceMultiplier)
                if type == 1 then 
                    price = price + math.random(Config.uberTipMin, Config.uberTipMax)
                    xPlayer.Functions.AddMoney('cash', price)
                elseif type == 2 then 
                    xPlayer.Functions.AddMoney('cash', price)
                end
            end
        end
	end
end)

QSPhone.RegisterServerCallback('qs-smartphone:server:GetGarageVehicles', function(source, cb)
    if Config.Framework == 'ESX' then 
        local Player = GetPlayerFromIdFramework(source)
        local Vehicles = {}

        MySQL.Async.fetchAll("SELECT * FROM `owned_vehicles` WHERE `owner` = '"..Player.identifier.."'", {}, function(result)
            if result[1] ~= nil then
                for k, v in pairs(result) do

                    if v.garage == "OUT" then
                        VehicleState = "OUT"
                    else
                        VehicleState = "Garage"
                    end

                    local vehdata = {}
                    local genData = json.decode(result[k].vehicle)

                    vehdata = {
                        model = json.decode(result[k].vehicle).model,
                        plate = v.plate,

                        garage = v.garage,
                        state = VehicleState,
                        fuel = genData.fuel or 1000,
                        engine = genData.engine or 1000,
                        body = genData.body or 1000,
                    }

                    table.insert(Vehicles, vehdata)
                end
                cb(Vehicles)
            else
                cb(nil)
            end
        end)
    elseif Config.Framework == 'QBCore' then 
        local Player = GetPlayerFromIdFramework(source)
        local Vehicles = {}

        MySQL.Async.fetchAll("SELECT * FROM " .. Config.QBCoreFrameworkVehiclesTable .. " WHERE `citizenid` = '"..Player.identifier.."'", {}, function(result)
            if result[1] ~= nil then
                for k, v in pairs(result) do

                    if v.garage == "OUT" then
                        VehicleState = "OUT"
                    else
                        VehicleState = "Garage"
                    end

                    local vehdata = {}
                    vehdata.props = v.mods
                    vehdata.plate = v.plate
                    vehdata.model = v.vehicle
                    table.insert(Vehicles, vehdata)
                end
                cb(Vehicles)
            else
                cb(nil)
            end
        end)
    end
end)

QSPhone.RegisterServerCallback('qs-smartphone:server:ScanPlate', function(source, cb, plate)
    if Config.Framework == 'ESX' then 
        local src = source
        local vehicleData = {}
        if plate ~= nil then
            local result = MySQL.Sync.fetchAll('SELECT * FROM owned_vehicles WHERE plate = ?', {plate})
            if result[1] ~= nil then
                local player = MySQL.Sync.fetchAll('SELECT * FROM users WHERE identifier = ?', {result[1].owner})
                local charinfo = json.decode(player[1].charinfo)
                vehicleData = {
                    plate = plate,
                    status = true,
                    owner = charinfo.firstname .. " " .. charinfo.lastname,
                    citizenid = result[1].owner
                }
            elseif GeneratedPlates ~= nil and GeneratedPlates[plate] ~= nil then
                vehicleData = GeneratedPlates[plate]
            else
                local ownerInfo = GenerateOwnerName()
                GeneratedPlates[plate] = {
                    plate = plate,
                    status = true,
                    owner = ownerInfo.name,
                    citizenid = ownerInfo.citizenid
                }
                vehicleData = {
                    plate = plate,
                    status = true,
                    owner = ownerInfo.name,
                    citizenid = ownerInfo.citizenid
                }
            end
            cb(vehicleData)
        else
            cb(nil)
        end
    elseif Config.Framework == 'QBCore' then 
        local src = source
        local vehicleData = {}
        if plate ~= nil then
            local result = MySQL.Sync.fetchAll('SELECT * FROM player_vehicles WHERE plate = ?', {plate})
            if result[1] ~= nil then
                local player = MySQL.Sync.fetchAll('SELECT * FROM ' .. Config.QBCoreFrameworkPlayersTable .. ' WHERE citizenid = ?', {result[1].citizenid})
                local charinfo = json.decode(player[1].charinfo)
                vehicleData = {
                    plate = plate,
                    status = true,
                    owner = charinfo.firstname .. " " .. charinfo.lastname,
                    citizenid = result[1].citizenid
                }
            elseif GeneratedPlates ~= nil and GeneratedPlates[plate] ~= nil then
                vehicleData = GeneratedPlates[plate]
            else
                local ownerInfo = GenerateOwnerName()
                GeneratedPlates[plate] = {
                    plate = plate,
                    status = true,
                    owner = ownerInfo.name,
                    citizenid = ownerInfo.citizenid
                }
                vehicleData = {
                    plate = plate,
                    status = true,
                    owner = ownerInfo.name,
                    citizenid = ownerInfo.citizenid
                }
            end
            cb(vehicleData)
        else
            cb(nil)
        end
    end
end)

function GenerateOwnerName()
    local names = {
        [1] = { name = "Bailey Sykes",          citizenid = "DSH091G93" },
        [2] = { name = "Aroush Goodwin",        citizenid = "AVH09M193" },
        [3] = { name = "Tom Warren",            citizenid = "DVH091T93" },
        [4] = { name = "Abdallah Friedman",     citizenid = "GZP091G93" },
        [5] = { name = "Lavinia Powell",        citizenid = "DRH09Z193" },
        [6] = { name = "Andrew Delarosa",       citizenid = "KGV091J93" },
        [7] = { name = "Skye Cardenas",         citizenid = "ODF09S193" },
        [8] = { name = "Amelia-Mae Walter",     citizenid = "KSD0919H3" },
        [9] = { name = "Elisha Cote",           citizenid = "NDX091D93" },
        [10] = { name = "Janice Rhodes",        citizenid = "ZAL0919X3" },
        [11] = { name = "Justin Harris",        citizenid = "ZAK09D193" },
        [12] = { name = "Montel Graves",        citizenid = "POL09F193" },
        [13] = { name = "Benjamin Zavala",      citizenid = "TEW0J9193" },
        [14] = { name = "Mia Willis",           citizenid = "YOO09H193" },
        [15] = { name = "Jacques Schmitt",      citizenid = "QBC091H93" },
        [16] = { name = "Mert Simmonds",        citizenid = "YDN091H93" },
        [17] = { name = "Rickie Browne",        citizenid = "PJD09D193" },
        [18] = { name = "Deacon Stanley",       citizenid = "RND091D93" },
        [19] = { name = "Daisy Fraser",         citizenid = "QWE091A93" },
        [20] = { name = "Kitty Walters",        citizenid = "KJH0919M3" },
        [21] = { name = "Jareth Fernandez",     citizenid = "ZXC09D193" },
        [22] = { name = "Meredith Calhoun",     citizenid = "XYZ0919C3" },
        [23] = { name = "Teagan Mckay",         citizenid = "ZYX0919F3" },
        [24] = { name = "Kurt Bain",            citizenid = "IOP091O93" },
        [25] = { name = "Burt Kain",            citizenid = "PIO091R93" },
        [26] = { name = "Joanna Huff",          citizenid = "LEK091X93" },
        [27] = { name = "Carrie-Ann Pineda",    citizenid = "ALG091Y93" },
        [28] = { name = "Gracie-Mai Mcghee",    citizenid = "YUR09E193" },
        [29] = { name = "Robyn Boone",          citizenid = "SOM091W93" },
        [30] = { name = "Aliya William",        citizenid = "KAS009193" },
        [31] = { name = "Rohit West",           citizenid = "SOK091093" },
        [32] = { name = "Skylar Archer",        citizenid = "LOK091093" },
        [33] = { name = "Jake Kumar",           citizenid = "AKA420609" },
    }
    return names[math.random(1, #names)]
end


RegisterCommand('deleteallapps', function(source, args)
    if source == 0 then
        if Config.Framework == 'ESX' then
            MySQL.Sync.execute("UPDATE users SET apps = @apps, widget = @widget", {})
        elseif Config.Framework == 'QBCore' then
            MySQL.Sync.execute("UPDATE players SET apps = @apps, widget = @widget", {})
        end
        print('Data of column apps and widget deleted from all users!')
    else 
        TriggerClientEvent('qs-smartphone:sendMessage', source, 'Command only allowed to be executed from console!', 'error')    
    end
end, true)

RegisterCommand('deleteuserapps', function(source, args)
    if args and args[1] then 
        local idtarget = args[1]
        local target = GetPlayerFromIdFramework(tonumber(idtarget))
        if target then 
            if Config.Framework == 'ESX' then
                MySQL.Sync.execute("UPDATE users SET apps = @apps, widget = @widget WHERE identifier = @identifier", {
                    ["@apps"] = nil,
                    ["@widget"] = nil,
                    ["@identifier"] = target.identifier
                })
            elseif Config.Framework == 'QBCore' then
                print(target.identifier)
                MySQL.Sync.execute("UPDATE players SET apps = @apps, widget = @widget WHERE citizenid = @citizenid", {
                    ["@apps"] = nil,
                    ["@widget"] = nil,
                    ["@citizenid"] = target.identifier
                })
            end
            print('Data of column apps and widget deleted from user ID: ' .. idtarget)
        end
    end
end, true)

--[[ RegisterCommand('fakedispatch', function()
    local alertData = {
        title = "10-33 | Shop Robbery",
        coords = {x = 30, y = 20, z = 40},
        description = "A robbery started at the store"
    }
    TriggerClientEvent("qs-smartphone:client:addPoliceAlert", -1, alertData)
end) ]]