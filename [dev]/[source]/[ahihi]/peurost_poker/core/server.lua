--[[table = {
    id = 1,
    settings = {
        name = "Test Table",
        smallBlind = 100,
        maxPlayers = 10,
        owner = "identifier",
        pos = vector3(0, 0, 0),
        --instance = ?? --??? HOUSE SUPPORT MAYBE ???
    },
    game = {
        state = 0,
        pot = 0,
        smallBlind = 1,
        bigBlind = 1,
        activePlayer = 0,
        aPIndex = 0,
        call =  0,
        cards = {},
        message = ""
    },
    players = {
        { id = 1, name = "Alfred Jablosnk", chips = "7895", bet = 0, cards = {"0_0", "0_0"}, state = 0},
        { id = 5, name = "Alfredas Jablosnkas", chips = "1234", bet = 0, cards = {"0_0", "0_0"}, state = 0}
    },
}

players = {
    name = "Alfred Jablosnk",
    xPlayer = xPlayer, --?? IDK IF I SHOULD DO THIS TBH
    table = tonumber("-1"), --Table id here if player is active so auto fold when dc and shit yk,
    place = 0
}]]--


print("^7PEU_POKER || ^2Successfully authorized...^7")
print("^7PEU_POKER || Version:^2 2.0^7")
if GetCurrentResourceName() ~= "peurost_poker" then
    print("^7PEU_POKER || ^1CRITICAL ERROR^7 || RESOURCE NAME IS NOT peurost_poker. THIS WILL CAUSE ISSUES!")
end

--[[ CARDS ]]
local cards = {
    "1_2", "1_3", "1_4", "1_5", "1_6", "1_7", "1_8", "1_9", "1_10", "1_11", "1_12", "1_13", "1_14",
    "2_2", "2_3", "2_4", "2_5", "2_6", "2_7", "2_8", "2_9", "2_10", "2_11", "2_12", "2_13", "2_14",
    "3_2", "3_3", "3_4", "3_5", "3_6", "3_7", "3_8", "3_9", "3_10", "3_11", "3_12", "3_13", "3_14",
    "4_2", "4_3", "4_4", "4_5", "4_6", "4_7", "4_8", "4_9", "4_10", "4_11", "4_12", "4_13", "4_14",
}

--[[ GLOBAL VARIABLES ]] 

local tables = {}
local players = {}
local decks = {}

-- [[ CALLBACKS ]]

Callbacks = {}
Callbacks.ServerCallbacks = {}

Callbacks.RegisterServerCallback = function(name, cb)
    Callbacks.ServerCallbacks[name] = cb
end

Callbacks.TriggerServerCallback = function(name, requestId, source, cb, ...)
    if Callbacks.ServerCallbacks[name] then
        Callbacks.ServerCallbacks[name](source, cb, ...)
    end
end

RegisterServerEvent('peurost_poker:triggerServerCallback')
AddEventHandler('peurost_poker:triggerServerCallback', function(name, requestId, ...)
	local playerId = source
	Callbacks.TriggerServerCallback(name, requestId, playerId, function(...)
		TriggerClientEvent('peurost_poker:serverCallback', playerId, requestId, ...)
	end, ...)
end)

