local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
ChatRooms = {}
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = string
  L0_2 = L0_2.upper
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1
  L3_2 = 26
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L0_1
  L1_2 = L2_2[L1_2]
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = 26
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L0_1
  L2_2 = L3_2[L2_2]
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 1
  L5_2 = 9
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = 1
  L6_2 = 9
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = math
  L5_2 = L5_2.random
  L6_2 = 1
  L7_2 = 26
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L0_1
  L5_2 = L6_2[L5_2]
  L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2 .. L5_2
  return L0_2(L1_2)
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 and not A1_2 then
    L2_2 = pairs
    L3_2 = ChatRooms
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.id
      if L8_2 == A0_2 then
        return L7_2
      end
    end
  elseif A1_2 and not A0_2 then
    L2_2 = pairs
    L3_2 = ChatRooms
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
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = pairs
  L3_2 = ChatRooms
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
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = ChatRooms
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.id
    if L8_2 == A1_2 then
      L8_2 = L7_2.room_owner_id
      if A0_2 == L8_2 then
        L8_2 = true
        return L8_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = ChatRooms
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    if L7_2 == A0_2 then
      L7_2 = L6_2.is_masked
      if L7_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L1_2 = false
  return L1_2
end
L6_1 = nil
L7_1 = Config
L7_1 = L7_1.Framework
if "ESX" == L7_1 then
  L7_1 = TriggerEvent
  L8_1 = "qs-core:getSharedObject"
  function L9_1(A0_2)
    local L1_2
    L6_1 = A0_2
  end
  L7_1(L8_1, L9_1)
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = source
    L2_2 = L6_1.GetPlayerFromId
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = false
    L4_2 = pairs
    L5_2 = Config
    L5_2 = L5_2.PhonesProps
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L2_2.GetItemByName
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      if L10_2 then
        L11_2 = L10_2.amount
        if L11_2 > 0 then
          L11_2 = L10_2.info
          if L11_2 then
            L11_2 = L10_2.info
            L11_2 = L11_2.hacked
            if L11_2 then
              L3_2 = true
              break
            end
          end
        end
      end
    end
    return L3_2
  else
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "QBCore" == L1_2 then
      L1_2 = source
      L2_2 = GetPlayerFromIdFramework
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = false
      L4_2 = pairs
      L5_2 = Config
      L5_2 = L5_2.PhonesProps
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = L2_2.Functions
        L10_2 = L10_2.GetItemByName
        L11_2 = L8_2
        L10_2 = L10_2(L11_2)
        if L10_2 then
          L11_2 = L10_2.amount
          if L11_2 > 0 then
            L11_2 = L10_2.info
            if L11_2 then
              L11_2 = L10_2.info
              L11_2 = L11_2.hacked
              if L11_2 then
                L3_2 = true
                break
              end
            end
          end
        end
      end
      return L3_2
    end
  end
