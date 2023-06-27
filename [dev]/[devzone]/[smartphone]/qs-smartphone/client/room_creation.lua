local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
hasHackedPhone = false
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Config
  L0_2 = L0_2.EnableSeller
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.ChatSeller
    L1_2 = RequestModel
    L2_2 = L0_2
    L1_2(L2_2)
    while true do
      L1_2 = HasModelLoaded
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        break
      end
      L1_2 = Citizen
      L1_2 = L1_2.Wait
      L2_2 = 0
      L1_2(L2_2)
    end
    L1_2 = CreatePed
    L2_2 = 5
    L3_2 = "csb_sol"
    L4_2 = Config
    L4_2 = L4_2.SellerLocation
    L5_2 = false
    L6_2 = false
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L2_2 = FreezeEntityPosition
    L3_2 = L1_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityInvincible
    L3_2 = L1_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = SetBlockingOfNonTemporaryEvents
    L3_2 = L1_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = TaskStartScenarioInPlace
    L3_2 = L1_2
    L4_2 = "WORLD_HUMAN_STAND_MOBILE_UPRIGHT_CLUBHOUSE"
    L5_2 = 0
    L6_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1(L1_1)
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Config
  L0_2 = L0_2.EnableSeller
  if L0_2 then
    L0_2 = vector3
    L1_2 = Config
    L1_2 = L1_2.SellerLocation
    L1_2 = L1_2.x
    L2_2 = Config
    L2_2 = L2_2.SellerLocation
    L2_2 = L2_2.y
    L3_2 = Config
    L3_2 = L3_2.SellerLocation
    L3_2 = L3_2.z
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    while true do
      L1_2 = Wait
      L2_2 = 0
      L1_2(L2_2)
      L1_2 = GetEntityCoords
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
      L2_2 = L1_2 - L0_2
      L2_2 = #L2_2
      if L2_2 < 5.0 then
        L3_2 = DrawText3D
        L4_2 = Config
        L4_2 = L4_2.SellerLocation
        L4_2 = L4_2.x
        L5_2 = Config
        L5_2 = L5_2.SellerLocation
        L5_2 = L5_2.y
        L6_2 = Config
        L6_2 = L6_2.SellerLocation
        L6_2 = L6_2.z
        L6_2 = L6_2 + 1.2
        L7_2 = Config
        L7_2 = L7_2.ChatTextSeller
        L3_2(L4_2, L5_2, L6_2, L7_2)
        if L2_2 < 2.0 then
          L3_2 = IsControlJustPressed
          L4_2 = 0
          L5_2 = 38
          L3_2 = L3_2(L4_2, L5_2)
          if not L3_2 then
            L3_2 = IsDisabledControlJustPressed
            L4_2 = 0
            L5_2 = 38
            L3_2 = L3_2(L4_2, L5_2)
          end
          if L3_2 then
            L3_2 = OpenMenuNpc
            L3_2()
          end
        end
      else
        L3_2 = Wait
        L4_2 = 500
        L3_2(L4_2)
      end
    end
  end