-- [[ LOAD TABLES FROM DATABASE ]]
Citizen.CreateThread(function()
    local results = Database.fetchSync('SELECT * FROM pokertables', {})

    if results == nil then
        print("^7PEU_POKER || ^1CRITICAL ERROR^7 || Table 'pokertables' does not exist. Creating it :)")
        Database.executeSync('CREATE TABLE IF NOT EXISTS pokertables (`id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, `owner` VARCHAR(100) NOT NULL, `name` VARCHAR(45) NULL DEFAULT "Poker Table", `position` TEXT NOT NULL, `smallBlind` INT NOT NULL DEFAULT 100, `maxPlayers` TINYINT NOT NULL DEFAULT 10, PRIMARY KEY (`id`))', {})
    end

    results = Database.fetchSync('SELECT * FROM pokertables', {})
    if #results == 0 then
        print("^7PEU_POKER || ^1WARNING^7 || Table 'pokertables' is empty...")
        return
    end
    
    for k, v in ipairs(results) do 
        local position = json.decode(v.position)
        local _table = {
            id = k,
            uid = v.id,
            settings = {
                name = v.name,
                smallBlind = v.smallBlind,
                maxPlayers = v.maxPlayers,
                owner = v.owner,
                pos = vector3(position.x, position.y, position.z)
            },
            game = {
                state = 0,
                pot = 0,
                smallBlind = 1,
                bigBlind = 1,
                activePlayer = 0,
                aPIndex = 0,
                call =  0,
                cards = {},
                message = "",
                lastDeal = 1,
            },
            players = {},
        }
        tables[#tables + 1] = _table
    end
    TriggerClientEvent("peu_poker:updateAllTables", tonumber("-1"), getAllTables())
    print("^7PEU_POKER || Loaded tables from the database...")
end)

-- [[ PLAYER EVENTS ]]
AddEventHandler('playerDropped', function(reason)
    if players[source] ~= nil then
        leaveTable(source)
    end
    _print("^7PEU_POKER || ^3DEBUG^7 || PLAYER LEFT: "..source)
end)

-- [[ EVENTS ]]

RegisterNetEvent("peu_poker:loadTables")
AddEventHandler("peu_poker:loadTables", function()
    TriggerClientEvent("peu_poker:updateAllTables", source, getAllTables())
end)

--[[ FUNCTIONS ]] 

function joinTable(src, tableID)
    if tables[tableID] == nill then return end
    local player = {
        name = GetPlayerName(src),
        src = src,
        table = tableID,
        place = 0
    }
    players[src] = player
    local tempPlayer = { id = src, name = GetPlayerName(src), chips = GetPlayerMoney(src), bet = 0, cards = {"0_0", "0_0"}, state = tonumber("-1")}
    table.insert(tables[tableID].players, tempPlayer)
    players[src].place = #tables[tableID].players
    updatePlayers(tables[tableID])
    return true, players[src].place
end 

function leaveTable(src)
    local pTable = tables[players[src].table]
    if pTable.game.activePlayer == src then nextPlayer(pTable) end
    table.remove(pTable.players, players[src].place)
    for k, v in ipairs(pTable.players) do
        players[v.id].place = k
    end
    players[src] = nil
    if #pTable.players == 1 and pTable.game.state == 1 then endGame(pTable) end
    updatePlayers(pTable)
    return true
end

function getTableData(src, tableID)
    tables[tableID].id = tableID
    local pTable = json.decode(json.encode(tables[tableID]))
    for k, v in ipairs(pTable.players) do
        if (v.id ~= src or (v.state ~= 1 and v.id ~= src)) and pTable.game.state ~= 2 then
            pTable.players[k].cards = {"0_0", "0_0"}
        end
    end
    local player = { id = src, name = GetPlayerName(src), chips = GetPlayerMoney(src), isOwner = (pTable.settings.owner == GetPlayerLicenseIdentifier(src)) }
    return { table = pTable, player = player}
end

function generateDeck(pTable)
    local deck = {}
    local tempCards = json.decode(json.encode(cards))
    for i = 1, #tempCards, 1 do
        local rnd = GenerateRandomValue(1, #tempCards)
        deck[i] = tempCards[rnd]
        table.remove(tempCards, rnd)
    end
    decks[pTable.id] = deck;
end

function generateHands(pTable)
    for k, v in ipairs(pTable.players) do
        pTable.players[k].cards = {}
        for i = 1, 2, 1 do
            local rnd = GenerateRandomValue(1, #decks[pTable.id])
            table.insert(pTable.players[k].cards, decks[pTable.id][rnd])
            table.remove(decks[pTable.id], rnd)
        end
    end
end

function getRandomCard(pTable)
    local rnd = GenerateRandomValue(1, #decks[pTable.id])
    local card = decks[pTable.id][rnd]
    table.remove(decks[pTable.id], rnd)
    return card
end

function startGame(pTable)
    pTable.game.pot = 0
    pTable.game.cards = {}
    local blind = 0
    if pTable.game.smallBlind + 1 > #pTable.players then
        blind = 1
    else
        blind = pTable.game.smallBlind + 1
    end
    pTable.game.smallBlind = blind
    if blind + 1 > #pTable.players then
        blind = 1
    else
        blind = pTable.game.smallBlind + 1
    end
    pTable.game.bigBlind = blind
    pTable.game.call = 0
    pTable.game.aPIndex = pTable.game.bigBlind + 1
    if pTable.game.bigBlind + 1 > #pTable.players then
        pTable.game.aPIndex = 1
    else
        pTable.game.aPIndex = pTable.game.bigBlind + 1
    end
    pTable.game.activePlayer = pTable.players[pTable.game.aPIndex].id
    pTable.game.message = string.format(Locale['someones_turn'], pTable.players[pTable.game.aPIndex].name)
    generateDeck(pTable)
    generateHands(pTable)
    pTable.game.state = 1
    for k, v in ipairs(pTable.players) do
        pTable.players[k].bet = 0
        pTable.players[k].state = 2
    end
    RemoveMoneyFromPlayer(pTable.players[pTable.game.smallBlind].id, pTable.settings.smallBlind)
    RemoveMoneyFromPlayer(pTable.players[pTable.game.bigBlind].id, pTable.settings.smallBlind * 2)
    pTable.game.pot = pTable.settings.smallBlind + pTable.settings.smallBlind * 2
    pTable.players[pTable.game.smallBlind].bet = pTable.settings.smallBlind
    pTable.players[pTable.game.bigBlind].bet = pTable.settings.smallBlind * 2
    pTable.game.call = pTable.settings.smallBlind * 2
    pTable.game.lastDeal = 1
end

function updatePlayers(pTable)
    for k, v in ipairs(pTable.players) do
        TriggerClientEvent("peu_poker:updateTablePlayers", v.id, getTableData(v.id, pTable.id))
    end
end

function allBetsAreMax(pTable)
    for k, v in ipairs(pTable.players) do
        if v.bet ~= pTable.game.call and v.chips ~= 0 and v.state == 2 then return false end
    end
    return true
end

function endGame(_pTable)
    local pTable = _pTable
    Citizen.CreateThread(function()
        local winners = {
            {
                player = nil,
                deck = {
                    handType = 0,
                    handRank = 99999999,
                    value = 0,
                    handName = "null"
                }
            }
        }
        for k, v in ipairs(pTable.players) do
            if v.state == 2 then
                local cards = json.decode(json.encode(pTable.game.cards))
                table.insert(cards, v.cards[1])
                table.insert(cards, v.cards[2])
                local inWait = true
                TriggerEvent("peu_poker:evaluate", cards, function(result)
                    if result.value == winners[1].deck.value and result.handType == winners[1].deck.handType then
                        local tempWinner = {
                            player = v,
                            deck = result
                        }
                        table.insert(winners, tempWinner)
                    elseif result.handType > winners[1].deck.handType or (result.value > winners[1].deck.value and result.handType == winners[1].deck.handType) then
                        winners = {}
                        local tempWinner = {
                            player = v,
                            deck = result
                        }
                        table.insert(winners, tempWinner)
                    end
                    inWait = false
                end)
                while inWait do Citizen.Wait(100) end
            end
            pTable.players[k].state = tonumber("-1")
        end

        if #winners == 1 then
            local winner = winners[1]
            if winner.player.bet < pTable.game.call then
                for k, v in ipairs(pTable.players) do
                    if v.bet > winner.player.bet then
                        local difference = v.bet - winner.player.bet
                        pTable.game.pot = pTable.game.pot - difference
                        GiveMoneyToPlayer(v.id, difference)
                    end
                end
            end
            pTable.game.message = string.format(Locale['someone_won_something_with_something'], winner.player.name, pTable.game.pot, winner.deck.handName)
            GiveMoneyToPlayer(winner.player.id, pTable.game.pot)
            SendNotification(winner.player.id, string.format(Locale["you_won_something"], pTable.game.pot))
        else
            local smallerPot = false
            for k, winner in ipairs(winners) do
                local winnerPot = 0
                if winner.player.bet < pTable.game.call then
                    for k, v in ipairs(pTable.players) do
                        if v.bet < winner.player.bet then
                            winnerPot = winnerPot + v.bet
                        else
                            winnerPot = winnerPot + winner.player.bet
                        end
                    end
                else
                    winnerPot = pTable.game.pot
                end
                if winnerPot < pTable.game.pot then smallerPot = true end
                winners[k].pot = winnerPot
            end
            if smallerPot then
                local bigWinners = {}
                sortWinners(winners)
                for k, v in ipairs(winners) do
                    if v.pot < pTable.game.pot then
                        local winAmount = v.pot / #winners
                        pTable.game.message = pTable.game.message..""..string.format(Locale['someone_won_something_with_something'], v.player.name, winAmount, v.deck.handName).."\n"
                        GiveMoneyToPlayer(v.player.id, winAmount)
                        SendNotification(v.player.id, string.format(Locale["you_won_something"], winAmount))
                        pTable.game.pot = pTable.game.pot - winAmount
                    else
                        table.insert(bigWinners, v)
                    end
                end
                local winAmount = pTable.game.pot / #bigWinners
                for k, v in ipairs(bigWinners) do
                    pTable.game.message = pTable.game.message..""..string.format(Locale['someone_won_something_with_something'], v.player.name, winAmount, v.deck.handName).."\n"
                    GiveMoneyToPlayer(v.player.id, winAmount)
                    SendNotification(v.player.id, string.format(Locale["you_won_something"], winAmount))
                end
            else
                pTable.game.message = ""
                local winAmount = pTable.game.pot / #winners
                for k, v in ipairs(winners) do
                    pTable.game.message = pTable.game.message..""..string.format(Locale['someone_won_something_with_something'], v.player.name, winAmount, v.deck.handName).."\n"
                    GiveMoneyToPlayer(v.player.id, winAmount)
                    SendNotification(v.player.id, string.format(Locale["you_won_something"], winAmount))
                end
            end
        end
        endGameLogs(pTable, winners, pTable.game.pot)
        
        --[[pTable.game.message = string.format(Locale['someone_won_something_with_something'], winner.player.name, pTable.game.pot, winner.deck.handName)
        endGameLogs(pTable, winner, pTable.game.pot)
        GiveMoneyToPlayer(winner.player.id, pTable.game.pot)
        SendNotification(winner.player.id, string.format(Locale["you_won_something"], pTable.game.pot))]]
        pTable.game.state = 2
        pTable.game.activePlayer = 0
        pTable.game.aPIndex = 0
        updatePlayers(pTable)
        Citizen.SetTimeout(Config.ShowHandTime, function()
            pTable.game.state = 0
            pTable.game.pot = 0
            pTable.game.cards = {}
            pTable.game.call = 0
            for k, v in ipairs(pTable.players) do
                pTable.players[k].cards = {"0_0", "0_0"}
                if tonumber(GetPlayerMoney(v.id)) < tonumber(pTable.settings.smallBlind) then
                    TriggerClientEvent("peu_poker:forceLeave", v.id)
                end
            end
            updatePlayers(pTable)
        end)
    end)
end

function dealTable(pTable)
    if #pTable.game.cards < 3 then
        for i = 1, 3, 1 do
            table.insert(pTable.game.cards, getRandomCard(pTable))
        end
    elseif #pTable.game.cards == 3 then
        table.insert(pTable.game.cards, getRandomCard(pTable))
    elseif #pTable.game.cards == 4 then
        table.insert(pTable.game.cards, getRandomCard(pTable))
    elseif #pTable.game.cards >= 5 then
        endGame(pTable)
    end
end

function createTable(owner, position)
    _print("^7PEU_POKER || ^3DEBUG^7 || Creating a new table. Owner: "..owner.." Position: "..json.encode(position))
    Database.insert('INSERT INTO pokertables (owner, position) VALUES (@owner, @position)', {
        ['@owner'] = owner,
        ['@position'] = json.encode(position),
    }, function(insertUID)
        local _table = {
            id = #tables + 1,
            uid = insertUID,
            settings = {
                name = "Poker Table",
                smallBlind = 100,
                maxPlayers = 10,
                owner = owner,
                pos = position
            },
            game = {
                state = 0,
                pot = 0,
                smallBlind = 1,
                bigBlind = 1,
                activePlayer = 0,
                aPIndex = 0,
                call =  0,
                cards = {},
                message = "",
                lastDeal = 1
            },
            players = {},
            tempLast = false
        }
        table.insert(tables, _table)
        local tempTable = _table.settings
        tempTable.id = _table.id
        getAllTables()
        TriggerClientEvent("peu_poker:createdTable", tonumber("-1"), tempTable)
    end)
end

function deleteTable(tableID)
    _print("^7PEU_POKER || ^3DEBUG^7 || Deleting table. Table ID: "..tableID)
    for k, v in ipairs(tables) do
        if v.id == tableID then
            for k, v in ipairs(v.players) do
                leaveTable(v.id)
            end
            Database.execute('DELETE FROM pokertables WHERE id = @tableID', {
                ['@tableID'] = v.uid,
            })
            table.remove(tables, k)
            TriggerClientEvent("peu_poker:deletedTable", tonumber("-1"), k)
            TriggerClientEvent("peu_poker:updateAllTables", tonumber("-1"), getAllTables())
            return
        end
    end
end

function updateTable(tableID, name, smallBlind, maxPlayers)
    _print("^7PEU_POKER || ^3DEBUG^7 || Updating table. TableID: "..tableID.." Name: "..name.." SmallBlind: "..smallBlind.." MaxPlayers: "..maxPlayers)
    for k, v in ipairs(tables) do
        if v.id == tableID then
            Database.execute('UPDATE pokertables SET name = @name, smallBlind = @smallBlind, maxPlayers = @maxPlayers WHERE id = @tableID', {
                ['@tableID'] = v.uid,
                ['@name'] = name,
                ['@smallBlind'] = smallBlind,
                ['@maxPlayers'] = maxPlayers,
            })
            tables[k].settings.name = name
            tables[k].settings.smallBlind = smallBlind
            tables[k].settings.maxPlayers = maxPlayers
            TriggerClientEvent("peu_poker:updatedTable", tonumber("-1"), k, tables[k].settings)
            break
        end
    end
end

function getAllTables()
    local tempTables = {}
    for k, v in ipairs(tables) do
        local tempTable = v.settings
        tempTable.id = k
        table.insert(tempTables, tempTable)
    end
    return tempTables
end

function nextPlayer(pTable)
    local activePlayers, minId, maxId = getActivePlayers(pTable)
    if #activePlayers == 1 then 
        endGame(pTable) 
        return
    end
    if pTable.game.aPIndex + 1 > maxId and pTable.game.aPIndex >= maxId then
        pTable.game.aPIndex = minId
    else
        for i = 1, #activePlayers do
            if players[activePlayers[i].id].place > pTable.game.aPIndex then
                pTable.game.aPIndex = players[activePlayers[i].id].place
                break
            end
        end
    end
    if pTable.game.lastDeal >= #activePlayers then
        dealTable(pTable)
        pTable.game.lastDeal = 0
    else
        pTable.game.lastDeal = pTable.game.lastDeal + 1
    end
    pTable.game.activePlayer = pTable.players[pTable.game.aPIndex].id
    pTable.game.message = string.format(Locale['someones_turn'], pTable.players[pTable.game.aPIndex].name)
end

function getActivePlayers(pTable)
    local activePlayers = {}
    local maxId = 0
    local minId = 11
    for i = 1, #pTable.players do
        if pTable.players[i].state == 2 then
            activePlayers[#activePlayers + 1] = pTable.players[i]
            if i > maxId then maxId = i end
            if i < minId then minId = i end
        end
    end
    return activePlayers, minId, maxId
end

function sendAction(src, action)
    Citizen.CreateThread(function()
        local player = players[src]
        local pTable = tables[player.table]
        if pTable.game.activePlayer ~= src and action.type ~= "ready" then return end
        if action.type == "ready" then
            if tonumber(GetPlayerMoney(src)) < tonumber(pTable.settings.smallBlind) then
                TriggerClientEvent("peu_poker:forceLeave", src)
                return
            end
            pTable.players[player.place].state = action.data
            local readyPlayers = 0
            for k, v in ipairs(pTable.players) do
                if v.state == 0 then readyPlayers = readyPlayers + 1 end
            end
            if readyPlayers == #pTable.players and #pTable.players > 1 then
                startGame(pTable)
            end 
        elseif action.type == "check" then
            nextPlayer(pTable)
        elseif action.type == "call" then
            local callAmount = pTable.game.call - pTable.players[players[src].place].bet
            if GetPlayerMoney(src) <= callAmount then
                pTable.game.pot = pTable.game.pot + GetPlayerMoney(src)
                pTable.players[players[src].place].bet = pTable.players[players[src].place].bet + GetPlayerMoney(src)
                RemoveMoneyFromPlayer(src, GetPlayerMoney(src))
            else
                RemoveMoneyFromPlayer(src, callAmount)
                pTable.game.pot = pTable.game.pot + (callAmount)
                pTable.players[players[src].place].bet = pTable.game.call
            end
            nextPlayer(pTable)
        elseif action.type == "raise" then
            if tonumber(action.data) < 1 then return end
            local raiseAmount = pTable.game.call - pTable.players[players[src].place].bet + tonumber(action.data)
            if GetPlayerMoney(src) <= raiseAmount then
                pTable.game.pot = pTable.game.pot + GetPlayerMoney(src)
                pTable.game.call = pTable.game.call + GetPlayerMoney(src)
                pTable.players[players[src].place].bet = pTable.players[players[src].place].bet + GetPlayerMoney(src)
                RemoveMoneyFromPlayer(src, GetPlayerMoney(src))
            else
                RemoveMoneyFromPlayer(src, raiseAmount)
                pTable.game.pot = pTable.game.pot + raiseAmount
                pTable.game.call = pTable.game.call + raiseAmount
                pTable.players[players[src].place].bet = pTable.players[players[src].place].bet + raiseAmount
            end
            pTable.game.lastDeal = 1
            nextPlayer(pTable)
        elseif action.type == "fold" then
            pTable.players[player.place].state = 1
            nextPlayer(pTable)
        end
        updatePlayers(pTable)
    end)
end

function endGameLogs(pTable, winners, wonAmount)
    if Config.DiscordWebhook == "" then return end
    local description = "Players:\n"
    for k,v in ipairs(pTable.players) do
        description = description..v.name.." - "..v.bet.."\n"
    end
    local fields = {
        {
            ["name"] = "Total Pot",
            ["value"] = pTable.game.pot
        },
    }
    for k, v in ipairs(winners) do
        table.insert(fields, {
            ["name"] = "Winner",
            ["value"] = v.player.name.." - "..v.deck.handName
        })
    end
    local embeds = {{
        ['title'] = pTable.settings.name,
        ['type'] = 'rich',
        ['description'] = description,
        ['color'] = tonumber("16742912"),
        ["fields"] = fields,
        ["author"] = {
            ["name"] = "Poker Logs"
        },
        ['footer'] = {
            ['text'] = "peurost_poker",
        }, 
    }}
    PerformHttpRequest(Config.DiscordWebhook, function(err, text, headers) end, 'POST', json.encode({ username = "Poker Logs", embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

--[[ CALLBACKS ]] 
if Callbacks.RegisterServerCallback ~= nil then
    Callbacks.RegisterServerCallback("peu_poker:joinTable", function(source, cb, tableID) 
        Citizen.CreateThread(function()
            local state, seat = joinTable(source, tableID)
            if state then
                cb(getTableData(source, tableID), seat)
            else
                cb(false)
            end
        end)
    end)

    RegisterNetEvent("peu_poker:action")
    AddEventHandler("peu_poker:action", function(action)
        local _source = source
        Citizen.CreateThread(function()
            sendAction(_source, action)
        end)
    end)

    Callbacks.RegisterServerCallback("peu_poker:leaveTable", function(source, cb, tableID) 
        Citizen.CreateThread(function()
            if leaveTable(source) then
                cb(getTableData(source, tableID))
            else
                cb(false)
            end
        end)
    end)

    Callbacks.RegisterServerCallback("peu_poker:getTableData", function(source, cb, tableID)
        Citizen.CreateThread(function()
            cb(getTableData(source, tableID))
        end)
    end)

    Callbacks.RegisterServerCallback("peu_poker:getTableById", function(source, cb, id)
        cb(tables[id])
    end)

    Callbacks.RegisterServerCallback("peu_poker:getAllTables", function(souce, cb)
        Citizen.CreateThread(function()
            cb(getAllTables())
        end)
    end)

    RegisterNetEvent("peu_poker:deleteTable")
    AddEventHandler("peu_poker:deleteTable", function(tableID)
        Citizen.CreateThread(function()
            deleteTable(tableID)
        end)
    end)

    RegisterNetEvent("peu_poker:updateTable")
    AddEventHandler("peu_poker:updateTable", function(tableID, data)
        Citizen.CreateThread(function()
            updateTable(tableID, data.name, data.smallBlind, data.maxPlayers)
        end)
    end)

    Callbacks.RegisterServerCallback("peu_poker:createTable", function(source, cb, pos)
        Citizen.CreateThread(function()
            createTable(GetPlayerLicenseIdentifier(source), pos)
            cb()
        end)
    end)
end
-- [[ COMMANDS ]]

RegisterCommand(Config.JoinCommand, function(source, args, rawCommand)
    if source > 0 then
        TriggerClientEvent("peu_poker:joiningTable", source)
    else
        print("^7PEU_POKER || ^1WARNING^7 || This command can not be used from server console...")
    end
end, false)

-- [[ DEBUG ]]

function _print(text)
    if Config.Debug then
        print(text)
    end
end

if Config.Debug then
    RegisterCommand("djointable", function(source, args, rawCommand)
        if source > 0 then
            if IsPlayerAdmin(source) then
                if args[1] == nil then 
                    SendNotification(source, Locale["wrong_args"])
                    return 
                end
                local tableID = tonumber(args[1])
                if tables[tableID] == nil then 
                    SendNotification(source, Locale["table_withid_doesnt_exist"])
                    return
                end
                TriggerClientEvent("peu_poker:debug:openTable", source, getTableData(source, tableID))
            end
        else
            print("^7PEU_POKER || ^1WARNING^7 || This command can not be used from server console...")
        end
    end, false)

    RegisterCommand("dcreatetable", function(source, args, rawCommand)
        if source > 0 then
            if IsPlayerAdmin(source) then
                TriggerClientEvent("peu_poker:createTable", source)
            end
        else
            print("^7PEU_POKER || ^1WARNING^7 || This command can not be used from server console...")
        end
    end, false)

    RegisterCommand("dchairoffs", function(source, args, rawCommand)
        if source > 0 then
            if IsPlayerAdmin(source) then
                TriggerClientEvent("peu_poker:debug:getChairOffset", source)
            end
        else
            print("^7PEU_POKER || ^1WARNING^7 || This command can not be used from server console...")
        end
    end, false)

    RegisterCommand("ddeletetable", function(source, args, rawCommand)
        if source > 0 then
            if IsPlayerAdmin(source) then
                if args[1] == nil then 
                    SendNotification(source, Locale["wrong_args"])
                    return 
                end
                local tableID = tonumber(args[1])
                local found = false
                for k,v in ipairs(tables) do
                    if v.id == tableID then found = true; break end
                end
                if not found then 
                    SendNotification(source, Locale["table_withid_doesnt_exist"])
                    return
                end
                deleteTable(tableID)
            end
        else
            print("^7PEU_POKER || ^1WARNING^7 || This command can not be used from server console...")
        end
    end, false)

    _print("^7PEU_POKER || ^1WARNING^7 || DEBUG MODE IS ON!")
end

function sortWinners(a)
    repeat
        local swapped = false
        for i = 2, #a do
        if a[i - 1].pot > a[i].pot then
            a[i], a[i - 1] = a[i - 1], a[i]
            swapped = true
        end
        end
    until swapped == false
end

function toint(n)
    local s = tostring(n)
    local i, j = s:find('%.')
    if i then
        return tonumber(s:sub(1, i-1))
    else
        return n
    end
end