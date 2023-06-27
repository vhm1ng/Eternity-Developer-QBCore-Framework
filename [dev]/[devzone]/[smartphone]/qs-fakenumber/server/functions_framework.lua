local L0_1, L1_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = QS
    L1_2 = L1_2.GetPlayerFromId
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = L1_2.PlayerData
      L2_2 = L2_2.identifier
      L1_2.identifier = L2_2
      L2_2 = L1_2.PlayerData
      L2_2 = L2_2.source
      L1_2.source = L2_2
    end
    return L1_2
  else
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "QBCore" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Functions
      L1_2 = L1_2.GetPlayer
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L2_2 = L1_2.PlayerData
        L2_2 = L2_2.citizenid
        L1_2.citizenid = L2_2
        L2_2 = L1_2.PlayerData
        L2_2 = L2_2.citizenid
        L1_2.identifier = L2_2
        L2_2 = L1_2.PlayerData
        L2_2 = L2_2.source
        L1_2.source = L2_2
      end
      return L1_2
    end
  end
end
GetPlayerFromIdFramework = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = false
    L2_2 = ESX
    L2_2 = L2_2.GetPlayerFromId
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = pairs
      L4_2 = Config
      L4_2 = L4_2.PhonesProps
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L2_2.getInventoryItem
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L10_2 = L9_2.count
          if L10_2 > 0 then
            L1_2 = true
            break
          end
        end
      end
    end
    return L1_2
  else
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "QBCore" == L1_2 then
      L1_2 = false
      L2_2 = QBCore
      L2_2 = L2_2.Functions
      L2_2 = L2_2.GetPlayer
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L3_2 = pairs
        L4_2 = Config
        L4_2 = L4_2.PhonesProps
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L9_2 = L2_2.Functions
          L9_2 = L9_2.GetItemByName
          L10_2 = L7_2
          L9_2 = L9_2(L10_2)
          if L9_2 then
            L10_2 = L9_2.amount
            if L10_2 > 0 then
              L1_2 = true
              break
            end
          end
        end
      end
      return L1_2
    end
  end
end
CheckPhone = L0_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.GetPlayerFromId
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.job
    return L1_2
  else
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "QBCore" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Functions
      L1_2 = L1_2.GetPlayer
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      L1_2 = L1_2.PlayerData
      L1_2 = L1_2.job
      return L1_2
    end
  end
end
GetJob = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Framework
  if "ESX" == L0_2 then
    L0_2 = ESX
    L0_2 = L0_2.GetPlayers
    return L0_2()
  else
    L0_2 = Config
    L0_2 = L0_2.Framework
    if "QBCore" == L0_2 then
      L0_2 = QBCore
      L0_2 = L0_2.Functions
      L0_2 = L0_2.GetPlayers
      return L0_2()
    end
  end
end
GetPlayers = L0_1
