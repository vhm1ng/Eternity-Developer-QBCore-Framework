local L0_1, L1_1, L2_1
ESX = nil
QBCore = nil
QSPhone = nil
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = QSPhone
    if nil ~= L0_2 then
      break
    end
    L0_2 = TriggerEvent
    L1_2 = "qs-smartphone:CallBacks"
    function L2_2(A0_3)
      local L1_3
      QSPhone = A0_3
    end
    L0_2(L1_2, L2_2)
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 0
    L0_2(L1_2)
  end
end
L0_1(L1_1)
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.Framework
  if "ESX" == L0_2 then
    while true do
      L0_2 = ESX
      if nil ~= L0_2 then
        break
      end
      L0_2 = Wait
      L1_2 = 100
      L0_2(L1_2)
      L0_2 = TriggerEvent
      L1_2 = Config
      L1_2 = L1_2.getSharedObject
      function L2_2(A0_3)
        local L1_3
        ESX = A0_3
      end
      L0_2(L1_2, L2_2)
    end
  else
    L0_2 = Config
    L0_2 = L0_2.Framework
    if "QBCore" == L0_2 then
      L0_2 = exports
      L1_2 = Config
      L1_2 = L1_2.QBCoreGetCoreObject
      L0_2 = L0_2[L1_2]
      L1_2 = L0_2
      L0_2 = L0_2.GetCoreObject
      L0_2 = L0_2(L1_2)
      QBCore = L0_2
    end
  end
end
L0_1(L1_1)
L0_1 = RegisterCommand
L1_1 = Config
L1_1 = L1_1.Command
function L2_1()
  local L0_2, L1_2
  L0_2 = openMenu
  L0_2()
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "qs-fakenumber:sendMessage"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-fakenumber:sendMessage"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SendTextMessage
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = QSPhone
  L0_2 = L0_2.TriggerServerCallback
  L1_2 = "qs-fakenumber:GetSims"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    if A0_3 then
      L1_3 = type
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      if "table" == L1_3 then
        L1_3 = Config
        L1_3 = L1_3.Framework
        if "ESX" == L1_3 then
          L1_3 = {}
          L2_3 = pairs
          L3_3 = A0_3
          L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
          for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
            L8_3 = table
            L8_3 = L8_3.insert
            L9_3 = L1_3
            L10_3 = {}
            L11_3 = Lang
            L12_3 = "MENU_NUMBER"
            L11_3 = L11_3(L12_3)
            L12_3 = " "
            L13_3 = L7_3
            L11_3 = L11_3 .. L12_3 .. L13_3
            L10_3.label = L11_3
            L10_3.value = L7_3
            L8_3(L9_3, L10_3)
          end
          L2_3 = ESX
          L2_3 = L2_3.UI
          L2_3 = L2_3.Menu
          L2_3 = L2_3.Open
          L3_3 = "default"
          L4_3 = GetCurrentResourceName
          L4_3 = L4_3()
          L5_3 = "sim"
          L6_3 = {}
          L7_3 = Lang
          L8_3 = "MENU_TITLE"
          L7_3 = L7_3(L8_3)
          L6_3.title = L7_3
          L6_3.align = "top-right"
          L6_3.elements = L1_3
          function L7_3(A0_4, A1_4)
            local L2_4, L3_4
            L2_4 = A1_4.close
            L2_4()
            L2_4 = openActionMenu
            L3_4 = A0_4.current
            L3_4 = L3_4.value
            L2_4(L3_4)
          end
          function L8_3(A0_4, A1_4)
            local L2_4
            L2_4 = A1_4.close
            L2_4()
          end
          L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        else
          L1_3 = Config
          L1_3 = L1_3.Framework
          if "QBCore" == L1_3 then
            L1_3 = {}
            L2_3 = {}
            L3_3 = Lang
            L4_3 = "MENU_TITLE"
            L3_3 = L3_3(L4_3)
            L2_3.header = L3_3
            L2_3.isMenuHeader = true
            L1_3[1] = L2_3
            L2_3 = pairs
            L3_3 = A0_3
            L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
            for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
              L8_3 = table
              L8_3 = L8_3.insert
              L9_3 = L1_3
              L10_3 = {}
              L11_3 = Lang
              L12_3 = "MENU_NUMBER"
              L11_3 = L11_3(L12_3)
              L12_3 = " "
              L13_3 = L7_3
              L11_3 = L11_3 .. L12_3 .. L13_3
              L10_3.header = L11_3
              L11_3 = {}
              L11_3.event = "et-menu:client:changeNumber"
              L12_3 = {}
              L12_3.number = L7_3
              L11_3.args = L12_3
              L10_3.params = L11_3
              L8_3(L9_3, L10_3)
            end
            L2_3 = TriggerEvent
            L3_3 = "et-menu:client:openMenu"
            L4_3 = L1_3
            L2_3(L3_3, L4_3)
          end
        end
    end
    else
      L1_3 = SendTextMessage
      L2_3 = Lang
      L3_3 = "NO_SIM"
      L2_3 = L2_3(L3_3)
      L3_3 = "error"
      L1_3(L2_3, L3_3)
    end
  end
  L0_2(L1_2, L2_2)
