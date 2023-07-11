local QBCore = exports['et-core']:GetCoreObject()

function GiveMoneyToPlayer(playerid, amount)
    local qbPlayer = QBCore.Functions.GetPlayer(playerid)
    if qbPlayer == nil then return end
    amount=amount-amount*2/100
    qbPlayer.Functions.AddMoney("cash", amount)
end

function RemoveMoneyFromPlayer(playerid, amount)
    local qbPlayer = QBCore.Functions.GetPlayer(playerid)
    if qbPlayer == nil then return end
    qbPlayer.Functions.RemoveMoney("cash", amount)
end

function GetPlayerMoney(playerid)
    local qbPlayer = QBCore.Functions.GetPlayer(playerid)
    if qbPlayer == nil then return 0 end
    return qbPlayer.PlayerData.money.cash
end

function GetPlayerName(playerid)
    local qbPlayer = QBCore.Functions.GetPlayer(playerid)
    if qbPlayer == nil then return "" end
    return qbPlayer.PlayerData.charinfo.firstname
end

function GetPlayerLicenseIdentifier(playerid)
    local identifier
	for k,v in ipairs(GetPlayerIdentifiers(playerid)) do
		if string.match(v, 'license:') then
			identifier = string.sub(v, 9)
			break
		end
	end
    return identifier
end

function IsPlayerAdmin(playerid)
    if QBCore.Functions.GetPermission(playerid)[Config.AdminGroup] then
        return true
    end
    return false
end

function SendNotification(src, text)
    TriggerClientEvent("peurost_poker:showNotification", src, text)
end

math.randomseed(os.time())
function GenerateRandomValue(min, max)
    math.random(); math.random(); math.random(); --Skip a few
    return math.random(min, max)
end