end
L8_1 = QSPhone
L8_1 = L8_1.RegisterServerCallback
L9_1 = "qs-smartphone:server:GetGroupChatMessages"
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2
  L4_2 = GetPlayerFromIdFramework
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = true
  L6_2 = L5_1
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = L7_1
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L5_2 = false
      L6_2 = TriggerClientEvent
      L7_2 = "qs-smartphone:client:notify"
      L8_2 = L3_2
      L9_2 = {}
      L10_2 = Lang
      L11_2 = "DISCORD_TITLE"
      L10_2 = L10_2(L11_2)
      L9_2.title = L10_2
      L10_2 = Lang
      L11_2 = "DISCORD_PHONE_NOT_SECURE"
      L10_2 = L10_2(L11_2)
      L9_2.text = L10_2
      L9_2.icon = "./img/apps/discord.png"
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = A1_2
      L7_2 = false
      L6_2(L7_2)
    end
  end
  if L5_2 then
    L6_2 = MySQL
    L6_2 = L6_2.Sync
    L6_2 = L6_2.fetchAll
    L7_2 = "SELECT * FROM phone_chatroom_messages WHERE room_id=@roomID ORDER BY created DESC LIMIT 40"
    L8_2 = {}
    L8_2["@roomID"] = A2_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2[1]
    if L7_2 then
      L7_2 = A1_2
      L8_2 = L6_2
      L7_2(L8_2)
    else
      L7_2 = A1_2
      L8_2 = false
      L7_2(L8_2)
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = QSPhone
L8_1 = L8_1.RegisterServerCallback
L9_1 = "qs-smartphone:server:SearchGroupChatMessages"
function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A0_2
  L5_2 = GetPlayerFromIdFramework
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = escape_sqli
  L7_2 = A3_2
  L6_2 = L6_2(L7_2)
  L7_2 = true
  L8_2 = L4_1
  L9_2 = L5_2.identifier
  L10_2 = A2_2
  L8_2 = L8_2(L9_2, L10_2)
  if not L8_2 then
    L8_2 = L3_1
    L9_2 = L5_2.identifier
    L10_2 = A2_2
    L8_2 = L8_2(L9_2, L10_2)
    if not L8_2 then
      L8_2 = TriggerClientEvent
      L9_2 = "qs-smartphone:client:notify"
      L10_2 = L4_2
      L11_2 = {}
      L12_2 = Lang
      L13_2 = "DISCORD_TITLE"
      L12_2 = L12_2(L13_2)
      L11_2.title = L12_2
      L12_2 = Lang
      L13_2 = "DISCORD_NEED_ENTER_ROOM"
      L12_2 = L12_2(L13_2)
      L11_2.text = L12_2
      L11_2.icon = "./img/apps/discord.png"
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = A1_2
      L9_2 = false
      L8_2(L9_2)
    end
  end
  L8_2 = L5_1
  L9_2 = A2_2
  L8_2 = L8_2(L9_2)
  if L8_2 then
    L8_2 = L7_1
    L9_2 = L5_2
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      L7_2 = false
      L8_2 = TriggerClientEvent
      L9_2 = "qs-smartphone:client:notify"
      L10_2 = L4_2
      L11_2 = {}
      L12_2 = Lang
      L13_2 = "DISCORD_TITLE"
      L12_2 = L12_2(L13_2)
      L11_2.title = L12_2
      L12_2 = Lang
      L13_2 = "DISCORD_PHONE_NOT_SECURE"
      L12_2 = L12_2(L13_2)
      L11_2.text = L12_2
      L11_2.icon = "./img/apps/discord.png"
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = A1_2
      L9_2 = false
      L8_2(L9_2)
    end
  elseif L7_2 then
    L8_2 = MySQL
    L8_2 = L8_2.Sync
    L8_2 = L8_2.fetchAll
    L9_2 = "SELECT * FROM phone_chatroom_messages WHERE message LIKE ? AND room_id=?"
    L10_2 = {}
    L11_2 = "%"
    L12_2 = L6_2
    L13_2 = "%"
    L11_2 = L11_2 .. L12_2 .. L13_2
    L12_2 = A2_2
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L8_2[1]
    if L9_2 then
      L9_2 = A1_2
      L10_2 = L8_2
      L9_2(L10_2)
    else
      L9_2 = A1_2
      L10_2 = false
      L9_2(L10_2)
      goto lbl_95
    end
  end
  ::lbl_95::