end
openMenu = L0_1
L0_1 = AddEventHandler
L1_1 = "et-menu:client:changeNumber"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = openActionMenu
  L2_2 = A0_2.number
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.UI
    L1_2 = L1_2.Menu
    L1_2 = L1_2.Open
    L2_2 = "default"
    L3_2 = GetCurrentResourceName
    L3_2 = L3_2()
    L4_2 = "number"
    L5_2 = {}
    L6_2 = Lang
    L7_2 = "MENU_NUMBER"
    L6_2 = L6_2(L7_2)
    L7_2 = " "
    L8_2 = A0_2
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2.title = L6_2
    L5_2.align = "top-right"
    L6_2 = {}
    L7_2 = {}
    L8_2 = Lang
    L9_2 = "MENU_USE_NUMBER"
    L8_2 = L8_2(L9_2)
    L7_2.label = L8_2
    L7_2.value = "use"
    L6_2[1] = L7_2
    L5_2.elements = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3
      L2_3 = A1_3.close
      L2_3()
      L2_3 = A0_3.current
      L2_3 = L2_3.value
      if "use" == L2_3 then
        L2_3 = TriggerServerEvent
        L3_3 = "qs-fakenumber:newPhone"
        L4_3 = A0_2
        L2_3(L3_3, L4_3)
      end
    end
    function L7_2(A0_3, A1_3)
      local L2_3
      L2_3 = A1_3.close
      L2_3()
    end
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "QBCore" == L1_2 then
      L1_2 = {}
      L2_2 = {}
      L3_2 = Lang
      L4_2 = "MENU_NUMBER"
      L3_2 = L3_2(L4_2)
      L4_2 = " "
      L5_2 = A0_2
      L3_2 = L3_2 .. L4_2 .. L5_2
      L2_2.header = L3_2
      L2_2.isMenuHeader = true
      L1_2[1] = L2_2
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = L1_2
      L4_2 = {}
      L5_2 = Lang
      L6_2 = "MENU_USE_NUMBER"
      L5_2 = L5_2(L6_2)
      L4_2.header = L5_2
      L5_2 = {}
      L5_2.event = "et-menu:client:changeNumber:confirm"
      L6_2 = {}
      L6_2.number = A0_2
      L5_2.args = L6_2
      L4_2.params = L5_2
      L2_2(L3_2, L4_2)
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = L1_2
      L4_2 = {}
      L5_2 = Lang
      L6_2 = "EXIT"
      L5_2 = L5_2(L6_2)
      L4_2.header = L5_2
      L5_2 = {}
      L5_2.event = "et-menu:client:close"
      L4_2.params = L5_2
      L2_2(L3_2, L4_2)
      L2_2 = TriggerEvent
      L3_2 = "et-menu:client:openMenu"
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
end
openActionMenu = L0_1
L0_1 = AddEventHandler
L1_1 = "et-menu:client:changeNumber:confirm"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-fakenumber:newPhone"
  L3_2 = A0_2.number
  L1_2(L2_2, L3_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
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
Lang = L0_1
