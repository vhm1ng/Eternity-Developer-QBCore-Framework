local L0_1, L1_1, L2_1, L3_1, L4_1
QSPhone = nil
L0_1 = TriggerEvent
L1_1 = "qs-smartphone:CallBacks"
function L2_1(A0_2)
  local L1_2
  QSPhone = A0_2
end
L0_1(L1_1, L2_1)
ESX = nil
QS = nil
QBCore = nil
L0_1 = Config
L0_1 = L0_1.Framework
if "ESX" == L0_1 then
  L0_1 = TriggerEvent
  L1_1 = Config
  L1_1 = L1_1.getSharedObject
  function L2_1(A0_2)
    local L1_2
    ESX = A0_2
  end
  L0_1(L1_1, L2_1)
  L0_1 = TriggerEvent
  L1_1 = "qs-base:getSharedObject"
  function L2_1(A0_2)
    local L1_2
    QS = A0_2
  end
  L0_1(L1_1, L2_1)
else
  L0_1 = Config
  L0_1 = L0_1.Framework
  if "QBCore" == L0_1 then
    L0_1 = exports
    L1_1 = Config
    L1_1 = L1_1.QBCoreGetCoreObject
    L0_1 = L0_1[L1_1]
    L1_1 = L0_1
    L0_1 = L0_1.GetCoreObject
    L0_1 = L0_1(L1_1)
    QBCore = L0_1
    L0_1 = print
    L1_1 = "^4[qs-smartphone] ^2The QBCore version of Quasar Smartphone is running.^0"
    L0_1(L1_1)
  end
end
L0_1 = "1"
L1_1 = "9"
L2_1 = Citizen
L2_1 = L2_1.CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = 1
  L1_2 = Config
  L1_2 = L1_2.NumberDigits
  L1_2 = L1_2 - 1
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L0_1
    L5_2 = "1"
    L4_2 = L4_2 .. L5_2
    L0_1 = L4_2
    L4_2 = L1_1
    L5_2 = "9"
    L4_2 = L4_2 .. L5_2
    L1_1 = L4_2
  end
  L0_2 = tonumber
  L1_2 = L0_1
  L0_2 = L0_2(L1_2)
  L0_1 = L0_2
  L0_2 = tonumber
  L1_2 = L1_1
  L0_2 = L0_2(L1_2)
  L1_1 = L0_2
end
L2_1(L3_1)
L2_1 = Config
L2_1 = L2_1.Framework
if "ESX" == L2_1 then
  L2_1 = ESX
  L2_1 = L2_1.RegisterUsableItem
  L3_1 = Config
  L3_1 = L3_1.simitems
  function L4_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
    L1_2 = Config
    L1_2 = L1_2.simitems
    L2_2 = GetPlayerFromIdFramework
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = tostring
    L4_2 = Config
    L4_2 = L4_2.NumberPrefix
    L3_2 = L3_2(L4_2)
    L4_2 = math
    L4_2 = L4_2.random
    L5_2 = L0_1
    L6_2 = L1_1
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L3_2 .. L4_2
    L4_2 = saveNewSim
    L5_2 = A0_2
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = ESX
    L4_2 = L4_2.GetPlayerFromId
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2.removeInventoryItem
    L6_2 = L1_2
    L7_2 = 1
    L5_2(L6_2, L7_2)
  end
  L2_1(L3_1, L4_1)
else
  L2_1 = Config
  L2_1 = L2_1.Framework
  if "QBCore" == L2_1 then
    L2_1 = QBCore
    L2_1 = L2_1.Functions
    L2_1 = L2_1.CreateUseableItem
    L3_1 = Config
    L3_1 = L3_1.simitems
    function L4_1(A0_2, A1_2)
      local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
      L2_2 = GetPlayerFromIdFramework
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = tostring
      L4_2 = Config
      L4_2 = L4_2.NumberPrefix
      L3_2 = L3_2(L4_2)
      L4_2 = math
      L4_2 = L4_2.random
      L5_2 = L0_1
      L6_2 = L1_1
      L4_2 = L4_2(L5_2, L6_2)
      L3_2 = L3_2 .. L4_2
      L4_2 = saveNewSim
      L5_2 = A0_2
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
      L4_2 = QBCore
      L4_2 = L4_2.Functions
      L4_2 = L4_2.GetPlayer
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      L5_2 = L4_2.Functions
      L5_2 = L5_2.RemoveItem
      L6_2 = Config
      L6_2 = L6_2.simitems
      L7_2 = 1
      L5_2(L6_2, L7_2)
    end
    L2_1(L3_1, L4_1)
  end
