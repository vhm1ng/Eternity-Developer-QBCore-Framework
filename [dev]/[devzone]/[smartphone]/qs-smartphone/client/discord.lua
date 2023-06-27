local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 and not A1_2 then
    L2_2 = pairs
    L3_2 = PhoneData
    L3_2 = L3_2.ChatRooms
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.id
      if L8_2 == A0_2 then
        return L7_2
      end
    end
  elseif A1_2 and not A0_2 then
    L2_2 = pairs
    L3_2 = PhoneData
    L3_2 = L3_2.ChatRooms
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.room_code
      if L8_2 == A1_2 then
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = pairs
  L3_2 = PhoneData
  L3_2 = L3_2.ChatRooms
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.id
    if L8_2 == A1_2 then
      L8_2 = json
      L8_2 = L8_2.decode
      L9_2 = L7_2.room_members
      L8_2 = L8_2(L9_2)
      memberList = L8_2
      L8_2 = memberList
      if not L8_2 then
        L8_2 = {}
        memberList = L8_2
      end
      L8_2 = next
      L9_2 = memberList
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = pairs
        L9_2 = memberList
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
        for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
          L14_2 = L13_2.cid
          if A0_2 == L14_2 then
            L14_2 = true
            return L14_2
          end
        end
      else
        L8_2 = false
        return L8_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = PhoneData
  L2_2 = L2_2.ChatRooms
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    L8_2 = tonumber
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      return L6_2
    end
  end
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = string
  L1_2 = L1_2.lower
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = " "
  L4_2 = "-"
  return L1_2(L2_2, L3_2, L4_2)
