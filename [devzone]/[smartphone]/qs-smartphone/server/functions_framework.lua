local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = {}
QSPhone = L0_1
L0_1 = QSPhone
L1_1 = {}
L0_1.ServerCallbacks = L1_1
L0_1 = RegisterNetEvent
L1_1 = "qs-smartphone:CallBacks"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-smartphone:CallBacks"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2
  L2_2 = QSPhone
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = QSPhone
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = QSPhone
  L2_2 = L2_2.ServerCallbacks
  L2_2[A0_2] = A1_2
end
L0_1.RegisterServerCallback = L1_1
L0_1 = QSPhone
function L1_1(A0_2, A1_2, A2_2, A3_2, ...)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = QSPhone
  L4_2 = L4_2.ServerCallbacks
  L4_2 = L4_2[A0_2]
  if L4_2 then
    L4_2 = QSPhone
    L4_2 = L4_2.ServerCallbacks
    L4_2 = L4_2[A0_2]
    L5_2 = A2_2
    L6_2 = A3_2
    L7_2 = ...
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = print
    L5_2 = "[qs-smartphone] [^3WARNING^7] Server callback \"%s\" does not exist. Make sure that the server sided file really is loading, an error in that file might cause it to not load."
    L6_2 = L5_2
    L5_2 = L5_2.format
    L7_2 = A0_2
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.TriggerServerCallback = L1_1
L0_1 = RegisterServerEvent
L1_1 = "qs-smartphone:triggerServerCallback"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-smartphone:triggerServerCallback"
function L2_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = QSPhone
  L3_2 = L3_2.TriggerServerCallback
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = L2_2
  function L7_2(...)
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = TriggerClientEvent
    L1_3 = "qs-smartphone:serverCallback"
    L2_3 = L2_2
    L3_3 = A1_2
    L4_3 = ...
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L8_2 = ...
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config.Framework
  if "ESX" == L1_2 then
    L1_2 = QS.GetPlayerFromId
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
      L3_2 = Config
      L3_2 = L3_2.RequiredPhone
      if L3_2 then
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
            if L10_2 then
              L10_2 = L9_2.count
              if L10_2 > 0 then
                L1_2 = true
                break
              end
            end
          end
        end
      else
        L1_2 = true
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
        L3_2 = Config
        L3_2 = L3_2.RequiredPhone
        if L3_2 then
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
              if L10_2 then
                L10_2 = L9_2.amount
                if L10_2 > 0 then
                  L1_2 = true
                  break
                end
              end
            end
          end
        else
          L1_2 = true
        end
      end
      return L1_2
    end
  end
end
CheckPhone = L0_1
L0_1 = {}
L1_1 = "diables_x_quasar_phone_black.ydr"
L2_1 = "diables_x_quasar_phone_blue.ydr"
L3_1 = "diables_x_quasar_phone_gold.ydr"
L4_1 = "diables_x_quasar_phone_green.ydr"
L5_1 = "diables_x_quasar_phone_greenlight.ydr"
L6_1 = "diables_x_quasar_phone_grey.ydr"
L7_1 = "diables_x_quasar_phone_pink.ydr"
L8_1 = "diables_x_quasar_phone_purple.ydr"
L9_1 = "diables_x_quasar_phone_red.ydr"
L10_1 = "diables_x_quasar_phone_white.ydr"
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
L0_1[7] = L7_1
L0_1[8] = L8_1
L0_1[9] = L9_1
L0_1[10] = L10_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = os
  L1_2 = L1_2.rename
  L2_2 = A0_2
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = true
    if L1_2 then
      goto lbl_19
    end
  end
  L1_2 = false
  ::lbl_19::
  return L1_2
end
Exists = L1_1
L1_1 = Citizen
L1_1 = L1_1.CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = GetResourcePath
  L1_2 = GetCurrentResourceName
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = Exists
    L8_2 = L0_2
    L9_2 = "/stream/"
    L10_2 = L6_2
    L8_2 = L8_2 .. L9_2 .. L10_2
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = os
      L7_2 = L7_2.exit
      L7_2()
      break
    end
  end
end
L1_1(L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.GetPlayerFromId
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.job
    L1_2.onduty = true
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
GetJob = L1_1
function L1_1()
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
GetPlayers = L1_1