end
L0_1(L1_1)
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Config
  L0_2 = L0_2.SellerBlip
  L0_2 = L0_2.enable
  if L0_2 then
    L0_2 = AddBlipForCoord
    L1_2 = Config
    L1_2 = L1_2.SellerBlip
    L1_2 = L1_2.coords
    L0_2 = L0_2(L1_2)
    L1_2 = SetBlipSprite
    L2_2 = L0_2
    L3_2 = Config
    L3_2 = L3_2.SellerBlip
    L3_2 = L3_2.sprite
    L1_2(L2_2, L3_2)
    L1_2 = SetBlipColour
    L2_2 = L0_2
    L3_2 = Config
    L3_2 = L3_2.SellerBlip
    L3_2 = L3_2.color
    L1_2(L2_2, L3_2)
    L1_2 = SetBlipScale
    L2_2 = L0_2
    L3_2 = Config
    L3_2 = L3_2.SellerBlip
    L3_2 = L3_2.scale
    L1_2(L2_2, L3_2)
    L1_2 = BeginTextCommandSetBlipName
    L2_2 = "STRING"
    L1_2(L2_2)
    L1_2 = AddTextComponentString
    L2_2 = Config
    L2_2 = L2_2.SellerBlip
    L2_2 = L2_2.name
    L1_2(L2_2)
    L1_2 = EndTextCommandSetBlipName
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = SetBlipAsShortRange
    L2_2 = L0_2
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1(L1_1)
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.Framework
  if "ESX" == L0_2 then
    L0_2 = QSPhone
    L0_2 = L0_2.TriggerServerCallback
    L1_2 = "qs-smartphone:server:hasHackedPhone"
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      hasHackedPhone = A0_3
      L1_3 = {}
      L2_3 = table
      L2_3 = L2_3.insert
      L3_3 = L1_3
      L4_3 = {}
      L5_3 = Lang
      L6_3 = "DISCORD_MENU_CREATE_CHANNEL"
      L5_3 = L5_3(L6_3)
      L4_3.label = L5_3
      L4_3.value = "create_room_chat"
      L2_3(L3_3, L4_3)
      L2_3 = hasHackedPhone
      if L2_3 then
        L2_3 = table
        L2_3 = L2_3.insert
        L3_3 = L1_3
        L4_3 = {}
        L5_3 = Lang
        L6_3 = "DISCORD_MENU_CREATE_SECURED_CHANNEL"
        L5_3 = L5_3(L6_3)
        L4_3.label = L5_3
        L4_3.value = "create_room_secured"
        L2_3(L3_3, L4_3)
      end
      L2_3 = ESX
      L2_3 = L2_3.UI
      L2_3 = L2_3.Menu
      L2_3 = L2_3.Open
      L3_3 = "default"
      L4_3 = GetCurrentResourceName
      L4_3 = L4_3()
      L5_3 = "create_room"
      L6_3 = {}
      L7_3 = Lang
      L8_3 = "DISCORD_MENU_TITLE"
      L7_3 = L7_3(L8_3)
      L6_3.title = L7_3
      L6_3.align = "right"
      L6_3.elements = L1_3
      function L7_3(A0_4, A1_4)
        local L2_4, L3_4
        L2_4 = A0_4.current
        L2_4 = L2_4.value
        if "create_room_chat" == L2_4 then
          L2_4 = TriggerEvent
          L3_4 = "qs-smartphone:client:openChannelMenu"
          L2_4(L3_4)
          L2_4 = A1_4.close
          L2_4()
        else
          L2_4 = A0_4.current
          L2_4 = L2_4.value
          if "create_room_secured" == L2_4 then
            L2_4 = TriggerEvent
            L3_4 = "qs-smartphone:client:openChannelHackedMenu"
            L2_4(L3_4)
            L2_4 = A1_4.close
            L2_4()
          end
        end
      end
      function L8_3(A0_4, A1_4)
        local L2_4
        L2_4 = A1_4.close
        L2_4()
      end
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    end
    L0_2(L1_2, L2_2)
  else
    L0_2 = Config
    L0_2 = L0_2.Framework
    if "QBCore" == L0_2 then
      L0_2 = QSPhone
      L0_2 = L0_2.TriggerServerCallback
      L1_2 = "qs-smartphone:server:hasHackedPhone"
      function L2_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
        hasHackedPhone = A0_3
        L1_3 = {}
        L2_3 = {}
        L3_3 = Lang
        L4_3 = "DISCORD_MENU_TITLE"
        L3_3 = L3_3(L4_3)
        L2_3.header = L3_3
        L2_3.isMenuHeader = true
        L3_3 = {}
        L4_3 = Lang
        L5_3 = "DISCORD_MENU_CREATE_CHANNEL"
        L4_3 = L4_3(L5_3)
        L3_3.header = L4_3
        L4_3 = {}
        L4_3.event = "qs-smartphone:client:openChannelMenu"
        L3_3.params = L4_3
        L1_3[1] = L2_3
        L1_3[2] = L3_3
        L2_3 = hasHackedPhone
        if L2_3 then
          L2_3 = table
          L2_3 = L2_3.insert
          L3_3 = L1_3
          L4_3 = {}
          L5_3 = Lang
          L6_3 = "DISCORD_MENU_CREATE_SECURED_CHANNEL"
          L5_3 = L5_3(L6_3)
          L4_3.header = L5_3
          L5_3 = {}
          L5_3.event = "qs-smartphone:client:openChannelHackedMenu"
          L4_3.params = L5_3
          L2_3(L3_3, L4_3)
        end
        L2_3 = TriggerEvent
        L3_3 = "et-menu:client:openMenu"
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
      end
      L0_2(L1_2, L2_2)
    end
  end