end
L8_1(L9_1, L10_1)
L8_1 = QSPhone
L8_1 = L8_1.RegisterServerCallback
L9_1 = "qs-smartphone:server:GetPinnedMessages"
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L4_2 = GetPlayerFromIdFramework
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_1
  L6_2 = L4_2.identifier
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = L3_1
    L6_2 = L4_2.identifier
    L7_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2)
    if not L5_2 then
      L5_2 = TriggerClientEvent
      L6_2 = "qs-smartphone:client:notify"
      L7_2 = L3_2
      L8_2 = {}
      L9_2 = Lang
      L10_2 = "DISCORD_TITLE"
      L9_2 = L9_2(L10_2)
      L8_2.title = L9_2
      L9_2 = Lang
      L10_2 = "DISCORD_NEED_ENTER_ROOM_2"
      L9_2 = L9_2(L10_2)
      L8_2.text = L9_2
      L8_2.icon = "./img/apps/discord.png"
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = A1_2
      L6_2 = false
      L5_2(L6_2)
    end
  end
  L5_2 = MySQL
  L5_2 = L5_2.Sync
  L5_2 = L5_2.fetchAll
  L6_2 = "SELECT * FROM phone_chatroom_messages WHERE room_id=? AND is_pinned=1"
  L7_2 = {}
  L8_2 = A2_2
  L7_2[1] = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2[1]
  if L6_2 then
    L6_2 = A1_2
    L7_2 = L5_2
    L6_2(L7_2)
  else
    L6_2 = A1_2
    L7_2 = false
    L6_2(L7_2)
    goto lbl_55
  end
  ::lbl_55::
end
L8_1(L9_1, L10_1)
L8_1 = QSPhone
L8_1 = L8_1.RegisterServerCallback
L9_1 = "qs-smartphone:server:TryPinCode"
function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = MySQL
  L4_2 = L4_2.Sync
  L4_2 = L4_2.fetchAll
  L5_2 = "SELECT 1 FROM phone_chatrooms WHERE id=@roomID AND room_pin=@roomPin"
  L6_2 = {}
  L6_2["@roomID"] = A3_2
  L6_2.roomPin = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L8_1(L9_1, L10_1)
