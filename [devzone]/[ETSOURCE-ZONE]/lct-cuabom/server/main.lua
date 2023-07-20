local QBCore = exports['et-core']:GetCoreObject()

local Bombing = {} 

-- ĐỊA ĐIỂM DÒ 
local Random_ViTri = {
    -- vector3(-452.49, -1710.24, 18.83),
    vector3(-458.52, -1710.48, 18.76),
    vector3(-455.78, -1702.51, 18.84),
    vector3(-462.94, -1695.3, 19.1),
    vector3(-535.49, -1719.11, 19.23),
    vector3(-548.51, -1716.14, 18.88),
    vector3(-563.25, -1687.1, 19.25),
    vector3(-554.75, -1690.32, 19.3),
    vector3(-525.89, -1702.03, 19.2),
    vector3(-521.98, -1679.78, 19.27),
    vector3(-514.49, -1686.12, 19.28),
    vector3(-496.96, -1702.75, 19.29),
    vector3(-506.01, -1715.75, 19.32),
    vector3(-484.4, -1741.17, 18.61),
    vector3(-466.2, -1720.16, 18.65),
    vector3(-471.85, -1710.22, 18.87),
    vector3(-464.27, -1706.07, 18.8),
    vector3(-464.71, -1693.02, 18.91),
    vector3(-468.27, -1675.88, 19.06),
    vector3(-450.14, -1691.24, 18.96),
    vector3(-430.8, -1721.78, 19.01),
    vector3(-423.62, -1718.07, 19.44),
    vector3(-422.39, -1687.85, 19.03),
    vector3(-444.78, -1711.6, 18.74),
}

-- VẬT PHẨM DÒ ĐƯỢC DƯỚI MẶT ĐẤT
local Random_Item = {
    "lockpick",


    
}


function GenerateNewTarget()
    local ViTri = Random_ViTri[math.random(1, #Random_ViTri)]
    local Item = Random_Item[math.random(1, #Random_Item)]
    local Data = {
        item = Item 
    } 
    Prospecting.AddTarget(ViTri.x, ViTri.y, ViTri.z, Data)
end

function CheckPlayer(citizenid)
    for k, v in pairs(Bombing) do 
        if v['status'] then 
            if v['partner'] == citizenid then 
                return true 
            end 
        end
    end 
    return false 
end 

CreateThread(function()
    -- Độ khó
    Prospecting.SetDifficulty(1.0)
    GenerateNewTarget()
    -- 
    Prospecting.SetHandler(function(player, data, x, y, z)
        QBCore.Functions.Notify(player, "Bạn đã tìm thấy vật phẩm "..QBCore.Shared.Items[data.item]["label"])
        TriggerClientEvent('lct-prospecting:client:UpdateDiggedLocation', player, data, vector3(x, y, z))
        GenerateNewTarget()
    end)

    -- The player started prospecting
    Prospecting.OnStart(function(player)
        QBCore.Functions.Notify(player, "Đã bắt đầu dò", "success")
    end)

    Prospecting.OnStop(function(player)
        QBCore.Functions.Notify(player, "Đã ngừng dò", "error")
        TriggerClientEvent("lct-prospecting:client:StopProspecting", player)
    end)
end)


RegisterNetEvent("lct-prospecting:server:GivePlayerThePrize", function(item)
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem(item, 1) 
end)

RegisterNetEvent("lct-prospecting:server:GiveReward", function(item)
    local Player = QBCore.Functions.GetPlayer(source)
    for k, v in pairs(Config.BombProduct) do 
        Player.Functions.AddItem(k, math.random(v.from, v.to))
    end 
end)

RegisterNetEvent("lct-prospecting:server:DeactivateProspecting", function() 
    if Prospecting.IsProspecting(source) then
        Prospecting.StopProspecting(source)
        TriggerClientEvent("lct-prospecting:client:StopProspecting", source)
    end 
end)

RegisterNetEvent("lct-prospecting:server:ActivateProspecting", function() 
    if not Prospecting.IsProspecting(source) then
        Prospecting.StartProspecting(source)
    end 
end)

QBCore.Functions.CreateUseableItem("quabom", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) ~= nil then 
        TriggerClientEvent("lct-prospecting:client:UsingOldBomb", src)
    end     
end)

QBCore.Functions.CreateUseableItem("maydobom", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName(item.name) ~= nil then 
        TriggerClientEvent("lct-prospecting:client:UsingProspector", src)
    end     
end)

RegisterNetEvent("lct-prospecting:server:OldBombRequest", function(who) 
    local Player = QBCore.Functions.GetPlayer(who)
    local Partner = QBCore.Functions.GetPlayer(source)
    
    if CheckPlayer(Partner.PlayerData.citizenid) then 
        return 
    end 

    if Bombing[Player.PlayerData.citizenid] then 
        if Bombing[Player.PlayerData.citizenid]['status'] then 
            return  
        end 
    end 


    Bombing[Player.PlayerData.citizenid] = {
        ["success"] = 0, 
        ["fail"] = 0,
        ["partner"] = Partner.PlayerData.citizenid, 
        ['status'] = true
    }
    if Player.Functions.RemoveItem('quabom', 1) then 
        TriggerClientEvent("lct-prospecting:client:OldBombRequested", source, Player.PlayerData.citizenid)
        TriggerClientEvent("lct-prospecting:client:OldBombRequested", who)
    end 
end)

RegisterNetEvent('lct-prospecting:server:UpdateBombSawingProcess', function(BombOwner, Status, Score, Coords)
    local Owner =  QBCore.Functions.GetPlayerByCitizenId(BombOwner)
    local Partner = QBCore.Functions.GetPlayerByCitizenId(Bombing[BombOwner]["partner"])
        if Status == "fail" then 
            if Bombing[BombOwner]["fail"] + Score >= Config.BombSawingFail then --thất bại bao nhiêu thì nổ
                Bombing[BombOwner]["fail"] = 0
                Bombing[BombOwner]["status"] = false
                TriggerClientEvent("lct-prospecting:client:DonatingTheBomb", source, Coords)
                TriggerClientEvent("lct-prospecting:client:SawingBombFinish", Partner.PlayerData.source, false)
                TriggerClientEvent("lct-prospecting:client:SawingBombFinish", Owner.PlayerData.source, false)
            else 
                Bombing[BombOwner]["fail"] = Bombing[BombOwner]["fail"] + Score
            end 
        else 
            if Bombing[BombOwner]["success"] + Score >= Config.BombSawingSuccess then --thành công bao nhiêu thì thắng
                Bombing[BombOwner]["success"] = 0
                Bombing[BombOwner]["status"] = false
                TriggerClientEvent("lct-prospecting:client:SawingBombFinish", Partner.PlayerData.source, true)
                TriggerClientEvent("lct-prospecting:client:SawingBombFinish", Owner.PlayerData.source, true)
            else 
                Bombing[BombOwner]["success"] = Bombing[BombOwner]["success"] + Score
            end
        end 


end)