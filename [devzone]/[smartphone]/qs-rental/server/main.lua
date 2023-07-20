local L0_1, L1_1, L2_1, L3_1, L4_1
ESX = nil
QBCore = nil
QSPhone = nil
QSPhone = nil
L0_1 = TriggerEvent
L1_1 = "qs-smartphone:CallBacks"
function L2_1(A0_2)
  local L1_2
  QSPhone = A0_2
end
L0_1(L1_1, L2_1)
L0_1 = {}
L1_1 = Config
L1_1 = L1_1.Framework
if "ESX" == L1_1 then
  L1_1 = TriggerEvent
  L2_1 = Config
  L2_1 = L2_1.getSharedObject
  function L3_1(A0_2)
    local L1_2
    ESX = A0_2
  end
  L1_1(L2_1, L3_1)
  L1_1 = print
  L2_1 = "^4[qs-smartphone] ^2The ESX version of Quasar Smartphone Rental DLC is running.^0"
  L1_1(L2_1)
else
  L1_1 = Config
  L1_1 = L1_1.Framework
  if "QBCore" == L1_1 then
    L1_1 = exports
    L1_1 = L1_1["et-core"]
    L2_1 = L1_1
    L1_1 = L1_1.GetCoreObject
    L1_1 = L1_1(L2_1)
    QBCore = L1_1
    L1_1 = print
    L2_1 = "^4[qs-smartphone] ^2The QBCore version of Quasar Smartphone Rental DLC is running.^0"
    L1_1(L2_1)
  end
