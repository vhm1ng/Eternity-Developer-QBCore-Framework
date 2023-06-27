local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = nil
L1_1 = TriggerEvent
L2_1 = "qs-core:getSharedObject"
function L3_1(A0_2)
  local L1_2
  L0_1 = A0_2
end
L1_1(L2_1, L3_1)
L1_1 = Config
L1_1 = L1_1.HackPhone
if L1_1 then
  L1_1 = Config
  L1_1 = L1_1.Framework
  if "ESX" == L1_1 then
    L1_1 = ESX
    L1_1 = L1_1.RegisterUsableItem
    L2_1 = Config
    L2_1 = L2_1.PhoneHackItem
    function L3_1(A0_2, A1_2)
      local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
      L2_2 = A0_2
      L3_2 = ESX
      L3_2 = L3_2.GetPlayerFromId
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L4_2 = L3_2.getInventoryItem
        L5_2 = Config
        L5_2 = L5_2.PhoneHackItem
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L5_2 = L4_2.count
          if L5_2 > 0 then
            L5_2 = CheckPhone
            L6_2 = L2_2
            L5_2 = L5_2(L6_2)
            if L5_2 then
              L6_2 = TriggerClientEvent
              L7_2 = "qs-smartphone:client:TriggerPhoneHack"
              L8_2 = L2_2
              L6_2(L7_2, L8_2)
            else
              L6_2 = TriggerClientEvent
              L7_2 = "qs-smartphone:sendMessage"
              L8_2 = L2_2
              L9_2 = Lang
              L10_2 = "DISCORD_CREATE_NO_PHONE"
              L9_2 = L9_2(L10_2)
              L10_2 = "error"
              L6_2(L7_2, L8_2, L9_2, L10_2)
            end
          end
        end
      end
    end
    L1_1(L2_1, L3_1)
  else
    L1_1 = Config
    L1_1 = L1_1.Framework
    if "QBCore" == L1_1 then
      L1_1 = QBCore
      L1_1 = L1_1.Functions
      L1_1 = L1_1.CreateUseableItem
      L2_1 = Config
      L2_1 = L2_1.PhoneHackItem
      function L3_1(A0_2, A1_2)
        local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
        L2_2 = A0_2
        L3_2 = QBCore
        L3_2 = L3_2.Functions
        L3_2 = L3_2.GetPlayer
        L4_2 = A0_2
        L3_2 = L3_2(L4_2)
        L4_2 = L3_2.Functions
        L4_2 = L4_2.GetItemByName
        L5_2 = Config
        L5_2 = L5_2.PhoneHackItem
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L4_2 = CheckPhone
          L5_2 = L2_2
          L4_2 = L4_2(L5_2)
          if L4_2 then
            L5_2 = TriggerClientEvent
            L6_2 = "qs-smartphone:client:TriggerPhoneHack"
            L7_2 = L2_2
            L5_2(L6_2, L7_2)
          else
            L5_2 = TriggerClientEvent
            L6_2 = "qs-smartphone:sendMessage"
            L7_2 = L2_2
            L8_2 = Lang
            L9_2 = "DISCORD_CREATE_NO_PHONE"
            L8_2 = L8_2(L9_2)
            L9_2 = "error"
            L5_2(L6_2, L7_2, L8_2, L9_2)
          end
        end
      end
      L1_1(L2_1, L3_1)
    end
  end
  L1_1 = RegisterNetEvent
  L2_1 = "qs-smartphone:server:HackPhone"
  function L3_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "ESX" == L1_2 then
      L1_2 = A0_2
      L2_2 = L0_1.GetPlayerFromId
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = pairs
      L4_2 = Config
      L4_2 = L4_2.PhonesProps
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L2_2.GetItemByName
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L10_2 = L9_2.amount
          if L10_2 > 0 then
            success = true
            L10_2 = L2_2.removeItem
            L11_2 = L7_2
            L12_2 = 1
            L10_2(L11_2, L12_2)
            L10_2 = L2_2.addItem
            L11_2 = L7_2
            L12_2 = 1
            L13_2 = false
            L14_2 = {}
            L14_2.hacked = true
            L10_2(L11_2, L12_2, L13_2, L14_2)
            L10_2 = discord_notifications
            if L10_2 then
              L10_2 = TriggerClientEvent
              L11_2 = "qs-smartphone:client:notify"
              L12_2 = L1_2
              L13_2 = {}
              L14_2 = Lang
              L15_2 = "DISCORD_TITLE"
              L14_2 = L14_2(L15_2)
              L13_2.title = L14_2
              L14_2 = Lang
              L15_2 = "DISCORD_PHONE_HACKED"
              L14_2 = L14_2(L15_2)
              L13_2.text = L14_2
              L13_2.icon = "./img/apps/discord.png"
              L10_2(L11_2, L12_2, L13_2)
            end
            break
          end
        end
      end
    else
      L1_2 = Config
      L1_2 = L1_2.Framework
      if "QBCore" == L1_2 then
        L1_2 = A0_2
        L2_2 = QBCore
        L2_2 = L2_2.Functions
        L2_2 = L2_2.GetPlayer
        L3_2 = L1_2
        L2_2 = L2_2(L3_2)
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
              L10_2 = L2_2.Functions
              L10_2 = L10_2.RemoveItem
              L11_2 = L7_2
              L12_2 = 1
              L10_2(L11_2, L12_2)
              L10_2 = L2_2.Functions
              L10_2 = L10_2.AddItem
              L11_2 = L7_2
              L12_2 = 1
              L13_2 = false
              L14_2 = {}
              L14_2.hacked = true
              L10_2(L11_2, L12_2, L13_2, L14_2)
              L10_2 = discord_notifications
              if L10_2 then
                L10_2 = TriggerClientEvent
                L11_2 = "qs-smartphone:client:notify"
                L12_2 = L1_2
                L13_2 = {}
                L14_2 = Lang
                L15_2 = "DISCORD_TITLE"
                L14_2 = L14_2(L15_2)
                L13_2.title = L14_2
                L14_2 = Lang
                L15_2 = "DISCORD_PHONE_HACKED"
                L14_2 = L14_2(L15_2)
                L13_2.text = L14_2
                L13_2.icon = "./img/apps/discord.png"
                L10_2(L11_2, L12_2, L13_2)
              end
              break
            end
          end
        end
      end
    end
  end
  L1_1(L2_1, L3_1)