end
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = MySQL
  L4_2 = L4_2.Sync
  L4_2 = L4_2.fetchAll
  L5_2 = "SELECT * from phone_numbers where identifier = @identifier"
  L6_2 = {}
  L7_2 = L3_2.identifier
  L6_2["@identifier"] = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = L4_2[1]
    if L5_2 then
      L5_2 = json
      L5_2 = L5_2.decode
      L6_2 = L4_2[1]
      L6_2 = L6_2.data
      L5_2 = L5_2(L6_2)
      L6_2 = #L5_2
      if L6_2 > 0 then
        L6_2 = false
        if A2_2 then
          L7_2 = pairs
          L8_2 = L5_2
          L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
          for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
            if L12_2 == A1_2 then
              L6_2 = true
            end
          end
        end
        if L6_2 then
          return
        end
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = L5_2
        L9_2 = A1_2
        L7_2(L8_2, L9_2)
        L7_2 = MySQL
        L7_2 = L7_2.Sync
        L7_2 = L7_2.execute
        L8_2 = "update phone_numbers set data = @data where identifier = @identifier"
        L9_2 = {}
        L10_2 = json
        L10_2 = L10_2.encode
        L11_2 = L5_2
        L10_2 = L10_2(L11_2)
        L9_2["@data"] = L10_2
        L10_2 = L3_2.identifier
        L9_2["@identifier"] = L10_2
        L7_2(L8_2, L9_2)
      else
        L6_2 = {}
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = L6_2
        L9_2 = A1_2
        L7_2(L8_2, L9_2)
        L7_2 = MySQL
        L7_2 = L7_2.Sync
        L7_2 = L7_2.execute
        L8_2 = "insert into phone_numbers (identifier, data) values (@identifier, @data)"
        L9_2 = {}
        L10_2 = L3_2.identifier
        L9_2["@identifier"] = L10_2
        L10_2 = json
        L10_2 = L10_2.encode
        L11_2 = L6_2
        L10_2 = L10_2(L11_2)
        L9_2["@data"] = L10_2
        L7_2(L8_2, L9_2)
      end
  end
  else
    L5_2 = {}
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L5_2
    L8_2 = A1_2
    L6_2(L7_2, L8_2)
    L6_2 = MySQL
    L6_2 = L6_2.Sync
    L6_2 = L6_2.execute
    L7_2 = "insert into phone_numbers (identifier, data, defaultNumber) values (@identifier, @data, @default)"
    L8_2 = {}
    L9_2 = L3_2.identifier
    L8_2["@identifier"] = L9_2
    L9_2 = json
    L9_2 = L9_2.encode
    L10_2 = L5_2
    L9_2 = L9_2(L10_2)
    L8_2["@data"] = L9_2
    L9_2 = L3_2.PlayerData
    L9_2 = L9_2.charinfo
    L9_2 = L9_2.phone
    L8_2["@default"] = L9_2
    L6_2(L7_2, L8_2)
  end
  L5_2 = TriggerClientEvent
  L6_2 = "qs-fakenumber:sendMessage"
  L7_2 = A0_2
  L8_2 = Lang
  L9_2 = "NEW_SIM"
  L8_2 = L8_2(L9_2)
  L9_2 = Config
  L9_2 = L9_2.NumberPrefix
  L10_2 = A1_2
  L8_2 = L8_2 .. L9_2 .. L10_2
  L9_2 = "success"
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
saveNewSim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.Languages
  L2_2 = Config
  L2_2 = L2_2.Language
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L2_2 = L1_2[A0_2]
    if L2_2 then
      L2_2 = L1_2[A0_2]
      return L2_2
    end
  end
  return A0_2
end
Lang = L2_1
L2_1 = QSPhone
L2_1 = L2_1.RegisterServerCallback
L3_1 = "qs-fakenumber:GetSims"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT * from phone_numbers where identifier = @identifier"
  L5_2 = {}
  L6_2 = L2_2.identifier
  L5_2["@identifier"] = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2[1]
  if L4_2 then
    L4_2 = A1_2
    L5_2 = json
    L5_2 = L5_2.decode
    L6_2 = L3_2[1]
    L6_2 = L6_2.data
    L5_2, L6_2 = L5_2(L6_2)
    L4_2(L5_2, L6_2)
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "qs-fakenumber:newPhone"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "qs-fakenumber:newPhone"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = source
    L2_2 = GetPlayerFromIdFramework
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.PlayerData
    L3_2 = L3_2.charinfo
    L3_2 = L3_2.phone
    L4_2 = saveNewSim
    L5_2 = L1_2
    L6_2 = L3_2
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = L2_2.SetPhoneNumber
    L5_2 = A0_2
    L4_2(L5_2)
    L4_2 = TriggerClientEvent
    L5_2 = "qs-fakenumber:sendMessage"
    L6_2 = L2_2.source
    L7_2 = Lang
    L8_2 = "CHANGE_NUMBER_SUCCESS"
    L7_2 = L7_2(L8_2)
    L8_2 = " "
    L9_2 = A0_2
    L10_2 = " "
    L11_2 = Lang
    L12_2 = "CHANGE_NUMBER_OLD"
    L11_2 = L11_2(L12_2)
    L12_2 = " "
    L13_2 = L3_2
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
    L8_2 = "success"
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = TriggerClientEvent
    L5_2 = "qs-smartphone:RefreshContacts"
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
  else
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "QBCore" == L1_2 then
      L1_2 = source
      L2_2 = GetPlayerFromIdFramework
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L3_2 = L2_2.PlayerData
        L3_2 = L3_2.charinfo
        L3_2 = L3_2.phone
        L4_2 = L2_2.Functions
        L4_2 = L4_2.SetPhoneNumber
        L5_2 = A0_2
        L4_2(L5_2)
        L4_2 = saveNewSim
        L5_2 = L1_2
        L6_2 = L3_2
        L7_2 = true
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = TriggerClientEvent
        L5_2 = "qs-fakenumber:sendMessage"
        L6_2 = L2_2.source
        L7_2 = Lang
        L8_2 = "CHANGE_NUMBER_SUCCESS"
        L7_2 = L7_2(L8_2)
        L8_2 = " "
        L9_2 = A0_2
        L10_2 = " "
        L11_2 = Lang
        L12_2 = "CHANGE_NUMBER_OLD"
        L11_2 = L11_2(L12_2)
        L12_2 = " "
        L13_2 = L3_2
        L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
        L8_2 = "success"
        L4_2(L5_2, L6_2, L7_2, L8_2)
        L4_2 = TriggerClientEvent
        L5_2 = "qs-smartphone:RefreshContacts"
        L6_2 = L1_2
        L4_2(L5_2, L6_2)
      end
    end
  end
end
L2_1(L3_1, L4_1)
