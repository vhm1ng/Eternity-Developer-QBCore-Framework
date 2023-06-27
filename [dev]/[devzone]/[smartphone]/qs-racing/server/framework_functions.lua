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
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.GetPlayerFromIdentifier
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    return L1_2
  else
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "QBCore" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Functions
      L1_2 = L1_2.GetPlayerByCitizenId
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L2_2 = L1_2.PlayerData
        L2_2 = L2_2.source
        L1_2.source = L2_2
      end
      return L1_2
    end
  end
end
GetPlayerFromIdentifierFramework = L0_1