end
OpenMenuNpc = L0_1
L0_1 = Config
L0_1 = L0_1.Framework
if "ESX" == L0_1 then
  L0_1 = RegisterNetEvent
  L1_1 = "qs-smartphone:client:openChannelMenu"
  function L2_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
    L0_2 = {}
    L1_2 = PhoneData
    L1_2 = L1_2.PlayerData
    L1_2 = L1_2.charinfo
    L1_2 = L1_2.firstname
    L2_2 = " "
    L3_2 = PhoneData
    L3_2 = L3_2.PlayerData
    L3_2 = L3_2.charinfo
    L3_2 = L3_2.lastname
    L1_2 = L1_2 .. L2_2 .. L3_2
    L0_2.room_owner_name = L1_2
    L1_2 = ESX
    L1_2 = L1_2.UI
    L1_2 = L1_2.Menu
    L1_2 = L1_2.Open
    L2_2 = "dialog"
    L3_2 = GetCurrentResourceName
    L3_2 = L3_2()
    L4_2 = "dialog_chat_1"
    L5_2 = {}
    L6_2 = Lang
    L7_2 = "DISCORD_MENU_INSERT_NAME"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L2_3 = A0_3.value
      if L2_3 then
        L2_3 = A0_3.value
        L0_2.room_name = L2_3
        L2_3 = A1_3.close
        L2_3()
        L2_3 = ESX
        L2_3 = L2_3.UI
        L2_3 = L2_3.Menu
        L2_3 = L2_3.Open
        L3_3 = "dialog"
        L4_3 = GetCurrentResourceName
        L4_3 = L4_3()
        L5_3 = "dialog_chat_2"
        L6_3 = {}
        L7_3 = Lang
        L8_3 = "DISCORD_MENU_INSERT_PASSWORD"
        L7_3 = L7_3(L8_3)
        L6_3.title = L7_3
        function L7_3(A0_4, A1_4)
          local L2_4, L3_4, L4_4, L5_4
          L2_4 = A0_4.value
          if L2_4 then
            L2_4 = A0_4.value
            L0_2.room_pin = L2_4
          end
          L2_4 = QSPhone
          L2_4 = L2_4.TriggerServerCallback
          L3_4 = "qs-smartphone:server:PurchaseRoom"
          function L4_4(A0_5)
            local L1_5, L2_5, L3_5, L4_5
            if A0_5 then
              L1_5 = TriggerServerEvent
              L2_5 = "qs-smartphone:server:CreateRoom"
              L3_5 = PhoneData
              L3_5 = L3_5.PlayerData
              L3_5 = L3_5.source
              L4_5 = L0_2
              L1_5(L2_5, L3_5, L4_5)
            end
          end
          L5_4 = 250
          L2_4(L3_4, L4_4, L5_4)
          L2_4 = A1_4.close
          L2_4()
        end
        function L8_3(A0_4, A1_4)
          local L2_4
          L2_4 = A1_4.close
          L2_4()
        end
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      end
    end
    function L7_2(A0_3, A1_3)
      local L2_3
      L2_3 = A1_3.close
      L2_3()
    end
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L0_1(L1_1, L2_1)
else
  L0_1 = Config
  L0_1 = L0_1.Framework
  if "QBCore" == L0_1 then
    L0_1 = RegisterNetEvent
    L1_1 = "qs-smartphone:client:openChannelMenu"
    function L2_1()
      local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
      L0_2 = exports
      L0_2 = L0_2["et-input"]
      L1_2 = L0_2
      L0_2 = L0_2.ShowInput
      L2_2 = {}
      L3_2 = Lang
      L4_2 = "DISCORD_MENU_INPUT_TITLE"
      L3_2 = L3_2(L4_2)
      L2_2.header = L3_2
      L3_2 = Lang
      L4_2 = "DISCORD_MENU_INPUT_SUBMIT"
      L3_2 = L3_2(L4_2)
      L2_2.submitText = L3_2
      L3_2 = Lang
      L4_2 = "DISCORD_MENU_INPUT_INFO"
      L3_2 = L3_2(L4_2)
      L2_2.info = L3_2
      L3_2 = {}
      L4_2 = {}
      L5_2 = Lang
      L6_2 = "DISCORD_MENU_INSERT_NAME"
      L5_2 = L5_2(L6_2)
      L4_2.text = L5_2
      L4_2.name = "channel-name"
      L4_2.type = "text"
      L5_2 = {}
      L6_2 = Lang
      L7_2 = "DISCORD_MENU_INSERT_PASSWORD"
      L6_2 = L6_2(L7_2)
      L5_2.text = L6_2
      L5_2.name = "channel-passcode"
      L5_2.type = "password"
      L6_2 = Lang
      L7_2 = "DISCORD_MENU_INSERT_PASSWORD_PLACEHOLDER"
      L6_2 = L6_2(L7_2)
      L5_2.placeholder = L6_2
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L2_2.inputs = L3_2
      L0_2 = L0_2(L1_2, L2_2)
      if L0_2 then
        L1_2 = {}
        L2_2 = PhoneData
        L2_2 = L2_2.PlayerData
        L2_2 = L2_2.charinfo
        L2_2 = L2_2.firstname
        L3_2 = " "
        L4_2 = PhoneData
        L4_2 = L4_2.PlayerData
        L4_2 = L4_2.charinfo
        L4_2 = L4_2.lastname
        L2_2 = L2_2 .. L3_2 .. L4_2
        L1_2.room_owner_name = L2_2
        L2_2 = false
        L3_2 = pairs
        L4_2 = L0_2
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          if "channel-name" == L7_2 then
            L1_2.room_name = L8_2
            L2_2 = true
          end
          if "channel-passcode" == L7_2 then
            L1_2.room_pin = L8_2
          end
        end
        if L2_2 then
          L3_2 = QSPhone
          L3_2 = L3_2.TriggerServerCallback
          L4_2 = "qs-smartphone:server:PurchaseRoom"
          function L5_2(A0_3)
            local L1_3, L2_3, L3_3, L4_3
            if A0_3 then
              L1_3 = TriggerServerEvent
              L2_3 = "qs-smartphone:server:CreateRoom"
              L3_3 = PhoneData
              L3_3 = L3_3.PlayerData
              L3_3 = L3_3.source
              L4_3 = L1_2
              L1_3(L2_3, L3_3, L4_3)
            end
          end
          L6_2 = 250
          L3_2(L4_2, L5_2, L6_2)
        end
      end
    end
    L0_1(L1_1, L2_1)
  end