L8_1 = QSPhone
L8_1 = L8_1.RegisterServerCallback
L9_1 = "qs-smartphone:server:IsRoomOwner"
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L4_2 = GetPlayerFromIdFramework
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = MySQL
  L5_2 = L5_2.Sync
  L5_2 = L5_2.fetchAll
  L6_2 = "SELECT 1 FROM phone_chatrooms WHERE id=@roomID AND room_owner_id=@owner"
  L7_2 = {}
  L7_2["@roomID"] = A2_2
  L8_2 = L4_2.identifier
  L7_2.owner = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L6_2 = A1_2
    L7_2 = true
    L6_2(L7_2)
  else
    L6_2 = A1_2
    L7_2 = false
    L6_2(L7_2)
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "qs-smartphone:server:SendGroupChatMessage"
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = source
  L4_2 = GetPlayerFromIdFramework
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = true
  if A0_2 and not A1_2 then
    L6_2 = L4_1
    L7_2 = L4_2.identifier
    L8_2 = A2_2
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L6_2 = L3_1
      L7_2 = L4_2.identifier
      L8_2 = A2_2
      L6_2 = L6_2(L7_2, L8_2)
      if not L6_2 then
        L6_2 = TriggerClientEvent
        L7_2 = "qs-smartphone:client:notify"
        L8_2 = L3_2
        L9_2 = {}
        L10_2 = Lang
        L11_2 = "DISCORD_TITLE"
        L10_2 = L10_2(L11_2)
        L9_2.title = L10_2
        L10_2 = Lang
        L11_2 = "DISCORD_NEED_ENTER_ROOM_3"
        L10_2 = L10_2(L11_2)
        L9_2.text = L10_2
        L9_2.icon = "./img/apps/discord.png"
        L6_2(L7_2, L8_2, L9_2)
      end
    end
    L6_2 = L5_1
    L7_2 = A2_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = L7_1
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L5_2 = false
        L6_2 = TriggerClientEvent
        L7_2 = "qs-smartphone:client:notify"
        L8_2 = L3_2
        L9_2 = {}
        L10_2 = Lang
        L11_2 = "DISCORD_TITLE"
        L10_2 = L10_2(L11_2)
        L9_2.title = L10_2
        L10_2 = Lang
        L11_2 = "DISCORD_PHONE_NOT_SECURE"
        L10_2 = L10_2(L11_2)
        L9_2.text = L10_2
        L9_2.icon = "./img/apps/discord.png"
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = cb
        L7_2 = false
        L6_2(L7_2)
      else
        L6_2 = escape_sqli
        L7_2 = A0_2.message
        L6_2 = L6_2(L7_2)
        L7_2 = MySQL
        L7_2 = L7_2.Sync
        L7_2 = L7_2.execute
        L8_2 = "INSERT INTO phone_chatroom_messages (room_id, member_id, message, member_name) VALUES (?,?,?,?)"
        L9_2 = {}
        L10_2 = A0_2.room_id
        L11_2 = L4_2.identifier
        L12_2 = L6_2
        L13_2 = A0_2.memberName
        L9_2[1] = L10_2
        L9_2[2] = L11_2
        L9_2[3] = L12_2
        L9_2[4] = L13_2
        L7_2 = L7_2(L8_2, L9_2)
        A0_2.messageID = L7_2
        L8_2 = TriggerClientEvent
        L9_2 = "qs-smartphone:client:RefreshGroupChat"
        L10_2 = -1
        L11_2 = L3_2
        L12_2 = A0_2
        L8_2(L9_2, L10_2, L11_2, L12_2)
      end
    elseif L5_2 then
      L6_2 = escape_sqli
      L7_2 = A0_2.message
      L6_2 = L6_2(L7_2)
      L7_2 = MySQL
      L7_2 = L7_2.Sync
      L7_2 = L7_2.execute
      L8_2 = "INSERT INTO phone_chatroom_messages (room_id, member_id, message, member_name) VALUES (?,?,?,?)"
      L9_2 = {}
      L10_2 = A0_2.room_id
      L11_2 = L4_2.identifier
      L12_2 = L6_2
      L13_2 = A0_2.memberName
      L9_2[1] = L10_2
      L9_2[2] = L11_2
      L9_2[3] = L12_2
      L9_2[4] = L13_2
      L7_2 = L7_2(L8_2, L9_2)
      A0_2.messageID = L7_2
      L8_2 = TriggerClientEvent
      L9_2 = "qs-smartphone:client:RefreshGroupChat"
      L10_2 = -1
      L11_2 = L3_2
      L12_2 = A0_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
      goto lbl_137
    end
  else
    L6_2 = escape_sqli
    L7_2 = A1_2.message
    L6_2 = L6_2(L7_2)
    L7_2 = MySQL
    L7_2 = L7_2.Sync
    L7_2 = L7_2.execute
    L8_2 = "INSERT INTO phone_chatroom_messages (room_id, member_id, message, member_name) VALUES (?,?,?,?)"
    L9_2 = {}
    L10_2 = A1_2.room_id
    L11_2 = A1_2.messageType
    L12_2 = L6_2
    L13_2 = A1_2.name
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L9_2[4] = L13_2
    L7_2(L8_2, L9_2)
    L7_2 = TriggerClientEvent
    L8_2 = "qs-smartphone:client:RefreshGroupChat"
    L9_2 = -1
    L10_2 = L3_2
    L11_2 = A1_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  ::lbl_137::