end
L1_1 = RegisterServerEvent
L2_1 = "qs-smartphone:server:restoreRented"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "qs-smartphone:server:restoreRented"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = source
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = source
    L3_2 = L0_1
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L4_2 = source
      L3_2 = L0_1
      L3_2 = L3_2[L4_2]
      if A0_2 <= L3_2 then
        L4_2 = source
        L3_2 = L0_1
        L6_2 = source
        L5_2 = L0_1
        L5_2 = L5_2[L6_2]
        L5_2 = L5_2 - A0_2
        L3_2[L4_2] = L5_2
        L3_2 = Config
        L3_2 = L3_2.Framework
        if "ESX" == L3_2 then
          L3_2 = L2_2.addAccountMoney
          L4_2 = "bank"
          L5_2 = A0_2
          L3_2(L4_2, L5_2)
        else
          L3_2 = Config
          L3_2 = L3_2.Framework
          if "QBCore" == L3_2 then
            L3_2 = L2_2.Functions
            L3_2 = L3_2.AddMoney
            L4_2 = "bank"
            L5_2 = A0_2
            L3_2(L4_2, L5_2)
          end
        end
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = 0
L2_1 = RegisterServerEvent
L3_1 = "qs-smartphone:server:spawnVehicle"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "qs-smartphone:server:spawnVehicle"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = source
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = Config
    L3_2 = L3_2.RentelVehicles
    L4_2 = A0_2.model
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L3_2 = L1_1
      L3_2 = L3_2 + 1
      L1_1 = L3_2
      L3_2 = Config
      L3_2 = L3_2.Framework
      if "ESX" == L3_2 then
        L3_2 = L2_2.getAccount
        L4_2 = "bank"
        L3_2 = L3_2(L4_2)
        L3_2 = L3_2.money
        L4_2 = A0_2.price
        if L3_2 >= L4_2 then
          L3_2 = "RENT-"
          L4_2 = L1_1
          L3_2 = L3_2 .. L4_2
          A0_2.plate = L3_2
          L3_2 = TriggerClientEvent
          L4_2 = "qs-smartphone:client:spawnVehicle"
          L5_2 = L1_2
          L6_2 = A0_2
          L3_2(L4_2, L5_2, L6_2)
        else
          L3_2 = TriggerClientEvent
          L4_2 = "qs-rental:notify"
          L5_2 = source
          L6_2 = Lang
          L7_2 = "NOT_ENOUGH_MONEY"
          L6_2 = L6_2(L7_2)
          L7_2 = "error"
          L3_2(L4_2, L5_2, L6_2, L7_2)
        end
      else
        L3_2 = Config
        L3_2 = L3_2.Framework
        if "QBCore" == L3_2 then
          L3_2 = A0_2.price
          L4_2 = L2_2.PlayerData
          L4_2 = L4_2.money
          L4_2 = L4_2.bank
          if L3_2 <= L4_2 then
            L3_2 = "RENT-"
            L4_2 = L1_1
            L3_2 = L3_2 .. L4_2
            A0_2.plate = L3_2
            L3_2 = TriggerClientEvent
            L4_2 = "qs-smartphone:client:spawnVehicle"
            L5_2 = L1_2
            L6_2 = A0_2
            L3_2(L4_2, L5_2, L6_2)
          else
            L3_2 = TriggerClientEvent
            L4_2 = "qs-rental:notify"
            L5_2 = source
            L6_2 = Lang
            L7_2 = "NOT_ENOUGH_MONEY"
            L6_2 = L6_2(L7_2)
            L7_2 = "error"
            L3_2(L4_2, L5_2, L6_2, L7_2)
          end
        end
      end
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = QSPhone
L2_1 = L2_1.RegisterServerCallback
L3_1 = "qs-rental:checkMoney"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = Config
    L4_2 = L4_2.Framework
    if "ESX" == L4_2 then
      L4_2 = L3_2.getAccount
      L5_2 = "bank"
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2.money
      L5_2 = tonumber
      L6_2 = A2_2
      L5_2 = L5_2(L6_2)
      if L4_2 >= L5_2 then
        L4_2 = A1_2
        L5_2 = true
        L4_2(L5_2)
      else
        L4_2 = TriggerClientEvent
        L5_2 = "qs-rental:notify"
        L6_2 = A0_2
        L7_2 = Lang
        L8_2 = "NOT_ENOUGH_MONEY"
        L7_2 = L7_2(L8_2)
        L8_2 = "error"
        L4_2(L5_2, L6_2, L7_2, L8_2)
        L4_2 = A1_2
        L5_2 = false
        L4_2(L5_2)
      end
    else
      L4_2 = Config
      L4_2 = L4_2.Framework
      if "QBCore" == L4_2 then
        L4_2 = L3_2.PlayerData
        L4_2 = L4_2.money
        L4_2 = L4_2.bank
        L5_2 = tonumber
        L6_2 = A2_2
        L5_2 = L5_2(L6_2)
        if L4_2 >= L5_2 then
          L5_2 = A1_2
          L6_2 = true
          L5_2(L6_2)
        else
          L5_2 = TriggerClientEvent
          L6_2 = "qs-rental:notify"
          L7_2 = A0_2
          L8_2 = Lang
          L9_2 = "NOT_ENOUGH_MONEY"
          L8_2 = L8_2(L9_2)
          L9_2 = "error"
          L5_2(L6_2, L7_2, L8_2, L9_2)
          L5_2 = A1_2
          L6_2 = false
          L5_2(L6_2)
        end
      end
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterServerEvent
L3_1 = "qs-rental:server:removeMoney"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "qs-rental:server:removeMoney"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = GetPlayerFromIdFramework
  L4_2 = source
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = Config
    L4_2 = L4_2.Framework
    if "ESX" == L4_2 then
      L4_2 = L3_2.getAccount
      L5_2 = "bank"
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2.money
      if A1_2 <= L4_2 then
        L4_2 = L3_2.removeAccountMoney
        L5_2 = "bank"
        L6_2 = A1_2
        L4_2(L5_2, L6_2)
        L5_2 = source
        L4_2 = L0_1
        L4_2 = L4_2[L5_2]
        if not L4_2 then
          L5_2 = source
          L4_2 = L0_1
          L4_2[L5_2] = 0
        end
        L5_2 = source
        L4_2 = L0_1
        L7_2 = source
        L6_2 = L0_1
        L6_2 = L6_2[L7_2]
        L6_2 = L6_2 + A1_2
        L4_2[L5_2] = L6_2
      end
    else
      L4_2 = Config
      L4_2 = L4_2.Framework
      if "QBCore" == L4_2 then
        L4_2 = L3_2.PlayerData
        L4_2 = L4_2.money
        L4_2 = L4_2.bank
        L5_2 = tonumber
        L6_2 = A1_2
        L5_2 = L5_2(L6_2)
        if L4_2 > L5_2 then
          L5_2 = L3_2.Functions
          L5_2 = L5_2.RemoveMoney
          L6_2 = "bank"
          L7_2 = A1_2
          L5_2(L6_2, L7_2)
          L6_2 = source
          L5_2 = L0_1
          L5_2 = L5_2[L6_2]
          if not L5_2 then
            L6_2 = source
            L5_2 = L0_1
            L5_2[L6_2] = 0
          end
          L6_2 = source
          L5_2 = L0_1
          L8_2 = source
          L7_2 = L0_1
          L7_2 = L7_2[L8_2]
          L7_2 = L7_2 + A1_2
          L5_2[L6_2] = L7_2
        end
      end
    end
  end
end
L2_1(L3_1, L4_1)
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