end
L0_1 = Config
L0_1 = L0_1.Framework
if "ESX" == L0_1 then
  L0_1 = RegisterNetEvent
  L1_1 = "qs-smartphone:client:openChannelHackedMenu"
  function L2_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
    L0_2 = {}
    L1_2 = PhoneData
    L1_2 = L1_2.PlayerData
    L1_2 = L1_2.charinfo
    L1_2 = L1_2.firstname
    L2_2 = " "
    L3_2 = PhoneData
    L3_2 = L3_2.PlayerData
    L3_2 = L3_2.charinfo
    L3_2 = L3_2.lastname
    L1_2 = L1_2 .. L2_2 .. L3_2
    L0_2.room_owner_name = L1_2
    L1_2 = ESX
    L1_2 = L1_2.UI
    L1_2 = L1_2.Menu
    L1_2 = L1_2.Open
    L2_2 = "dialog"
    L3_2 = GetCurrentResourceName
    L3_2 = L3_2()
    L4_2 = "dialog_secured_1"
    L5_2 = {}
    L6_2 = Lang
    L7_2 = "DISCORD_MENU_INSERT_SECURED_NAME"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L2_3 = A0_3.value
      if L2_3 then
        L2_3 = A0_3.value
        L0_2.room_name = L2_3
        L2_3 = A1_3.close
        L2_3()
        L2_3 = ESX
        L2_3 = L2_3.UI
        L2_3 = L2_3.Menu
        L2_3 = L2_3.Open
        L3_3 = "dialog"
        L4_3 = GetCurrentResourceName
        L4_3 = L4_3()
        L5_3 = "dialog_secured_2"
        L6_3 = {}
        L7_3 = Lang
        L8_3 = "DISCORD_MENU_INSERT_PASSWORD"
        L7_3 = L7_3(L8_3)
        L6_3.title = L7_3
        function L7_3(A0_4, A1_4)
          local L2_4, L3_4, L4_4, L5_4
          L2_4 = A0_4.value
          if L2_4 then
            L2_4 = A0_4.value
            L0_2.room_pin = L2_4
          end
          L2_4 = QSPhone
          L2_4 = L2_4.TriggerServerCallback
          L3_4 = "qs-smartphone:server:PurchaseRoom"
          function L4_4(A0_5)
            local L1_5, L2_5, L3_5, L4_5, L5_5
            if A0_5 then
              L1_5 = TriggerServerEvent
              L2_5 = "qs-smartphone:server:CreateRoom"
              L3_5 = PhoneData
              L3_5 = L3_5.PlayerData
              L3_5 = L3_5.source
              L4_5 = L0_2
              L5_5 = true
              L1_5(L2_5, L3_5, L4_5, L5_5)
            end
          end
          L5_4 = 5000
          L2_4(L3_4, L4_4, L5_4)
          L2_4 = A1_4.close
          L2_4()
        end
        function L8_3(A0_4, A1_4)
          local L2_4
          L2_4 = A1_4.close
          L2_4()
        end
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      end
    end
    function L7_2(A0_3, A1_3)
      local L2_3
      L2_3 = A1_3.close
      L2_3()
    end
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L0_1(L1_1, L2_1)
else
  L0_1 = Config
  L0_1 = L0_1.Framework
  if "QBCore" == L0_1 then
    L0_1 = RegisterNetEvent
    L1_1 = "qs-smartphone:client:openChannelHackedMenu"
    function L2_1()
      local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
      L0_2 = exports
      L0_2 = L0_2["et-input"]
      L1_2 = L0_2
      L0_2 = L0_2.ShowInput
      L2_2 = {}
      L3_2 = Lang
      L4_2 = "DISCORD_MENU_INPUT_SECURED_TITLE"
      L3_2 = L3_2(L4_2)
      L2_2.header = L3_2
      L3_2 = Lang
      L4_2 = "DISCORD_MENU_INPUT_SECURED_SUBMIT"
      L3_2 = L3_2(L4_2)
      L2_2.submitText = L3_2
      L3_2 = Lang
      L4_2 = "DISCORD_MENU_INPUT_SECURED_INFO"
      L3_2 = L3_2(L4_2)
      L2_2.info = L3_2
      L3_2 = {}
      L4_2 = {}
      L5_2 = Lang
      L6_2 = "DISCORD_MENU_INSERT_NAME"
      L5_2 = L5_2(L6_2)
      L4_2.text = L5_2
      L4_2.name = "channel-name"
      L4_2.type = "text"
      L5_2 = {}
      L6_2 = Lang
      L7_2 = "DISCORD_MENU_INSERT_PASSWORD"
      L6_2 = L6_2(L7_2)
      L5_2.text = L6_2
      L5_2.name = "channel-passcode"
      L5_2.type = "password"
      L6_2 = Lang
      L7_2 = "DISCORD_MENU_INSERT_PASSWORD_PLACEHOLDER"
      L6_2 = L6_2(L7_2)
      L5_2.placeholder = L6_2
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L2_2.inputs = L3_2
      L0_2 = L0_2(L1_2, L2_2)
      if L0_2 then
        L1_2 = {}
        L2_2 = PhoneData
        L2_2 = L2_2.PlayerData
        L2_2 = L2_2.charinfo
        L2_2 = L2_2.firstname
        L3_2 = " "
        L4_2 = PhoneData
        L4_2 = L4_2.PlayerData
        L4_2 = L4_2.charinfo
        L4_2 = L4_2.lastname
        L2_2 = L2_2 .. L3_2 .. L4_2
        L1_2.room_owner_name = L2_2
        L2_2 = false
        L3_2 = pairs
        L4_2 = L0_2
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          if "channel-name" == L7_2 then
            L1_2.room_name = L8_2
            L2_2 = true
          end
          if "channel-passcode" == L7_2 then
            L1_2.room_pin = L8_2
          end
        end
        if L2_2 then
          L3_2 = QSPhone
          L3_2 = L3_2.TriggerServerCallback
          L4_2 = "qs-smartphone:server:PurchaseRoom"
          function L5_2(A0_3)
            local L1_3, L2_3, L3_3, L4_3, L5_3
            if A0_3 then
              L1_3 = TriggerServerEvent
              L2_3 = "qs-smartphone:server:CreateRoom"
              L3_3 = PhoneData
              L3_3 = L3_3.PlayerData
              L3_3 = L3_3.source
              L4_3 = L1_2
              L5_3 = true
              L1_3(L2_3, L3_3, L4_3, L5_3)
            end
          end
          L6_2 = 5000
          L3_2(L4_2, L5_2, L6_2)
        end
      end
    end
    L0_1(L1_1, L2_1)
  end