end
L8_1(L9_1, L10_1)
L8_1 = {}
L9_1 = "diables_x_quasar_phone_black.ydr"
L10_1 = "diables_x_quasar_phone_blue.ydr"
L11_1 = "diables_x_quasar_phone_gold.ydr"
L12_1 = "diables_x_quasar_phone_green.ydr"
L13_1 = "diables_x_quasar_phone_greenlight.ydr"
L14_1 = "diables_x_quasar_phone_grey.ydr"
L15_1 = "diables_x_quasar_phone_pink.ydr"
L16_1 = "diables_x_quasar_phone_purple.ydr"
L17_1 = "diables_x_quasar_phone_red.ydr"
L18_1 = "diables_x_quasar_phone_white.ydr"
L8_1[1] = L9_1
L8_1[2] = L10_1
L8_1[3] = L11_1
L8_1[4] = L12_1
L8_1[5] = L13_1
L8_1[6] = L14_1
L8_1[7] = L15_1
L8_1[8] = L16_1
L8_1[9] = L17_1
L8_1[10] = L18_1
function L9_1(A0_2)
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
Exists = L9_1
L9_1 = Citizen
L9_1 = L9_1.CreateThread
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = GetResourcePath
  L1_2 = GetCurrentResourceName
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L1_2 = pairs
  L2_2 = L8_1
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
L9_1(L10_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:server:JoinGroupChat"
function L11_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = A0_2
  L6_2 = GetPlayerFromIdFramework
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = true
  L8_2 = L5_1
  L9_2 = A3_2
  L8_2 = L8_2(L9_2)
  if L8_2 then
    L8_2 = L7_1
    if not L8_2 then
      L7_2 = false
      L8_2 = TriggerClientEvent
      L9_2 = "qs-smartphone:client:notify"
      L10_2 = L5_2
      L11_2 = {}
      L12_2 = Lang
      L13_2 = "DISCORD_TITLE"
      L12_2 = L12_2(L13_2)
      L11_2.title = L12_2
      L12_2 = Lang
      L13_2 = "DISCORD_PHONE_NOT_SECURE_2"
      L12_2 = L12_2(L13_2)
      L11_2.text = L12_2
      L11_2.icon = "./img/apps/discord.png"
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = A1_2
      L9_2 = false
      L8_2(L9_2)
    end
  end
  if L7_2 then
    L8_2 = L3_1
    L9_2 = L6_2.identifier
    L10_2 = A3_2
    L8_2 = L8_2(L9_2, L10_2)
    if not L8_2 then
      ChatRooms = A2_2
      L8_2 = nil
      L9_2 = pairs
      L10_2 = ChatRooms
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
        L15_2 = L14_2.id
        if L15_2 == A3_2 then
          L8_2 = L14_2.room_members
          break
        end
      end
      if L8_2 then
        L9_2 = MySQL
        L9_2 = L9_2.Sync
        L9_2 = L9_2.execute
        L10_2 = "UPDATE phone_chatrooms SET room_members = ? WHERE id = ?"
        L11_2 = {}
        L12_2 = L8_2
        L13_2 = A3_2
        L11_2[1] = L12_2
        L11_2[2] = L13_2
        L9_2(L10_2, L11_2)
      end
      L9_2 = TriggerClientEvent
      L10_2 = "qs-smartphone:client:RefreshChatRooms"
      L11_2 = -1
      L12_2 = ChatRooms
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = A1_2
      L10_2 = true
      L9_2(L10_2)
    end
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:server:LeaveGroupChat"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = source
  L3_2 = GetPlayerFromIdFramework
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = L4_1
  L6_2 = L3_2.identifier
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = L3_1
    L6_2 = L3_2.identifier
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    if not L5_2 then
      goto lbl_49
    end
  end
  ChatRooms = A0_2
  L5_2 = pairs
  L6_2 = ChatRooms
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.id
    if L11_2 == A1_2 then
      L4_2 = L10_2.room_members
      break
    end
  end
  if L4_2 then
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.execute
    L6_2 = "UPDATE phone_chatrooms SET room_members = ? WHERE id = ?"
    L7_2 = {}
    L8_2 = L4_2
    L9_2 = A1_2
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = TriggerClientEvent
  L6_2 = "qs-smartphone:client:RefreshChatRooms"
  L7_2 = -1
  L8_2 = ChatRooms
  L5_2(L6_2, L7_2, L8_2)
  ::lbl_49::
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:server:ChangeRoomPin"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = source
  L4_2 = GetPlayerFromIdFramework
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_1
  L6_2 = L4_2.identifier
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.execute
    L6_2 = "UPDATE phone_chatrooms SET room_pin = ? WHERE id = ?"
    L7_2 = {}
    L8_2 = A2_2
    L9_2 = A1_2
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L5_2(L6_2, L7_2)
    ChatRooms = A0_2
    L5_2 = TriggerClientEvent
    L6_2 = "qs-smartphone:client:RefreshChatRooms"
    L7_2 = -1
    L8_2 = ChatRooms
    L5_2(L6_2, L7_2, L8_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:server:DeactivateRoom"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = source
  L3_2 = GetPlayerFromIdFramework
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L4_1
  L5_2 = L3_2.identifier
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.execute
    L5_2 = "DELETE FROM phone_chatrooms WHERE id = ?"
    L6_2 = {}
    L7_2 = A1_2
    L6_2[1] = L7_2
    L4_2(L5_2, L6_2)
    ChatRooms = A0_2
    L4_2 = TriggerClientEvent
    L5_2 = "qs-smartphone:client:RefreshChatRooms"
    L6_2 = -1
    L7_2 = ChatRooms
    L4_2(L5_2, L6_2, L7_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:server:CreateRoom"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = A0_2
  L4_2 = GetPlayerFromIdFramework
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L1_1
  L5_2 = L5_2()
  L6_2 = false
  if A2_2 then
    A1_2.is_masked = true
  end
  L7_2 = A1_2.room_pin
  if L7_2 then
    L7_2 = A1_2.room_pin
    if "" ~= L7_2 then
      L6_2 = true
    end
  end
  L7_2 = MySQL
  L7_2 = L7_2.Sync
  L7_2 = L7_2.execute
  L8_2 = "INSERT INTO phone_chatrooms (room_code, room_name, room_owner_id, room_owner_name, room_pin, is_masked) VALUES(?, ?, ?, ?, ?, ?)"
  L9_2 = {}
  L10_2 = L5_2
  L11_2 = A1_2.room_name
  L12_2 = L4_2.identifier
  L13_2 = A1_2.room_owner_name
  L14_2 = A1_2.room_pin
  if not L14_2 then
    L14_2 = ""
  end
  L15_2 = A1_2.is_masked
  if not L15_2 then
    L15_2 = false
  end
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L9_2[4] = L13_2
  L9_2[5] = L14_2
  L9_2[6] = L15_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = {}
  L8_2.id = L7_2
  L8_2.room_code = L5_2
  L9_2 = A1_2.room_name
  L8_2.room_name = L9_2
  L9_2 = L4_2.identifier
  L8_2.room_owner_id = L9_2
  L9_2 = A1_2.room_owner_name
  L8_2.room_owner_name = L9_2
  L9_2 = A1_2.is_masked
  if not L9_2 then
    L9_2 = false
  end
  L8_2.is_masked = L9_2
  L8_2.room_members = "{}"
  L8_2.protected = L6_2
  L9_2 = ChatRooms
  L10_2 = ChatRooms
  L10_2 = #L10_2
  L10_2 = L10_2 + 1
  L9_2[L10_2] = L8_2
  L9_2 = TriggerClientEvent
  L10_2 = "qs-smartphone:client:RefreshChatRooms"
  L11_2 = -1
  L12_2 = ChatRooms
  L9_2(L10_2, L11_2, L12_2)
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:server:PurchaseRoom"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = Config
  L3_2 = L3_2.Framework
  if "ESX" == L3_2 then
    L3_2 = A0_2
    L4_2 = ESX
    L4_2 = L4_2.GetPlayerFromId
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L5_2 = L4_2.getMoney
      L5_2 = L5_2()
      L6_2 = Config
      L6_2 = L6_2.RoomPrice
      if L5_2 >= L6_2 then
        L5_2 = L4_2.removeMoney
        L6_2 = Config
        L6_2 = L6_2.RoomPrice
        L5_2(L6_2)
        L5_2 = TriggerClientEvent
        L6_2 = "qs-smartphone:sendMessage"
        L7_2 = A0_2
        L8_2 = Lang
        L9_2 = "DISCORD_PURCHASED_CHANNEL"
        L8_2 = L8_2(L9_2)
        L9_2 = "success"
        L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = TriggerClientEvent
        L6_2 = "qs-smartphone:client:notify"
        L7_2 = L3_2
        L8_2 = {}
        L9_2 = Lang
        L10_2 = "DISCORD_TITLE"
        L9_2 = L9_2(L10_2)
        L8_2.title = L9_2
        L9_2 = Lang
        L10_2 = "DISCORD_BUY_CHANNEL"
        L9_2 = L9_2(L10_2)
        L8_2.text = L9_2
        L8_2.icon = "./img/apps/discord.png"
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = A1_2
        L6_2 = true
        L5_2(L6_2)
      else
        L5_2 = TriggerClientEvent
        L6_2 = "qs-smartphone:sendMessage"
        L7_2 = A0_2
        L8_2 = Lang
        L9_2 = "DISCORD_PURCHASED_CHANNEL_NO_MONEY"
        L8_2 = L8_2(L9_2)
        L9_2 = "success"
        L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = A1_2
        L6_2 = false
        L5_2(L6_2)
      end
    end
  else
    L3_2 = Config
    L3_2 = L3_2.Framework
    if "QBCore" == L3_2 then
      L3_2 = A0_2
      L4_2 = GetPlayerFromIdFramework
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L5_2 = L4_2.PlayerData
      L5_2 = L5_2.money
      L5_2 = L5_2.cash
      L6_2 = Config
      L6_2 = L6_2.RoomPrice
      if L5_2 >= L6_2 then
        L5_2 = L4_2.Functions
        L5_2 = L5_2.RemoveMoney
        L6_2 = "cash"
        L7_2 = Config
        L7_2 = L7_2.RoomPrice
        L5_2(L6_2, L7_2)
        L5_2 = TriggerClientEvent
        L6_2 = "qs-smartphone:sendMessage"
        L7_2 = A0_2
        L8_2 = Lang
        L9_2 = "DISCORD_PURCHASED_CHANNEL"
        L8_2 = L8_2(L9_2)
        L9_2 = "success"
        L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = TriggerClientEvent
        L6_2 = "qs-smartphone:client:notify"
        L7_2 = L3_2
        L8_2 = {}
        L9_2 = Lang
        L10_2 = "DISCORD_TITLE"
        L9_2 = L9_2(L10_2)
        L8_2.title = L9_2
        L9_2 = Lang
        L10_2 = "DISCORD_BUY_CHANNEL"
        L9_2 = L9_2(L10_2)
        L8_2.text = L9_2
        L8_2.icon = "./img/apps/discord.png"
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = A1_2
        L6_2 = true
        L5_2(L6_2)
      else
        L5_2 = TriggerClientEvent
        L6_2 = "qs-smartphone:sendMessage"
        L7_2 = A0_2
        L8_2 = Lang
        L9_2 = "DISCORD_PURCHASED_CHANNEL_NO_MONEY"
        L8_2 = L8_2(L9_2)
        L9_2 = "success"
        L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = A1_2
        L6_2 = false
        L5_2(L6_2)
      end
    end
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:server:ToggleMessagePin"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = GetPlayerFromIdFramework
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L4_1
  L5_2 = L3_2.identifier
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT is_pinned FROM phone_chatroom_messages WHERE id = ?"
    L6_2 = {}
    L7_2 = A0_2
    L6_2[1] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2[1]
    if L5_2 then
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.execute
      L6_2 = "UPDATE phone_chatroom_messages SET is_pinned = NOT is_pinned WHERE id = ?"
      L7_2 = {}
      L8_2 = A0_2
      L7_2[1] = L8_2
      L5_2(L6_2, L7_2)
    end
  end
end
L9_1(L10_1, L11_1)