end
L1_1 = {}
L2_1 = "diables_x_quasar_phone_black.ydr"
L3_1 = "diables_x_quasar_phone_blue.ydr"
L4_1 = "diables_x_quasar_phone_gold.ydr"
L5_1 = "diables_x_quasar_phone_green.ydr"
L6_1 = "diables_x_quasar_phone_greenlight.ydr"
L7_1 = "diables_x_quasar_phone_grey.ydr"
L8_1 = "diables_x_quasar_phone_pink.ydr"
L9_1 = "diables_x_quasar_phone_purple.ydr"
L10_1 = "diables_x_quasar_phone_red.ydr"
L11_1 = "diables_x_quasar_phone_white.ydr"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L1_1[6] = L7_1
L1_1[7] = L8_1
L1_1[8] = L9_1
L1_1[9] = L10_1
L1_1[10] = L11_1
function L2_1(A0_2)
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
Exists = L2_1
L2_1 = Citizen
L2_1 = L2_1.CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = GetResourcePath
  L1_2 = GetCurrentResourceName
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L1_2 = pairs
  L2_2 = L1_1
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
L2_1(L3_1)
L2_1 = QSPhone
L2_1 = L2_1.RegisterServerCallback
L3_1 = "qs-smartphone:server:hasHackedPhone"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = Config
  L2_2 = L2_2.HackPhone
  if L2_2 then
    L2_2 = Config
    L2_2 = L2_2.Framework
    if "ESX" == L2_2 then
      L2_2 = L0_1
      if L2_2 then
        L2_2 = A0_2
        L3_2 = L0_1.GetPlayerFromId
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        L4_2 = false
        if L3_2 then
          L5_2 = pairs
          L6_2 = Config
          L6_2 = L6_2.PhonesProps
          L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
          for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
            L11_2 = L3_2.GetItemByName
            L12_2 = L9_2
            L11_2 = L11_2(L12_2)
            if L11_2 then
              L12_2 = L11_2.amount
              if L12_2 > 0 then
                L12_2 = L11_2.info
                if L12_2 then
                  L12_2 = L11_2.info
                  L12_2 = L12_2.hacked
                  if L12_2 then
                    L4_2 = true
                    break
                  end
                end
              end
            end
          end
        end
        L5_2 = A1_2
        L6_2 = L4_2
        L5_2(L6_2)
      else
        L2_2 = A1_2
        L3_2 = false
        L2_2(L3_2)
      end
    else
      L2_2 = Config
      L2_2 = L2_2.Framework
      if "QBCore" == L2_2 then
        L2_2 = A0_2
        L3_2 = QBCore
        L3_2 = L3_2.Functions
        L3_2 = L3_2.GetPlayer
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        L4_2 = false
        L5_2 = pairs
        L6_2 = Config
        L6_2 = L6_2.PhonesProps
        L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
        for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
          L11_2 = L3_2.Functions
          L11_2 = L11_2.GetItemByName
          L12_2 = L9_2
          L11_2 = L11_2(L12_2)
          if L11_2 then
            L12_2 = L11_2.amount
            if L12_2 > 0 then
              L12_2 = L11_2.info
              if L12_2 then
                L12_2 = L11_2.info
                L12_2 = L12_2.hacked
                if L12_2 then
                  L4_2 = true
                  break
                end
              end
            end
          end
        end
        L5_2 = A1_2
        L6_2 = L4_2
        L5_2(L6_2)
      else
        L2_2 = A1_2
        L3_2 = false
        L2_2(L3_2)
      end
    end
  else
    L2_2 = A1_2
    L3_2 = false
    L2_2(L3_2)
  end
end
L2_1(L3_1, L4_1)