end
--[[L0_1 = {}
L1_1 = "diables_x_quasar_phone_black"
L2_1 = "diables_x_quasar_phone_blue"
L3_1 = "diables_x_quasar_phone_gold"
L4_1 = "diables_x_quasar_phone_green"
L5_1 = "diables_x_quasar_phone_greenlight"
L6_1 = "diables_x_quasar_phone_grey"
L7_1 = "diables_x_quasar_phone_pink"
L8_1 = "diables_x_quasar_phone_purple"
L9_1 = "diables_x_quasar_phone_red"
L10_1 = "diables_x_quasar_phone_white"
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
L1_1 = Citizen
L1_1 = L1_1.CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = IsModelValid
    L7_2 = GetHashKey
    L8_2 = L5_2
    L7_2, L8_2 = L7_2(L8_2)
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L6_2 = TriggerServerEvent
      L7_2 = "qs-smartphone:server:exit"
      L6_2(L7_2)
      break
    end
  end
end
L1_1(L2_1)]]
L1_1 = RegisterNetEvent
L2_1 = "qs-smartphone:client:TriggerPhoneHack"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "qs-smartphone:server:HackPhone"
    L3_2 = PhoneData
    L3_2 = L3_2.PlayerData
    L3_2 = L3_2.source
    L1_2(L2_2, L3_2)
  else
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "QBCore" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Functions
      L1_2 = L1_2.Progressbar
      L2_2 = "hack_gate"
      L3_2 = Lang
      L4_2 = "DISCORD_HACKING_PHONE"
      L3_2 = L3_2(L4_2)
      L4_2 = math
      L4_2 = L4_2.random
      L5_2 = 5000
      L6_2 = 10000
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = false
      L6_2 = true
      L7_2 = {}
      L7_2.disableMovement = false
      L7_2.disableCarMovement = false
      L7_2.disableMouse = false
      L7_2.disableCombat = true
      L8_2 = {}
      L8_2.animDict = "missheistdockssetup1clipboard@base"
      L8_2.anim = "base"
      L9_2 = {}
      L10_2 = {}
      function L11_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = StopAnimTask
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = "missheistdockssetup1clipboard@base"
        L3_3 = "base"
        L4_3 = 1.0
        L0_3(L1_3, L2_3, L3_3, L4_3)
        L0_3 = TriggerServerEvent
        L1_3 = "QBCore:Server:RemoveItem"
        L2_3 = Config
        L2_3 = L2_3.PhoneHackItem
        L3_3 = 1
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = TriggerEvent
        L1_3 = "inventory:client:ItemBox"
        L2_3 = QBCore
        L2_3 = L2_3.Shared
        L2_3 = L2_3.Items
        L3_3 = Config
        L3_3 = L3_3.PhoneHackItem
        L2_3 = L2_3[L3_3]
        L3_3 = "remove"
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = TriggerServerEvent
        L1_3 = "qs-smartphone:server:HackPhone"
        L2_3 = PhoneData
        L2_3 = L2_3.PlayerData
        L2_3 = L2_3.source
        L0_3(L1_3, L2_3)
      end
      function L12_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = StopAnimTask
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = "missheistdockssetup1clipboard@base"
        L3_3 = "base"
        L4_3 = 1.0
        L0_3(L1_3, L2_3, L3_3, L4_3)
      end
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  end
end
L1_1(L2_1, L3_1)