end
L4_1 = RegisterNetEvent
L5_1 = "qs-smartphone:client:RefreshChatRooms"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PhoneData
  L1_2.ChatRooms = A0_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "RefreshChatRooms"
  L3_2 = PhoneData
  L3_2 = L3_2.ChatRooms
  L2_2.Rooms = L3_2
  L1_2(L2_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "qs-smartphone:client:RefreshGroupChat"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "RefreshGroupChat"
  L3_2.messageData = A1_2
  L2_2(L3_2)
  L2_2 = PhoneData
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.source
  if A0_2 ~= L2_2 then
    L3_2 = L1_1
    L4_2 = PhoneData
    L4_2 = L4_2.PlayerData
    L4_2 = L4_2.citizenid
    L5_2 = A1_2.room_id
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = discord_notifications
      if L3_2 then
        L3_2 = SendNUIMessage
        L4_2 = {}
        L4_2.action = "PhoneNotification"
        L5_2 = {}
        L6_2 = Lang
        L7_2 = "DISCORD_TITLE"
        L6_2 = L6_2(L7_2)
        L5_2.title = L6_2
        L6_2 = A1_2.message
        L5_2.text = L6_2
        L5_2.icon = "./img/apps/discord.png"
        L5_2.timeout = 5500
        L4_2.PhoneNotify = L5_2
        L3_2(L4_2)
      end
    end
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "GetGroupChatMessages"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = PhoneData
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.citizenid
  L3_2 = pairs
  L4_2 = PhoneData
  L4_2 = L4_2.ChatRooms
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.id
    L10_2 = A0_2.roomID
    if L9_2 == L10_2 then
      L9_2 = json
      L9_2 = L9_2.decode
      L10_2 = L8_2.room_members
      L9_2 = L9_2(L10_2)
      memberList = L9_2
      L9_2 = memberList
      if not L9_2 then
        L9_2 = {}
        memberList = L9_2
      end
      L9_2 = L8_2.room_pin
      if not L9_2 then
        L9_2 = QSPhone
        L9_2 = L9_2.TriggerServerCallback
        L10_2 = "qs-smartphone:server:GetGroupChatMessages"
        function L11_2(A0_3)
          local L1_3, L2_3
          L1_3 = A1_2
          L2_3 = A0_3
          L1_3(L2_3)
        end
        L12_2 = A0_2.roomID
        L9_2(L10_2, L11_2, L12_2)
      else
        L9_2 = next
        L10_2 = memberList
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L9_2 = pairs
          L10_2 = memberList
          L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
          for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
            L15_2 = L14_2.cid
            if L2_2 ~= L15_2 then
              L15_2 = L8_2.room_owner_id
              if L2_2 ~= L15_2 then
                goto lbl_56
              end
            end
            L15_2 = QSPhone
            L15_2 = L15_2.TriggerServerCallback
            L16_2 = "qs-smartphone:server:GetGroupChatMessages"
            function L17_2(A0_3)
              local L1_3, L2_3
              L1_3 = A1_2
              L2_3 = A0_3
              L1_3(L2_3)
            end
            L18_2 = A0_2.roomID
            L15_2(L16_2, L17_2, L18_2)
            do break end
            ::lbl_56::
          end
        else
          L9_2 = L8_2.room_owner_id
          if L2_2 == L9_2 then
            L9_2 = QSPhone
            L9_2 = L9_2.TriggerServerCallback
            L10_2 = "qs-smartphone:server:GetGroupChatMessages"
            function L11_2(A0_3)
              local L1_3, L2_3
              L1_3 = A1_2
              L2_3 = A0_3
              L1_3(L2_3)
            end
            L12_2 = A0_2.roomID
            L9_2(L10_2, L11_2, L12_2)
          end
        end
      end
    end
  end
end
L4_1(L5_1, L6_1)
--[[L4_1 = {}
L5_1 = "diables_x_quasar_phone_black"
L6_1 = "diables_x_quasar_phone_blue"
L7_1 = "diables_x_quasar_phone_gold"
L8_1 = "diables_x_quasar_phone_green"
L9_1 = "diables_x_quasar_phone_greenlight"
L10_1 = "diables_x_quasar_phone_grey"
L11_1 = "diables_x_quasar_phone_pink"
L12_1 = "diables_x_quasar_phone_purple"
L13_1 = "diables_x_quasar_phone_red"
L14_1 = "diables_x_quasar_phone_white"
L4_1[1] = L5_1
L4_1[2] = L6_1
L4_1[3] = L7_1
L4_1[4] = L8_1
L4_1[5] = L9_1
L4_1[6] = L10_1
L4_1[7] = L11_1
L4_1[8] = L12_1
L4_1[9] = L13_1
L4_1[10] = L14_1
L5_1 = Citizen
L5_1 = L5_1.CreateThread
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = pairs
  L1_2 = L4_1
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
L5_1(L6_1)]]
L5_1 = RegisterNUICallback
L6_1 = "SearchGroupChatMessages"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = PhoneData
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.citizenid
  L3_2 = A0_2.roomID
  L4_2 = A0_2.searchTerm
  L5_2 = pairs
  L6_2 = PhoneData
  L6_2 = L6_2.ChatRooms
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.id
    if L11_2 == L3_2 then
      L11_2 = json
      L11_2 = L11_2.decode
      L12_2 = L10_2.room_members
      L11_2 = L11_2(L12_2)
      memberList = L11_2
      L11_2 = memberList
      if not L11_2 then
        L11_2 = {}
        memberList = L11_2
      end
      L11_2 = next
      L12_2 = memberList
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = pairs
        L12_2 = memberList
        L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
        for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
          L17_2 = L16_2.cid
          if L2_2 ~= L17_2 then
            L17_2 = L10_2.room_owner_id
            if L2_2 ~= L17_2 then
              goto lbl_48
            end
          end
          L17_2 = QSPhone
          L17_2 = L17_2.TriggerServerCallback
          L18_2 = "qs-smartphone:server:SearchGroupChatMessages"
          function L19_2(A0_3)
            local L1_3, L2_3
            L1_3 = A1_2
            L2_3 = A0_3
            L1_3(L2_3)
          end
          L20_2 = L3_2
          L21_2 = L4_2
          L17_2(L18_2, L19_2, L20_2, L21_2)
          do break end
          ::lbl_48::
        end
      else
        L11_2 = L10_2.room_owner_id
        if L2_2 == L11_2 then
          L11_2 = QSPhone
          L11_2 = L11_2.TriggerServerCallback
          L12_2 = "qs-smartphone:server:SearchGroupChatMessages"
          function L13_2(A0_3)
            local L1_3, L2_3
            L1_3 = A1_2
            L2_3 = A0_3
            L1_3(L2_3)
          end
          L14_2 = L3_2
          L15_2 = L4_2
          L11_2(L12_2, L13_2, L14_2, L15_2)
        end
      end
    end
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNUICallback
L6_1 = "GetPinnedMessages"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = PhoneData
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.citizenid
  L3_2 = A0_2.roomID
  L4_2 = pairs
  L5_2 = PhoneData
  L5_2 = L5_2.ChatRooms
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.id
    if L10_2 == L3_2 then
      L10_2 = json
      L10_2 = L10_2.decode
      L11_2 = L9_2.room_members
      L10_2 = L10_2(L11_2)
      memberList = L10_2
      L10_2 = memberList
      if not L10_2 then
        L10_2 = {}
        memberList = L10_2
      end
      L10_2 = next
      L11_2 = memberList
      L10_2 = L10_2(L11_2)
      if L10_2 then
        L10_2 = pairs
        L11_2 = memberList
        L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
        for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
          L16_2 = L15_2.cid
          if L2_2 ~= L16_2 then
            L16_2 = L9_2.room_owner_id
            if L2_2 ~= L16_2 then
              break
            end
          end
          L16_2 = QSPhone
          L16_2 = L16_2.TriggerServerCallback
          L17_2 = "qs-smartphone:server:GetPinnedMessages"
          function L18_2(A0_3)
            local L1_3, L2_3
            L1_3 = A1_2
            L2_3 = A0_3
            L1_3(L2_3)
          end
          L19_2 = L3_2
          L16_2(L17_2, L18_2, L19_2)
          break
        end
      else
        L10_2 = L9_2.room_owner_id
        if L2_2 == L10_2 then
          L10_2 = QSPhone
          L10_2 = L10_2.TriggerServerCallback
          L11_2 = "qs-smartphone:server:GetPinnedMessages"
          function L12_2(A0_3)
            local L1_3, L2_3
            L1_3 = A1_2
            L2_3 = A0_3
            L1_3(L2_3)
          end
          L13_2 = L3_2
          L10_2(L11_2, L12_2, L13_2)
        end
      end
    end
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNUICallback
L6_1 = "SendGroupChatMessage"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = PhoneData
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.citizenid
  L3_2 = {}
  L4_2 = PhoneData
  L4_2 = L4_2.PlayerData
  L4_2 = L4_2.charinfo
  L4_2 = L4_2.firstname
  L5_2 = " "
  L6_2 = PhoneData
  L6_2 = L6_2.PlayerData
  L6_2 = L6_2.charinfo
  L6_2 = L6_2.lastname
  L4_2 = L4_2 .. L5_2 .. L6_2
  L3_2.memberName = L4_2
  L4_2 = A0_2.message
  L3_2.message = L4_2
  L4_2 = A0_2.roomID
  L3_2.room_id = L4_2
  L4_2 = pairs
  L5_2 = PhoneData
  L5_2 = L5_2.ChatRooms
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.id
    L11_2 = L3_2.room_id
    if L10_2 == L11_2 then
      L10_2 = json
      L10_2 = L10_2.decode
      L11_2 = L9_2.room_members
      L10_2 = L10_2(L11_2)
      memberList = L10_2
      L10_2 = memberList
      if not L10_2 then
        L10_2 = {}
        memberList = L10_2
      end
      L10_2 = next
      L11_2 = memberList
      L10_2 = L10_2(L11_2)
      if L10_2 then
        L10_2 = pairs
        L11_2 = memberList
        L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
        for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
          L16_2 = L15_2.cid
          if L2_2 ~= L16_2 then
            L16_2 = L9_2.room_owner_id
            if L2_2 ~= L16_2 then
              goto lbl_66
            end
          end
          L16_2 = TriggerServerEvent
          L17_2 = "qs-smartphone:server:SendGroupChatMessage"
          L18_2 = L3_2
          L19_2 = nil
          L20_2 = A0_2.roomID
          L16_2(L17_2, L18_2, L19_2, L20_2)
          L16_2 = A1_2
          L17_2 = true
          L16_2(L17_2)
          do break end
          ::lbl_66::
        end
      else
        L10_2 = L9_2.room_owner_id
        if L2_2 == L10_2 then
          L10_2 = TriggerServerEvent
          L11_2 = "qs-smartphone:server:SendGroupChatMessage"
          L12_2 = L3_2
          L13_2 = nil
          L14_2 = A0_2.roomID
          L10_2(L11_2, L12_2, L13_2, L14_2)
          L10_2 = A1_2
          L11_2 = true
          L10_2(L11_2)
        end
      end
    end
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNUICallback
L6_1 = "JoinGroupChat"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A0_2.roomID
  L3_2 = A0_2.roomPin
  L4_2 = PhoneData
  L4_2 = L4_2.PlayerData
  L4_2 = L4_2.citizenid
  L5_2 = L0_1
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = nil
  L7_2 = nil
  L8_2 = PhoneData
  L8_2 = L8_2.PlayerData
  L8_2 = L8_2.charinfo
  L8_2 = L8_2.firstname
  L9_2 = " "
  L10_2 = PhoneData
  L10_2 = L10_2.PlayerData
  L10_2 = L10_2.charinfo
  L10_2 = L10_2.lastname
  L8_2 = L8_2 .. L9_2 .. L10_2
  if not L5_2 then
    L9_2 = A1_2
    L10_2 = false
    L9_2(L10_2)
  else
    L9_2 = L1_1
    L10_2 = L4_2
    L11_2 = L2_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L9_2 = A1_2
      L10_2 = false
      L9_2(L10_2)
    elseif L3_2 then
      L9_2 = QSPhone
      L9_2 = L9_2.TriggerServerCallback
      L10_2 = "qs-smartphone:server:TryPinCode"
      function L11_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
        if A0_3 then
          L1_3 = json
          L1_3 = L1_3.decode
          L2_3 = L5_2.room_members
          L1_3 = L1_3(L2_3)
          L6_2 = L1_3
          L1_3 = L6_2
          if not L1_3 then
            L1_3 = {}
            L6_2 = L1_3
          end
          L1_3 = next
          L2_3 = L6_2
          L1_3 = L1_3(L2_3)
          if L1_3 then
            L1_3 = {}
            L7_2 = L1_3
            L2_3 = L4_2
            L1_3 = L7_2
            L3_3 = {}
            L4_3 = PhoneData
            L4_3 = L4_3.PlayerData
            L4_3 = L4_3.citizenid
            L3_3.cid = L4_3
            L4_3 = PhoneData
            L4_3 = L4_3.PlayerData
            L4_3 = L4_3.charinfo
            L4_3 = L4_3.firstname
            L5_3 = " "
            L6_3 = PhoneData
            L6_3 = L6_3.PlayerData
            L6_3 = L6_3.charinfo
            L6_3 = L6_3.lastname
            L4_3 = L4_3 .. L5_3 .. L6_3
            L3_3.name = L4_3
            L3_3.notify = true
            L1_3[L2_3] = L3_3
            L1_3 = pairs
            L2_3 = L7_2
            L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
            for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
              L7_3 = L6_2
              L7_3[L5_3] = L6_3
            end
            L1_3 = pairs
            L2_3 = PhoneData
            L2_3 = L2_3.ChatRooms
            L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
            for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
              L7_3 = L6_3.id
              L8_3 = L2_2
              if L7_3 == L8_3 then
                L7_3 = PhoneData
                L7_3 = L7_3.ChatRooms
                L7_3 = L7_3[L5_3]
                L8_3 = json
                L8_3 = L8_3.encode
                L9_3 = L6_2
                L8_3 = L8_3(L9_3)
                L7_3.room_members = L8_3
                break
              end
            end
            L1_3 = QSPhone
            L1_3 = L1_3.TriggerServerCallback
            L2_3 = "qs-smartphone:server:JoinGroupChat"
            function L3_3(A0_4)
              local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
              if A0_4 then
                L1_4 = TriggerServerEvent
                L2_4 = "qs-smartphone:server:SendGroupChatMessage"
                L3_4 = nil
                L4_4 = {}
                L5_4 = L2_2
                L4_4.room_id = L5_4
                L4_4.messageType = "SYSTEM"
                L5_4 = L8_2
                L6_4 = " "
                L7_4 = Lang
                L8_4 = "DISCORD_PLAYER_JOINED"
                L7_4 = L7_4(L8_4)
                L5_4 = L5_4 .. L6_4 .. L7_4
                L4_4.message = L5_4
                L5_4 = A0_2.roomID
                L4_4.roomID = L5_4
                L5_4 = Lang
                L6_4 = "DISCORD_ACTIVITY"
                L5_4 = L5_4(L6_4)
                L4_4.name = L5_4
                L1_4(L2_4, L3_4, L4_4)
                L1_4 = A1_2
                L2_4 = true
                L1_4(L2_4)
              end
            end
            L4_3 = PhoneData
            L4_3 = L4_3.ChatRooms
            L5_3 = L2_2
            L1_3(L2_3, L3_3, L4_3, L5_3)
          else
            L1_3 = {}
            L7_2 = L1_3
            L2_3 = L4_2
            L1_3 = L7_2
            L3_3 = {}
            L4_3 = PhoneData
            L4_3 = L4_3.PlayerData
            L4_3 = L4_3.citizenid
            L3_3.cid = L4_3
            L4_3 = PhoneData
            L4_3 = L4_3.PlayerData
            L4_3 = L4_3.charinfo
            L4_3 = L4_3.firstname
            L5_3 = " "
            L6_3 = PhoneData
            L6_3 = L6_3.PlayerData
            L6_3 = L6_3.charinfo
            L6_3 = L6_3.lastname
            L4_3 = L4_3 .. L5_3 .. L6_3
            L3_3.name = L4_3
            L3_3.notify = true
            L1_3[L2_3] = L3_3
            L1_3 = pairs
            L2_3 = PhoneData
            L2_3 = L2_3.ChatRooms
            L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
            for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
              L7_3 = L6_3.id
              L8_3 = L2_2
              if L7_3 == L8_3 then
                L7_3 = PhoneData
                L7_3 = L7_3.ChatRooms
                L7_3 = L7_3[L5_3]
                L8_3 = json
                L8_3 = L8_3.encode
                L9_3 = L7_2
                L8_3 = L8_3(L9_3)
                L7_3.room_members = L8_3
                break
              end
            end
            L1_3 = QSPhone
            L1_3 = L1_3.TriggerServerCallback
            L2_3 = "qs-smartphone:server:JoinGroupChat"
            function L3_3(A0_4)
              local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
              if A0_4 then
                L1_4 = TriggerServerEvent
                L2_4 = "qs-smartphone:server:SendGroupChatMessage"
                L3_4 = nil
                L4_4 = {}
                L5_4 = L2_2
                L4_4.room_id = L5_4
                L4_4.messageType = "SYSTEM"
                L5_4 = L8_2
                L6_4 = " "
                L7_4 = Lang
                L8_4 = "DISCORD_PLAYER_JOINED"
                L7_4 = L7_4(L8_4)
                L5_4 = L5_4 .. L6_4 .. L7_4
                L4_4.message = L5_4
                L5_4 = A0_2.roomID
                L4_4.roomID = L5_4
                L5_4 = Lang
                L6_4 = "DISCORD_ACTIVITY"
                L5_4 = L5_4(L6_4)
                L4_4.name = L5_4
                L1_4(L2_4, L3_4, L4_4)
                L1_4 = A1_2
                L2_4 = true
                L1_4(L2_4)
              end
            end
            L4_3 = PhoneData
            L4_3 = L4_3.ChatRooms
            L5_3 = L2_2
            L1_3(L2_3, L3_3, L4_3, L5_3)
          end
        else
          L1_3 = A1_2
          L2_3 = false
          L1_3(L2_3)
        end
      end
      L12_2 = L3_2
      L13_2 = L2_2
      L9_2(L10_2, L11_2, L12_2, L13_2)
    else
      L9_2 = json
      L9_2 = L9_2.decode
      L10_2 = L5_2.room_members
      L9_2 = L9_2(L10_2)
      L6_2 = L9_2
      if not L6_2 then
        L9_2 = {}
        L6_2 = L9_2
      end
      L9_2 = next
      L10_2 = L6_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L9_2 = {}
        L7_2 = L9_2
        L9_2 = {}
        L10_2 = PhoneData
        L10_2 = L10_2.PlayerData
        L10_2 = L10_2.citizenid
        L9_2.cid = L10_2
        L10_2 = PhoneData
        L10_2 = L10_2.PlayerData
        L10_2 = L10_2.charinfo
        L10_2 = L10_2.firstname
        L11_2 = " "
        L12_2 = PhoneData
        L12_2 = L12_2.PlayerData
        L12_2 = L12_2.charinfo
        L12_2 = L12_2.lastname
        L10_2 = L10_2 .. L11_2 .. L12_2
        L9_2.name = L10_2
        L9_2.notify = true
        L7_2[L4_2] = L9_2
        L9_2 = pairs
        L10_2 = L7_2
        L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
        for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
          L6_2[L13_2] = L14_2
        end
        L9_2 = pairs
        L10_2 = PhoneData
        L10_2 = L10_2.ChatRooms
        L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
        for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
          L15_2 = L14_2.id
          if L15_2 == L2_2 then
            L15_2 = PhoneData
            L15_2 = L15_2.ChatRooms
            L15_2 = L15_2[L13_2]
            L16_2 = json
            L16_2 = L16_2.encode
            L17_2 = L6_2
            L16_2 = L16_2(L17_2)
            L15_2.room_members = L16_2
            break
          end
        end
        L9_2 = QSPhone
        L9_2 = L9_2.TriggerServerCallback
        L10_2 = "qs-smartphone:server:JoinGroupChat"
        function L11_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
          if A0_3 then
            L1_3 = TriggerServerEvent
            L2_3 = "qs-smartphone:server:SendGroupChatMessage"
            L3_3 = nil
            L4_3 = {}
            L5_3 = L2_2
            L4_3.room_id = L5_3
            L4_3.messageType = "SYSTEM"
            L5_3 = L8_2
            L6_3 = " "
            L7_3 = Lang
            L8_3 = "DISCORD_PLAYER_JOINED"
            L7_3 = L7_3(L8_3)
            L5_3 = L5_3 .. L6_3 .. L7_3
            L4_3.message = L5_3
            L5_3 = A0_2.roomID
            L4_3.roomID = L5_3
            L5_3 = Lang
            L6_3 = "DISCORD_ACTIVITY"
            L5_3 = L5_3(L6_3)
            L4_3.name = L5_3
            L1_3(L2_3, L3_3, L4_3)
            L1_3 = A1_2
            L2_3 = true
            L1_3(L2_3)
          end
        end
        L12_2 = PhoneData
        L12_2 = L12_2.ChatRooms
        L13_2 = L2_2
        L9_2(L10_2, L11_2, L12_2, L13_2)
      else
        L9_2 = {}
        L7_2 = L9_2
        L9_2 = {}
        L10_2 = PhoneData
        L10_2 = L10_2.PlayerData
        L10_2 = L10_2.citizenid
        L9_2.cid = L10_2
        L10_2 = PhoneData
        L10_2 = L10_2.PlayerData
        L10_2 = L10_2.charinfo
        L10_2 = L10_2.firstname
        L11_2 = " "
        L12_2 = PhoneData
        L12_2 = L12_2.PlayerData
        L12_2 = L12_2.charinfo
        L12_2 = L12_2.lastname
        L10_2 = L10_2 .. L11_2 .. L12_2
        L9_2.name = L10_2
        L9_2.notify = true
        L7_2[L4_2] = L9_2
        L9_2 = pairs
        L10_2 = PhoneData
        L10_2 = L10_2.ChatRooms
        L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
        for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
          L15_2 = L14_2.id
          if L15_2 == L2_2 then
            L15_2 = PhoneData
            L15_2 = L15_2.ChatRooms
            L15_2 = L15_2[L13_2]
            L16_2 = json
            L16_2 = L16_2.encode
            L17_2 = L7_2
            L16_2 = L16_2(L17_2)
            L15_2.room_members = L16_2
            break
          end
        end
        L9_2 = QSPhone
        L9_2 = L9_2.TriggerServerCallback
        L10_2 = "qs-smartphone:server:JoinGroupChat"
        function L11_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
          if A0_3 then
            L1_3 = TriggerServerEvent
            L2_3 = "qs-smartphone:server:SendGroupChatMessage"
            L3_3 = nil
            L4_3 = {}
            L5_3 = L2_2
            L4_3.room_id = L5_3
            L4_3.messageType = "SYSTEM"
            L5_3 = L8_2
            L6_3 = " "
            L7_3 = Lang
            L8_3 = "DISCORD_PLAYER_JOINED"
            L7_3 = L7_3(L8_3)
            L5_3 = L5_3 .. L6_3 .. L7_3
            L4_3.message = L5_3
            L5_3 = A0_2.roomID
            L4_3.roomID = L5_3
            L5_3 = Lang
            L6_3 = "DISCORD_ACTIVITY"
            L5_3 = L5_3(L6_3)
            L4_3.name = L5_3
            L1_3(L2_3, L3_3, L4_3)
            L1_3 = A1_2
            L2_3 = true
            L1_3(L2_3)
          end
        end
        L12_2 = PhoneData
        L12_2 = L12_2.ChatRooms
        L13_2 = L2_2
        L9_2(L10_2, L11_2, L12_2, L13_2)
      end
    end
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNUICallback
L6_1 = "LeaveGroupChat"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = tonumber
  L3_2 = A0_2.roomID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.citizenid
  if not L3_2 then
    L3_2 = PhoneData
    L3_2 = L3_2.PlayerData
    L3_2 = L3_2.citizenid
  end
  L4_2 = L0_1
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = nil
  L6_2 = nil
  if not L4_2 then
    L7_2 = A1_2
    L8_2 = false
    L7_2(L8_2)
  else
    L7_2 = L1_1
    L8_2 = L3_2
    L9_2 = L2_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = json
      L7_2 = L7_2.decode
      L8_2 = L4_2.room_members
      L7_2 = L7_2(L8_2)
      L5_2 = L7_2
      if not L5_2 then
        L7_2 = {}
        L5_2 = L7_2
      end
      L7_2 = pairs
      L8_2 = L5_2
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = A0_2.citizenid
        if L11_2 == L13_2 then
          L6_2 = L12_2.name
          L5_2[L11_2] = nil
        end
      end
      L7_2 = pairs
      L8_2 = PhoneData
      L8_2 = L8_2.ChatRooms
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = L12_2.id
        if L13_2 == L2_2 then
          L13_2 = PhoneData
          L13_2 = L13_2.ChatRooms
          L13_2 = L13_2[L11_2]
          L14_2 = json
          L14_2 = L14_2.encode
          L15_2 = L5_2
          L14_2 = L14_2(L15_2)
          L13_2.room_members = L14_2
          break
        end
      end
      L7_2 = TriggerServerEvent
      L8_2 = "qs-smartphone:server:SendGroupChatMessage"
      L9_2 = nil
      L10_2 = {}
      L10_2.room_id = L2_2
      L10_2.messageType = "SYSTEM"
      L11_2 = L6_2
      L12_2 = " "
      L13_2 = Lang
      L14_2 = "DISCORD_PLAYER_EXIT"
      L13_2 = L13_2(L14_2)
      L11_2 = L11_2 .. L12_2 .. L13_2
      L10_2.message = L11_2
      L11_2 = A0_2.roomID
      L10_2.roomID = L11_2
      L11_2 = Lang
      L12_2 = "DISCORD_ACTIVITY"
      L11_2 = L11_2(L12_2)
      L10_2.name = L11_2
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = TriggerServerEvent
      L8_2 = "qs-smartphone:server:LeaveGroupChat"
      L9_2 = PhoneData
      L9_2 = L9_2.ChatRooms
      L10_2 = L2_2
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = A1_2
      L8_2 = true
      L7_2(L8_2)
    else
      L7_2 = A1_2
      L8_2 = false
      L7_2(L8_2)
    end
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNUICallback
L6_1 = "ChangeRoomPin"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.roomID
  L3_2 = PhoneData
  L3_2 = L3_2.PlayerData
  L3_2 = L3_2.citizenid
  L4_2 = L0_1
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2.pinCode
  if not L4_2 then
    L6_2 = A1_2
    L7_2 = false
    L6_2(L7_2)
  elseif L5_2 then
    L6_2 = QSPhone
    L6_2 = L6_2.TriggerServerCallback
    L7_2 = "qs-smartphone:server:IsRoomOwner"
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      if A0_3 then
        L1_3 = pairs
        L2_3 = PhoneData
        L2_3 = L2_3.ChatRooms
        L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
        for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
          L7_3 = L6_3.id
          L8_3 = L2_2
          if L7_3 == L8_3 then
            L7_3 = L5_2
            if "" == L7_3 then
              L7_3 = PhoneData
              L7_3 = L7_3.ChatRooms
              L7_3 = L7_3[L5_3]
              L7_3.protected = false
              break
            end
            L7_3 = PhoneData
            L7_3 = L7_3.ChatRooms
            L7_3 = L7_3[L5_3]
            L7_3.protected = true
            break
          end
        end
        L1_3 = TriggerServerEvent
        L2_3 = "qs-smartphone:server:ChangeRoomPin"
        L3_3 = PhoneData
        L3_3 = L3_3.ChatRooms
        L4_3 = L2_2
        L5_3 = L5_2
        L1_3(L2_3, L3_3, L4_3, L5_3)
        L1_3 = A1_2
        L2_3 = true
        L1_3(L2_3)
      else
        L1_3 = A1_2
        L2_3 = false
        L1_3(L2_3)
      end
    end
    L9_2 = L2_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNUICallback
L6_1 = "GetChatRooms"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = PhoneData
  L3_2 = L3_2.ChatRooms
  L2_2(L3_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNUICallback
L6_1 = "DeactivateRoom"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = pairs
  L3_2 = PhoneData
  L3_2 = L3_2.ChatRooms
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.id
    L9_2 = A0_2.roomID
    if L8_2 == L9_2 then
      L8_2 = QSPhone
      L8_2 = L8_2.TriggerServerCallback
      L9_2 = "qs-smartphone:server:IsRoomOwner"
      function L10_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
        if A0_3 then
          L1_3 = pairs
          L2_3 = PhoneData
          L2_3 = L2_3.ChatRooms
          L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
          for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
            L7_3 = L6_3.id
            L8_3 = A0_2.roomID
            if L7_3 == L8_3 then
              L7_3 = PhoneData
              L7_3 = L7_3.ChatRooms
              L7_3[L5_3] = nil
              break
            end
          end
          L1_3 = TriggerServerEvent
          L2_3 = "qs-smartphone:server:DeactivateRoom"
          L3_3 = PhoneData
          L3_3 = L3_3.ChatRooms
          L4_3 = A0_2.roomID
          L1_3(L2_3, L3_3, L4_3)
          L1_3 = A1_2
          L2_3 = true
          L1_3(L2_3)
        else
          L1_3 = A1_2
          L2_3 = false
          L1_3(L2_3)
        end
      end
      L11_2 = A0_2.roomID
      L8_2(L9_2, L10_2, L11_2)
      break
    end
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNUICallback
L6_1 = "ToggleMessagePin"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = tonumber
  L3_2 = A0_2.roomID
  L2_2 = L2_2(L3_2)
  L3_2 = tonumber
  L4_2 = A0_2.messageID
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = PhoneData
  L5_2 = L5_2.ChatRooms
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.id
    if L10_2 == L2_2 then
      L10_2 = QSPhone
      L10_2 = L10_2.TriggerServerCallback
      L11_2 = "qs-smartphone:server:IsRoomOwner"
      function L12_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3
        if A0_3 then
          L1_3 = TriggerServerEvent
          L2_3 = "qs-smartphone:server:ToggleMessagePin"
          L3_3 = L3_2
          L4_3 = L2_2
          L1_3(L2_3, L3_3, L4_3)
          L1_3 = A1_2
          L2_3 = true
          L1_3(L2_3)
        else
          L1_3 = A1_2
          L2_3 = false
          L1_3(L2_3)
        end
      end
      L13_2 = A0_2.roomID
      L10_2(L11_2, L12_2, L13_2)
      break
    end
  end
end
L5_1(L6_1, L7_1)
