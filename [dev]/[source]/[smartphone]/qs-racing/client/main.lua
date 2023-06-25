local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
L0_1.InCreator = false
L0_1.InRace = false
L0_1.ClosestCheckpoint = 0
RaceData = L0_1
L0_1 = {}
L0_1.RaceName = nil
L1_1 = {}
L0_1.Checkpoints = L1_1
L1_1 = Config
L1_1 = L1_1.TireDistance
L1_1 = L1_1.default
L0_1.TireDistance = L1_1
L0_1.ConfirmDelete = false
CreatorData = L0_1
L0_1 = {}
L0_1.RaceId = nil
L0_1.RaceName = nil
L1_1 = {}
L0_1.Checkpoints = L1_1
L0_1.Started = false
L0_1.CurrentCheckpoint = nil
L0_1.TotalLaps = 0
L0_1.Lap = 0
CurrentRaceData = L0_1
L0_1 = 10
function L1_1()
  local L0_2, L1_2
  L0_2 = false
  L1_2 = RaceData
  L1_2 = L1_2.InRace
  if L1_2 then
    L0_2 = true
  end
  return L0_2
end
IsInRace = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = false
  L1_2 = RaceData
  L1_2 = L1_2.InCreator
  if L1_2 then
    L0_2 = true
  end
  return L0_2
end
IsInEditor = L1_1
L1_1 = RegisterNetEvent
L2_1 = "qs-racing:client:StartRaceEditor"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "qs-racing:client:StartRaceEditor"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = RaceData
  L1_2 = L1_2.InCreator
  if not L1_2 then
    L1_2 = CreatorData
    L1_2.RaceName = A0_2
    L1_2 = RaceData
    L1_2.InCreator = true
    L1_2 = CreatorUI
    L1_2()
    L1_2 = CreatorLoop
    L1_2()
  else
    L1_2 = SendTextMessage
    L2_2 = Lang
    L3_2 = "RACE_ALREADY_IN"
    L2_2 = L2_2(L3_2)
    L3_2 = "error"
    L1_2(L2_2, L3_2)
  end
end
L1_1(L2_1, L3_1)
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = GetEntityCoords
  L1_2 = GetPlayerPed
  L2_2 = -1
  L1_2 = L1_2(L2_2)
  L2_2 = true
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = nil
  L2_2 = nil
  L3_2 = pairs
  L4_2 = CreatorData
  L4_2 = L4_2.Checkpoints
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if nil ~= L1_2 then
      L9_2 = GetDistanceBetweenCoords
      L10_2 = L0_2
      L11_2 = CreatorData
      L11_2 = L11_2.Checkpoints
      L11_2 = L11_2[L7_2]
      L11_2 = L11_2.coords
      L11_2 = L11_2.x
      L12_2 = CreatorData
      L12_2 = L12_2.Checkpoints
      L12_2 = L12_2[L7_2]
      L12_2 = L12_2.coords
      L12_2 = L12_2.y
      L13_2 = CreatorData
      L13_2 = L13_2.Checkpoints
      L13_2 = L13_2[L7_2]
      L13_2 = L13_2.coords
      L13_2 = L13_2.z
      L14_2 = true
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      if L2_2 > L9_2 then
        L1_2 = L7_2
        L9_2 = GetDistanceBetweenCoords
        L10_2 = L0_2
        L11_2 = CreatorData
        L11_2 = L11_2.Checkpoints
        L11_2 = L11_2[L7_2]
        L11_2 = L11_2.coords
        L11_2 = L11_2.x
        L12_2 = CreatorData
        L12_2 = L12_2.Checkpoints
        L12_2 = L12_2[L7_2]
        L12_2 = L12_2.coords
        L12_2 = L12_2.y
        L13_2 = CreatorData
        L13_2 = L13_2.Checkpoints
        L13_2 = L13_2[L7_2]
        L13_2 = L13_2.coords
        L13_2 = L13_2.z
        L14_2 = true
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
        L2_2 = L9_2
      end
    else
      L9_2 = GetDistanceBetweenCoords
      L10_2 = L0_2
      L11_2 = CreatorData
      L11_2 = L11_2.Checkpoints
      L11_2 = L11_2[L7_2]
      L11_2 = L11_2.coords
      L11_2 = L11_2.x
      L12_2 = CreatorData
      L12_2 = L12_2.Checkpoints
      L12_2 = L12_2[L7_2]
      L12_2 = L12_2.coords
      L12_2 = L12_2.y
      L13_2 = CreatorData
      L13_2 = L13_2.Checkpoints
      L13_2 = L13_2[L7_2]
      L13_2 = L13_2.coords
      L13_2 = L13_2.z
      L14_2 = true
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      L2_2 = L9_2
      L1_2 = L7_2
    end
  end
  L3_2 = RaceData
  L3_2.ClosestCheckpoint = L1_2
end
GetClosestCheckpoint = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = RaceData
      L0_3 = L0_3.InCreator
      if L0_3 then
        L0_3 = SendNUIMessage
        L1_3 = {}
        L1_3.action = "Update"
        L1_3.type = "creator"
        L2_3 = CreatorData
        L1_3.data = L2_3
        L2_3 = RaceData
        L1_3.racedata = L2_3
        L1_3.active = true
        L0_3(L1_3)
      else
        L0_3 = SendNUIMessage
        L1_3 = {}
        L1_3.action = "Update"
        L1_3.type = "creator"
        L2_3 = CreatorData
        L1_3.data = L2_3
        L2_3 = RaceData
        L1_3.racedata = L2_3
        L1_3.active = false
        L0_3(L1_3)
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 200
      L0_3(L1_3)
    end
  end
  L0_2(L1_2)
end
CreatorUI = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    while true do
      L0_3 = RaceData
      L0_3 = L0_3.InCreator
      if not L0_3 then
        break
      end
      L0_3 = GetPlayerPed
      L1_3 = -1
      L0_3 = L0_3(L1_3)
      L1_3 = GetVehiclePedIsIn
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if 0 ~= L1_3 then
        L2_3 = IsControlJustPressed
        L3_3 = 0
        L4_3 = Keys
        L4_3 = L4_3["7"]
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          L2_3 = IsDisabledControlJustPressed
          L3_3 = 0
          L4_3 = Keys
          L4_3 = L4_3["7"]
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            goto lbl_29
          end
        end
        L2_3 = AddCheckpoint
        L2_3()
        ::lbl_29::
        L2_3 = IsControlJustPressed
        L3_3 = 0
        L4_3 = Keys
        L4_3 = L4_3["8"]
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          L2_3 = IsDisabledControlJustPressed
          L3_3 = 0
          L4_3 = Keys
          L4_3 = L4_3["8"]
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            goto lbl_62
          end
        end
        L2_3 = CreatorData
        L2_3 = L2_3.Checkpoints
        if nil ~= L2_3 then
          L2_3 = next
          L3_3 = CreatorData
          L3_3 = L3_3.Checkpoints
          L2_3 = L2_3(L3_3)
          if nil ~= L2_3 then
            L2_3 = DeleteCheckpoint
            L2_3()
        end
        else
          L2_3 = SendTextMessage
          L3_3 = Lang
          L4_3 = "CREATOR_NO_CHECKPOINT"
          L3_3 = L3_3(L4_3)
          L4_3 = "error"
          L2_3(L3_3, L4_3)
        end
        ::lbl_62::
        L2_3 = IsControlJustPressed
        L3_3 = 0
        L4_3 = Keys
        L4_3 = L4_3.K
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          L2_3 = IsDisabledControlJustPressed
          L3_3 = 0
          L4_3 = Keys
          L4_3 = L4_3.K
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            goto lbl_96
          end
        end
        L2_3 = CreatorData
        L2_3 = L2_3.Checkpoints
        if nil ~= L2_3 then
          L2_3 = CreatorData
          L2_3 = L2_3.Checkpoints
          L2_3 = #L2_3
          L3_3 = Config
          L3_3 = L3_3.MinimumCheckpoints
          if L2_3 >= L3_3 then
            L2_3 = SaveRace
            L2_3()
        end
        else
          L2_3 = SendTextMessage
          L3_3 = Lang
          L4_3 = "CREATOR_MIN_CHECKPOINT"
          L3_3 = L3_3(L4_3)
          L4_3 = "error"
          L2_3(L3_3, L4_3)
        end
        ::lbl_96::
        L2_3 = IsControlJustPressed
        L3_3 = 0
        L4_3 = Keys
        L4_3 = L4_3["]"]
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          L2_3 = IsDisabledControlJustPressed
          L3_3 = 0
          L4_3 = Keys
          L4_3 = L4_3["]"]
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            goto lbl_132
          end
        end
        L2_3 = CreatorData
        L2_3 = L2_3.TireDistance
        L2_3 = L2_3 + 1.0
        L3_3 = Config
        L3_3 = L3_3.TireDistance
        L3_3 = L3_3.max
        if L2_3 ~= L3_3 then
          L2_3 = CreatorData
          L3_3 = CreatorData
          L3_3 = L3_3.TireDistance
          L3_3 = L3_3 + 1.0
          L2_3.TireDistance = L3_3
        else
          L2_3 = SendTextMessage
          L3_3 = Lang
          L4_3 = "CREATOR_UP_DISTANCE"
          L3_3 = L3_3(L4_3)
          L4_3 = "error"
          L2_3(L3_3, L4_3)
        end
        ::lbl_132::
        L2_3 = IsControlJustPressed
        L3_3 = 0
        L4_3 = Keys
        L4_3 = L4_3["["]
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          L2_3 = IsDisabledControlJustPressed
          L3_3 = 0
          L4_3 = Keys
          L4_3 = L4_3["["]
          L2_3 = L2_3(L3_3, L4_3)
        end
        if L2_3 then
          L2_3 = CreatorData
          L2_3 = L2_3.TireDistance
          L2_3 = L2_3 - 1.0
          L3_3 = Config
          L3_3 = L3_3.TireDistance
          L3_3 = L3_3.min
          if L2_3 ~= L3_3 then
            L2_3 = CreatorData
            L3_3 = CreatorData
            L3_3 = L3_3.TireDistance
            L3_3 = L3_3 - 1.0
            L2_3.TireDistance = L3_3
          else
            L2_3 = SendTextMessage
            L3_3 = Lang
            L4_3 = "CREATOR_DOWN_DISTANCE"
            L3_3 = L3_3(L4_3)
            L4_3 = "error"
            L2_3(L3_3, L4_3)
          end
        end
      else
        L2_3 = GetEntityCoords
        L3_3 = GetPlayerPed
        L4_3 = -1
        L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L3_3(L4_3)
        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
        L3_3 = DrawText3Ds
        L4_3 = L2_3.x
        L5_3 = L2_3.y
        L6_3 = L2_3.z
        L7_3 = Lang
        L8_3 = "CREATOR_NO_VEHICLE"
        L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L7_3(L8_3)
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
      end
      L2_3 = IsControlJustPressed
      L3_3 = 0
      L4_3 = Keys
      L4_3 = L4_3["9"]
      L2_3 = L2_3(L3_3, L4_3)
      if not L2_3 then
        L2_3 = IsDisabledControlJustPressed
        L3_3 = 0
        L4_3 = Keys
        L4_3 = L4_3["9"]
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          goto lbl_321
        end
      end
      L2_3 = CreatorData
      L2_3 = L2_3.ConfirmDelete
      if not L2_3 then
        L2_3 = CreatorData
        L2_3.ConfirmDelete = true
        L2_3 = SendTextMessage
        L3_3 = Lang
        L4_3 = "CREATOR_DELETE_CONFIRM"
        L3_3 = L3_3(L4_3)
        L4_3 = "inform"
        L2_3(L3_3, L4_3)
      else
        L2_3 = pairs
        L3_3 = CreatorData
        L3_3 = L3_3.Checkpoints
        L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
        for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
          L8_3 = L7_3.blip
          if nil ~= L8_3 then
            L8_3 = RemoveBlip
            L9_3 = L7_3.blip
            L8_3(L9_3)
          end
        end
        L2_3 = pairs
        L3_3 = CreatorData
        L3_3 = L3_3.Checkpoints
        L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
        for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
          L8_3 = CreatorData
          L8_3 = L8_3.Checkpoints
          L8_3 = L8_3[L6_3]
          L8_3 = L8_3.pileleft
          if nil ~= L8_3 then
            L8_3 = CreatorData
            L8_3 = L8_3.Checkpoints
            L8_3 = L8_3[L6_3]
            L8_3 = L8_3.offset
            L8_3 = L8_3.left
            L9_3 = GetClosestObjectOfType
            L10_3 = L8_3.x
            L11_3 = L8_3.y
            L12_3 = L8_3.z
            L13_3 = 8.0
            L14_3 = GetHashKey
            L15_3 = "prop_offroad_tyres02"
            L14_3 = L14_3(L15_3)
            L15_3 = 0
            L16_3 = 0
            L17_3 = 0
            L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
            L10_3 = DeleteObject
            L11_3 = L9_3
            L10_3(L11_3)
            L10_3 = ClearAreaOfObjects
            L11_3 = L8_3.x
            L12_3 = L8_3.y
            L13_3 = L8_3.z
            L14_3 = 50.0
            L15_3 = 0
            L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
            L10_3 = CreatorData
            L10_3 = L10_3.Checkpoints
            L10_3 = L10_3[L6_3]
            L10_3.pileleft = nil
          end
          L8_3 = CreatorData
          L8_3 = L8_3.Checkpoints
          L8_3 = L8_3[L6_3]
          L8_3 = L8_3.pileright
          if nil ~= L8_3 then
            L8_3 = CreatorData
            L8_3 = L8_3.Checkpoints
            L8_3 = L8_3[L6_3]
            L8_3 = L8_3.offset
            L8_3 = L8_3.right
            L9_3 = GetClosestObjectOfType
            L10_3 = L8_3.x
            L11_3 = L8_3.y
            L12_3 = L8_3.z
            L13_3 = 8.0
            L14_3 = GetHashKey
            L15_3 = "prop_offroad_tyres02"
            L14_3 = L14_3(L15_3)
            L15_3 = 0
            L16_3 = 0
            L17_3 = 0
            L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
            L10_3 = DeleteObject
            L11_3 = L9_3
            L10_3(L11_3)
            L10_3 = ClearAreaOfObjects
            L11_3 = L8_3.x
            L12_3 = L8_3.y
            L13_3 = L8_3.z
            L14_3 = 50.0
            L15_3 = 0
            L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
            L10_3 = CreatorData
            L10_3 = L10_3.Checkpoints
            L10_3 = L10_3[L6_3]
            L10_3.pileright = nil
          end
        end
        L2_3 = RaceData
        L2_3.InCreator = false
        L2_3 = CreatorData
        L2_3.RaceName = nil
        L2_3 = CreatorData
        L3_3 = {}
        L2_3.Checkpoints = L3_3
        L2_3 = SendTextMessage
        L3_3 = Lang
        L4_3 = "CREATOR_CANCELED"
        L3_3 = L3_3(L4_3)
        L4_3 = "inform"
        L2_3(L3_3, L4_3)
        L2_3 = CreatorData
        L2_3.ConfirmDelete = false
      end
      ::lbl_321::
      L2_3 = Citizen
      L2_3 = L2_3.Wait
      L3_3 = 3
      L2_3(L3_3)
    end
  end
  L0_2(L1_2)
end
CreatorLoop = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = 0
  L1_2 = pairs
  L2_2 = CreatorData
  L2_2 = L2_2.Checkpoints
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L5_2 + 1
    L8_2 = CreatorData
    L8_2 = L8_2.Checkpoints
    L8_2 = #L8_2
    if L7_2 <= L8_2 then
      L7_2 = GetDistanceBetweenCoords
      L8_2 = L6_2.coords
      L8_2 = L8_2.x
      L9_2 = L6_2.coords
      L9_2 = L9_2.y
      L10_2 = L6_2.coords
      L10_2 = L10_2.z
      L11_2 = CreatorData
      L11_2 = L11_2.Checkpoints
      L12_2 = L5_2 + 1
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2.coords
      L11_2 = L11_2.x
      L12_2 = CreatorData
      L12_2 = L12_2.Checkpoints
      L13_2 = L5_2 + 1
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.coords
      L12_2 = L12_2.y
      L13_2 = CreatorData
      L13_2 = L13_2.Checkpoints
      L14_2 = L5_2 + 1
      L13_2 = L13_2[L14_2]
      L13_2 = L13_2.coords
      L13_2 = L13_2.z
      L14_2 = true
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L0_2 = L0_2 + L7_2
    end
  end
  L1_2 = CreatorData
  L1_2.RaceDistance = L0_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-racing:server:SaveRace"
  L3_2 = CreatorData
  L1_2(L2_2, L3_2)
  L1_2 = SendTextMessage
  L2_2 = Lang
  L3_2 = "CREATOR_SAVE_RACE"
  L2_2 = L2_2(L3_2)
  L3_2 = " "
  L4_2 = CreatorData
  L4_2 = L4_2.RaceName
  L5_2 = " "
  L6_2 = Lang
  L7_2 = "CREATOR_SAVE_TRACK"
  L6_2 = L6_2(L7_2)
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
  L3_2 = "success"
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = CreatorData
  L2_2 = L2_2.Checkpoints
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = CreatorData
    L7_2 = L7_2.Checkpoints
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.blip
    if nil ~= L7_2 then
      L7_2 = RemoveBlip
      L8_2 = CreatorData
      L8_2 = L8_2.Checkpoints
      L8_2 = L8_2[L5_2]
      L8_2 = L8_2.blip
      L7_2(L8_2)
      L7_2 = CreatorData
      L7_2 = L7_2.Checkpoints
      L7_2 = L7_2[L5_2]
      L7_2.blip = nil
    end
    L7_2 = CreatorData
    L7_2 = L7_2.Checkpoints
    L7_2 = L7_2[L5_2]
    if nil ~= L7_2 then
      L7_2 = CreatorData
      L7_2 = L7_2.Checkpoints
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.pileleft
      if nil ~= L7_2 then
        L7_2 = CreatorData
        L7_2 = L7_2.Checkpoints
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.offset
        L7_2 = L7_2.left
        L8_2 = GetClosestObjectOfType
        L9_2 = L7_2.x
        L10_2 = L7_2.y
        L11_2 = L7_2.z
        L12_2 = 5.0
        L13_2 = GetHashKey
        L14_2 = "prop_offroad_tyres02"
        L13_2 = L13_2(L14_2)
        L14_2 = 0
        L15_2 = 0
        L16_2 = 0
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        L9_2 = DeleteObject
        L10_2 = L8_2
        L9_2(L10_2)
        L9_2 = ClearAreaOfObjects
        L10_2 = L7_2.x
        L11_2 = L7_2.y
        L12_2 = L7_2.z
        L13_2 = 50.0
        L14_2 = 0
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
        L9_2 = CreatorData
        L9_2 = L9_2.Checkpoints
        L9_2 = L9_2[L5_2]
        L9_2.pileleft = nil
      end
      L7_2 = CreatorData
      L7_2 = L7_2.Checkpoints
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.pileright
      if nil ~= L7_2 then
        L7_2 = CreatorData
        L7_2 = L7_2.Checkpoints
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.offset
        L7_2 = L7_2.right
        L8_2 = GetClosestObjectOfType
        L9_2 = L7_2.x
        L10_2 = L7_2.y
        L11_2 = L7_2.z
        L12_2 = 5.0
        L13_2 = GetHashKey
        L14_2 = "prop_offroad_tyres02"
        L13_2 = L13_2(L14_2)
        L14_2 = 0
        L15_2 = 0
        L16_2 = 0
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        L9_2 = DeleteObject
        L10_2 = L8_2
        L9_2(L10_2)
        L9_2 = ClearAreaOfObjects
        L10_2 = L7_2.x
        L11_2 = L7_2.y
        L12_2 = L7_2.z
        L13_2 = 50.0
        L14_2 = 0
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
        L9_2 = CreatorData
        L9_2 = L9_2.Checkpoints
        L9_2 = L9_2[L5_2]
        L9_2.pileright = nil
      end
    end
  end
  L1_2 = RaceData
  L1_2.InCreator = false
  L1_2 = CreatorData
  L1_2.RaceName = nil
  L1_2 = CreatorData
  L2_2 = {}
  L1_2.Checkpoints = L2_2
end
SaveRace = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = GetPlayerPed
  L1_2 = -1
  L0_2 = L0_2(L1_2)
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetVehiclePedIsIn
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = {}
  L5_2 = GetOffsetFromEntityInWorldCoords
  L6_2 = L2_2
  L7_2 = CreatorData
  L7_2 = L7_2.TireDistance
  L7_2 = -L7_2
  L7_2 = L7_2 - 3
  L8_2 = 0.0
  L9_2 = 0.0
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L5_2.x
  L4_2.x = L5_2
  L5_2 = GetOffsetFromEntityInWorldCoords
  L6_2 = L2_2
  L7_2 = CreatorData
  L7_2 = L7_2.TireDistance
  L7_2 = -L7_2
  L7_2 = L7_2 - 3
  L8_2 = 0.0
  L9_2 = 0.0
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L5_2.y
  L4_2.y = L5_2
  L5_2 = GetOffsetFromEntityInWorldCoords
  L6_2 = L2_2
  L7_2 = CreatorData
  L7_2 = L7_2.TireDistance
  L7_2 = -L7_2
  L7_2 = L7_2 - 3
  L8_2 = 0.0
  L9_2 = 0.0
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L5_2.z
  L4_2.z = L5_2
  L3_2.left = L4_2
  L4_2 = {}
  L5_2 = GetOffsetFromEntityInWorldCoords
  L6_2 = L2_2
  L7_2 = CreatorData
  L7_2 = L7_2.TireDistance
  L7_2 = L7_2 + 3
  L8_2 = 0.0
  L9_2 = 0.0
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L5_2.x
  L4_2.x = L5_2
  L5_2 = GetOffsetFromEntityInWorldCoords
  L6_2 = L2_2
  L7_2 = CreatorData
  L7_2 = L7_2.TireDistance
  L7_2 = L7_2 + 3
  L8_2 = 0.0
  L9_2 = 0.0
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L5_2.y
  L4_2.y = L5_2
  L5_2 = GetOffsetFromEntityInWorldCoords
  L6_2 = L2_2
  L7_2 = CreatorData
  L7_2 = L7_2.TireDistance
  L7_2 = L7_2 + 3
  L8_2 = 0.0
  L9_2 = 0.0
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L5_2.z
  L4_2.z = L5_2
  L3_2.right = L4_2
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = CreatorData
  L5_2 = L5_2.Checkpoints
  L6_2 = {}
  L7_2 = {}
  L8_2 = L1_2.x
  L7_2.x = L8_2
  L8_2 = L1_2.y
  L7_2.y = L8_2
  L8_2 = L1_2.z
  L7_2.z = L8_2
  L6_2.coords = L7_2
  L6_2.offset = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = pairs
  L5_2 = CreatorData
  L5_2 = L5_2.Checkpoints
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.blip
    if nil ~= L10_2 then
      L10_2 = RemoveBlip
      L11_2 = L9_2.blip
      L10_2(L11_2)
    end
    L10_2 = AddBlipForCoord
    L11_2 = L9_2.coords
    L11_2 = L11_2.x
    L12_2 = L9_2.coords
    L12_2 = L12_2.y
    L13_2 = L9_2.coords
    L13_2 = L13_2.z
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L9_2.blip = L10_2
    L10_2 = SetBlipSprite
    L11_2 = L9_2.blip
    L12_2 = 1
    L10_2(L11_2, L12_2)
    L10_2 = SetBlipDisplay
    L11_2 = L9_2.blip
    L12_2 = 4
    L10_2(L11_2, L12_2)
    L10_2 = SetBlipScale
    L11_2 = L9_2.blip
    L12_2 = 0.8
    L10_2(L11_2, L12_2)
    L10_2 = SetBlipAsShortRange
    L11_2 = L9_2.blip
    L12_2 = true
    L10_2(L11_2, L12_2)
    L10_2 = SetBlipColour
    L11_2 = L9_2.blip
    L12_2 = 26
    L10_2(L11_2, L12_2)
    L10_2 = ShowNumberOnBlip
    L11_2 = L9_2.blip
    L12_2 = L8_2
    L10_2(L11_2, L12_2)
    L10_2 = SetBlipShowCone
    L11_2 = L9_2.blip
    L12_2 = false
    L10_2(L11_2, L12_2)
    L10_2 = BeginTextCommandSetBlipName
    L11_2 = "STRING"
    L10_2(L11_2)
    L10_2 = AddTextComponentSubstringPlayerName
    L11_2 = "Checkpoint: "
    L12_2 = L8_2
    L11_2 = L11_2 .. L12_2
    L10_2(L11_2)
    L10_2 = EndTextCommandSetBlipName
    L11_2 = L9_2.blip
    L10_2(L11_2)
  end
end
AddCheckpoint = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = RaceData
  L1_2 = L1_2.ClosestCheckpoint
  if 0 ~= L1_2 then
    L1_2 = CreatorData
    L1_2 = L1_2.Checkpoints
    L2_2 = RaceData
    L2_2 = L2_2.ClosestCheckpoint
    L1_2 = L1_2[L2_2]
    if nil ~= L1_2 then
      L1_2 = CreatorData
      L1_2 = L1_2.Checkpoints
      L2_2 = RaceData
      L2_2 = L2_2.ClosestCheckpoint
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.blip
      if nil ~= L1_2 then
        L1_2 = RemoveBlip
        L2_2 = CreatorData
        L2_2 = L2_2.Checkpoints
        L3_2 = RaceData
        L3_2 = L3_2.ClosestCheckpoint
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.blip
        L1_2(L2_2)
        L1_2 = CreatorData
        L1_2 = L1_2.Checkpoints
        L2_2 = RaceData
        L2_2 = L2_2.ClosestCheckpoint
        L1_2 = L1_2[L2_2]
        L1_2.blip = nil
      end
      L1_2 = CreatorData
      L1_2 = L1_2.Checkpoints
      L2_2 = RaceData
      L2_2 = L2_2.ClosestCheckpoint
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.pileleft
      if nil ~= L1_2 then
        L1_2 = CreatorData
        L1_2 = L1_2.Checkpoints
        L2_2 = RaceData
        L2_2 = L2_2.ClosestCheckpoint
        L1_2 = L1_2[L2_2]
        L1_2 = L1_2.offset
        L1_2 = L1_2.left
        L2_2 = GetClosestObjectOfType
        L3_2 = L1_2.x
        L4_2 = L1_2.y
        L5_2 = L1_2.z
        L6_2 = 5.0
        L7_2 = GetHashKey
        L8_2 = "prop_offroad_tyres02"
        L7_2 = L7_2(L8_2)
        L8_2 = 0
        L9_2 = 0
        L10_2 = 0
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
        L3_2 = DeleteObject
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = ClearAreaOfObjects
        L4_2 = L1_2.x
        L5_2 = L1_2.y
        L6_2 = L1_2.z
        L7_2 = 50.0
        L8_2 = 0
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L3_2 = CreatorData
        L3_2 = L3_2.Checkpoints
        L4_2 = RaceData
        L4_2 = L4_2.ClosestCheckpoint
        L3_2 = L3_2[L4_2]
        L3_2.pileleft = nil
      end
      L1_2 = CreatorData
      L1_2 = L1_2.Checkpoints
      L2_2 = RaceData
      L2_2 = L2_2.ClosestCheckpoint
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.pileright
      if nil ~= L1_2 then
        L1_2 = CreatorData
        L1_2 = L1_2.Checkpoints
        L2_2 = RaceData
        L2_2 = L2_2.ClosestCheckpoint
        L1_2 = L1_2[L2_2]
        L1_2 = L1_2.offset
        L1_2 = L1_2.right
        L2_2 = GetClosestObjectOfType
        L3_2 = L1_2.x
        L4_2 = L1_2.y
        L5_2 = L1_2.z
        L6_2 = 5.0
        L7_2 = GetHashKey
        L8_2 = "prop_offroad_tyres02"
        L7_2 = L7_2(L8_2)
        L8_2 = 0
        L9_2 = 0
        L10_2 = 0
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
        L3_2 = DeleteObject
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = ClearAreaOfObjects
        L4_2 = L1_2.x
        L5_2 = L1_2.y
        L6_2 = L1_2.z
        L7_2 = 50.0
        L8_2 = 0
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L3_2 = CreatorData
        L3_2 = L3_2.Checkpoints
        L4_2 = RaceData
        L4_2 = L4_2.ClosestCheckpoint
        L3_2 = L3_2[L4_2]
        L3_2.pileright = nil
      end
      L1_2 = pairs
      L2_2 = CreatorData
      L2_2 = L2_2.Checkpoints
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = RaceData
        L7_2 = L7_2.ClosestCheckpoint
        if L5_2 ~= L7_2 then
          L7_2 = table
          L7_2 = L7_2.insert
          L8_2 = L0_2
          L9_2 = L6_2
          L7_2(L8_2, L9_2)
        end
      end
      L1_2 = CreatorData
      L1_2.Checkpoints = L0_2
    else
      L1_2 = SendTextMessage
      L2_2 = Lang
      L3_2 = "CREATOR_MORE_SLOW"
      L2_2 = L2_2(L3_2)
      L3_2 = "error"
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = SendTextMessage
    L2_2 = Lang
    L3_2 = "CREATOR_FAST"
    L2_2 = L2_2(L3_2)
    L3_2 = "error"
    L1_2(L2_2, L3_2)
  end
end
DeleteCheckpoint = L1_1
L1_1 = RegisterNetEvent
L2_1 = "qs-racing:client:UpdateRaceRacerData"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "qs-racing:client:UpdateRaceRacerData"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CurrentRaceData
  L2_2 = L2_2.RaceId
  if nil ~= L2_2 then
    L2_2 = CurrentRaceData
    L2_2 = L2_2.RaceId
    if L2_2 == A0_2 then
      L2_2 = CurrentRaceData
      L3_2 = A1_2.Racers
      L2_2.Racers = L3_2
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = Citizen
L1_1 = L1_1.CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  while true do
    L0_2 = RaceData
    L0_2 = L0_2.InCreator
    if L0_2 then
      L0_2 = GetPlayerPed
      L1_2 = -1
      L0_2 = L0_2(L1_2)
      L1_2 = GetVehiclePedIsIn
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      L2_2 = GetEntityCoords
      L3_2 = PlayerPedId
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      if 0 ~= L1_2 then
        L3_2 = {}
        L4_2 = {}
        L5_2 = GetOffsetFromEntityInWorldCoords
        L6_2 = L1_2
        L7_2 = CreatorData
        L7_2 = L7_2.TireDistance
        L7_2 = -L7_2
        L7_2 = L7_2 - 3
        L8_2 = 0.0
        L9_2 = 0.0
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = L5_2.x
        L4_2.x = L5_2
        L5_2 = GetOffsetFromEntityInWorldCoords
        L6_2 = L1_2
        L7_2 = CreatorData
        L7_2 = L7_2.TireDistance
        L7_2 = -L7_2
        L7_2 = L7_2 - 3
        L8_2 = 0.0
        L9_2 = 0.0
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = L5_2.y
        L4_2.y = L5_2
        L5_2 = GetOffsetFromEntityInWorldCoords
        L6_2 = L1_2
        L7_2 = CreatorData
        L7_2 = L7_2.TireDistance
        L7_2 = -L7_2
        L7_2 = L7_2 - 3
        L8_2 = 0.0
        L9_2 = 0.0
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = L5_2.z
        L4_2.z = L5_2
        L3_2.left = L4_2
        L4_2 = {}
        L5_2 = GetOffsetFromEntityInWorldCoords
        L6_2 = L1_2
        L7_2 = CreatorData
        L7_2 = L7_2.TireDistance
        L7_2 = L7_2 + 3
        L8_2 = 0.0
        L9_2 = 0.0
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = L5_2.x
        L4_2.x = L5_2
        L5_2 = GetOffsetFromEntityInWorldCoords
        L6_2 = L1_2
        L7_2 = CreatorData
        L7_2 = L7_2.TireDistance
        L7_2 = L7_2 + 3
        L8_2 = 0.0
        L9_2 = 0.0
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = L5_2.y
        L4_2.y = L5_2
        L5_2 = GetOffsetFromEntityInWorldCoords
        L6_2 = L1_2
        L7_2 = CreatorData
        L7_2 = L7_2.TireDistance
        L7_2 = L7_2 + 3
        L8_2 = 0.0
        L9_2 = 0.0
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = L5_2.z
        L4_2.z = L5_2
        L3_2.right = L4_2
        L4_2 = DrawText3Ds
        L5_2 = L2_2.x
        L6_2 = L2_2.y
        L7_2 = L2_2.z
        L7_2 = L7_2 + 0.25
        L8_2 = Lang
        L9_2 = "CREATOR_CHECKPOINT_GUIDE"
        L8_2, L9_2 = L8_2(L9_2)
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
        L4_2 = DrawText3Ds
        L5_2 = L2_2.x
        L6_2 = L2_2.y
        L7_2 = L2_2.z
        L8_2 = Lang
        L9_2 = "CREATOR_CHECKPOINT_SAVE"
        L8_2, L9_2 = L8_2(L9_2)
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
        L4_2 = DrawText3Ds
        L5_2 = L3_2.left
        L5_2 = L5_2.x
        L6_2 = L3_2.left
        L6_2 = L6_2.y
        L7_2 = L3_2.left
        L7_2 = L7_2.z
        L8_2 = Lang
        L9_2 = "CREATOR_CHECKPOINT_LEFT"
        L8_2, L9_2 = L8_2(L9_2)
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
        L4_2 = DrawText3Ds
        L5_2 = L3_2.right
        L5_2 = L5_2.x
        L6_2 = L3_2.right
        L6_2 = L6_2.y
        L7_2 = L3_2.right
        L7_2 = L7_2.z
        L8_2 = Lang
        L9_2 = "CREATOR_CHECKPOINT_RIGHT"
        L8_2, L9_2 = L8_2(L9_2)
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      end
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 3
    L0_2(L1_2)
  end
end
L1_1(L2_1)
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = pairs
  L1_2 = CreatorData
  L1_2 = L1_2.Checkpoints
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = CreatorData
    L6_2 = L6_2.Checkpoints
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.pileleft
    if nil == L6_2 then
      L6_2 = ClearAreaOfObjects
      L7_2 = L5_2.offset
      L7_2 = L7_2.left
      L7_2 = L7_2.x
      L8_2 = L5_2.offset
      L8_2 = L8_2.left
      L8_2 = L8_2.y
      L9_2 = L5_2.offset
      L9_2 = L9_2.left
      L9_2 = L9_2.z
      L10_2 = 50.0
      L11_2 = 0
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L6_2 = CreatorData
      L6_2 = L6_2.Checkpoints
      L6_2 = L6_2[L4_2]
      L7_2 = CreateObject
      L8_2 = GetHashKey
      L9_2 = "prop_offroad_tyres02"
      L8_2 = L8_2(L9_2)
      L9_2 = L5_2.offset
      L9_2 = L9_2.left
      L9_2 = L9_2.x
      L10_2 = L5_2.offset
      L10_2 = L10_2.left
      L10_2 = L10_2.y
      L11_2 = L5_2.offset
      L11_2 = L11_2.left
      L11_2 = L11_2.z
      L12_2 = 0
      L13_2 = 0
      L14_2 = 0
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L6_2.pileleft = L7_2
      L6_2 = PlaceObjectOnGroundProperly
      L7_2 = CreatorData
      L7_2 = L7_2.Checkpoints
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.pileleft
      L6_2(L7_2)
      L6_2 = FreezeEntityPosition
      L7_2 = CreatorData
      L7_2 = L7_2.Checkpoints
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.pileleft
      L8_2 = 1
      L6_2(L7_2, L8_2)
      L6_2 = SetEntityAsMissionEntity
      L7_2 = CreatorData
      L7_2 = L7_2.Checkpoints
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.pileleft
      L8_2 = 1
      L9_2 = 1
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = CreatorData
    L6_2 = L6_2.Checkpoints
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.pileright
    if nil == L6_2 then
      L6_2 = ClearAreaOfObjects
      L7_2 = L5_2.offset
      L7_2 = L7_2.right
      L7_2 = L7_2.x
      L8_2 = L5_2.offset
      L8_2 = L8_2.right
      L8_2 = L8_2.y
      L9_2 = L5_2.offset
      L9_2 = L9_2.right
      L9_2 = L9_2.z
      L10_2 = 50.0
      L11_2 = 0
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L6_2 = CreatorData
      L6_2 = L6_2.Checkpoints
      L6_2 = L6_2[L4_2]
      L7_2 = CreateObject
      L8_2 = GetHashKey
      L9_2 = "prop_offroad_tyres02"
      L8_2 = L8_2(L9_2)
      L9_2 = L5_2.offset
      L9_2 = L9_2.right
      L9_2 = L9_2.x
      L10_2 = L5_2.offset
      L10_2 = L10_2.right
      L10_2 = L10_2.y
      L11_2 = L5_2.offset
      L11_2 = L11_2.right
      L11_2 = L11_2.z
      L12_2 = 0
      L13_2 = 0
      L14_2 = 0
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L6_2.pileright = L7_2
      L6_2 = PlaceObjectOnGroundProperly
      L7_2 = CreatorData
      L7_2 = L7_2.Checkpoints
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.pileright
      L6_2(L7_2)
      L6_2 = FreezeEntityPosition
      L7_2 = CreatorData
      L7_2 = L7_2.Checkpoints
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.pileleft
      L8_2 = 1
      L6_2(L7_2, L8_2)
      L6_2 = SetEntityAsMissionEntity
      L7_2 = CreatorData
      L7_2 = L7_2.Checkpoints
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.pileleft
      L8_2 = 1
      L9_2 = 1
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
SetupPiles = L1_1
L1_1 = AddEventHandler
L2_1 = "onResourceStop"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = pairs
    L2_2 = CreatorData
    L2_2 = L2_2.Checkpoints
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = CreatorData
      L7_2 = L7_2.Checkpoints
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.pileleft
      if nil ~= L7_2 then
        L7_2 = CreatorData
        L7_2 = L7_2.Checkpoints
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.offset
        L7_2 = L7_2.right
        L8_2 = GetClosestObjectOfType
        L9_2 = L7_2.x
        L10_2 = L7_2.y
        L11_2 = L7_2.z
        L12_2 = 5.0
        L13_2 = GetHashKey
        L14_2 = "prop_offroad_tyres02"
        L13_2 = L13_2(L14_2)
        L14_2 = 0
        L15_2 = 0
        L16_2 = 0
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        L9_2 = DeleteObject
        L10_2 = L8_2
        L9_2(L10_2)
        L9_2 = ClearAreaOfObjects
        L10_2 = L7_2.x
        L11_2 = L7_2.y
        L12_2 = L7_2.z
        L13_2 = 50.0
        L14_2 = 0
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
        L9_2 = CreatorData
        L9_2 = L9_2.Checkpoints
        L9_2 = L9_2[L5_2]
        L9_2.pileright = nil
      end
      L7_2 = CreatorData
      L7_2 = L7_2.Checkpoints
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.pileright
      if nil ~= L7_2 then
        L7_2 = CreatorData
        L7_2 = L7_2.Checkpoints
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.offset
        L7_2 = L7_2.right
        L8_2 = GetClosestObjectOfType
        L9_2 = L7_2.x
        L10_2 = L7_2.y
        L11_2 = L7_2.z
        L12_2 = 5.0
        L13_2 = GetHashKey
        L14_2 = "prop_offroad_tyres02"
        L13_2 = L13_2(L14_2)
        L14_2 = 0
        L15_2 = 0
        L16_2 = 0
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        L9_2 = DeleteObject
        L10_2 = L8_2
        L9_2(L10_2)
        L9_2 = ClearAreaOfObjects
        L10_2 = L7_2.x
        L11_2 = L7_2.y
        L12_2 = L7_2.z
        L13_2 = 50.0
        L14_2 = 0
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
        L9_2 = CreatorData
        L9_2 = L9_2.Checkpoints
        L9_2 = L9_2[L5_2]
        L9_2.pileright = nil
      end
    end
    L1_2 = pairs
    L2_2 = CurrentRaceData
    L2_2 = L2_2.Checkpoints
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = CurrentRaceData
      L7_2 = L7_2.Checkpoints
      L7_2 = L7_2[L5_2]
      if nil ~= L7_2 then
        L7_2 = CurrentRaceData
        L7_2 = L7_2.Checkpoints
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.pileleft
        if nil ~= L7_2 then
          L7_2 = CurrentRaceData
          L7_2 = L7_2.Checkpoints
          L7_2 = L7_2[L5_2]
          L7_2 = L7_2.offset
          L7_2 = L7_2.right
          L8_2 = GetClosestObjectOfType
          L9_2 = L7_2.x
          L10_2 = L7_2.y
          L11_2 = L7_2.z
          L12_2 = 5.0
          L13_2 = GetHashKey
          L14_2 = "prop_offroad_tyres02"
          L13_2 = L13_2(L14_2)
          L14_2 = 0
          L15_2 = 0
          L16_2 = 0
          L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
          L9_2 = DeleteObject
          L10_2 = L8_2
          L9_2(L10_2)
          L9_2 = ClearAreaOfObjects
          L10_2 = L7_2.x
          L11_2 = L7_2.y
          L12_2 = L7_2.z
          L13_2 = 50.0
          L14_2 = 0
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
          L9_2 = CurrentRaceData
          L9_2 = L9_2.Checkpoints
          L9_2 = L9_2[L5_2]
          L9_2.pileright = nil
        end
        L7_2 = CurrentRaceData
        L7_2 = L7_2.Checkpoints
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.pileright
        if nil ~= L7_2 then
          L7_2 = CurrentRaceData
          L7_2 = L7_2.Checkpoints
          L7_2 = L7_2[L5_2]
          L7_2 = L7_2.offset
          L7_2 = L7_2.right
          L8_2 = GetClosestObjectOfType
          L9_2 = L7_2.x
          L10_2 = L7_2.y
          L11_2 = L7_2.z
          L12_2 = 5.0
          L13_2 = GetHashKey
          L14_2 = "prop_offroad_tyres02"
          L13_2 = L13_2(L14_2)
          L14_2 = 0
          L15_2 = 0
          L16_2 = 0
          L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
          L9_2 = DeleteObject
          L10_2 = L8_2
          L9_2(L10_2)
          L9_2 = ClearAreaOfObjects
          L10_2 = L7_2.x
          L11_2 = L7_2.y
          L12_2 = L7_2.z
          L13_2 = 50.0
          L14_2 = 0
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
          L9_2 = CurrentRaceData
          L9_2 = L9_2.Checkpoints
          L9_2 = L9_2[L5_2]
          L9_2.pileright = nil
        end
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "qs-racing:client:JoinRace"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "qs-racing:client:JoinRace"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = RaceData
  L2_2 = L2_2.InRace
  if not L2_2 then
    L2_2 = RaceData
    L2_2.InRace = true
    L2_2 = SetupRace
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = TriggerServerEvent
    L3_2 = "qs-racing:server:UpdateRaceState"
    L4_2 = CurrentRaceData
    L4_2 = L4_2.RaceId
    L5_2 = false
    L6_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = SendTextMessage
    L3_2 = Lang
    L4_2 = "RACE_JOIN_ERROR"
    L3_2 = L3_2(L4_2)
    L4_2 = "error"
    L2_2(L3_2, L4_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "qs-racing:client:LeaveRace"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "qs-racing:client:LeaveRace"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = SendTextMessage
  L2_2 = Lang
  L3_2 = "RACE_COMPLETE"
  L2_2 = L2_2(L3_2)
  L3_2 = "success"
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = CurrentRaceData
  L2_2 = L2_2.Checkpoints
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = CurrentRaceData
    L7_2 = L7_2.Checkpoints
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.blip
    if nil ~= L7_2 then
      L7_2 = RemoveBlip
      L8_2 = CurrentRaceData
      L8_2 = L8_2.Checkpoints
      L8_2 = L8_2[L5_2]
      L8_2 = L8_2.blip
      L7_2(L8_2)
      L7_2 = CurrentRaceData
      L7_2 = L7_2.Checkpoints
      L7_2 = L7_2[L5_2]
      L7_2.blip = nil
    end
    L7_2 = CurrentRaceData
    L7_2 = L7_2.Checkpoints
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.pileleft
    if nil ~= L7_2 then
      L7_2 = CurrentRaceData
      L7_2 = L7_2.Checkpoints
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.offset
      L7_2 = L7_2.left
      L8_2 = GetClosestObjectOfType
      L9_2 = L7_2.x
      L10_2 = L7_2.y
      L11_2 = L7_2.z
      L12_2 = 5.0
      L13_2 = GetHashKey
      L14_2 = "prop_offroad_tyres02"
      L13_2 = L13_2(L14_2)
      L14_2 = 0
      L15_2 = 0
      L16_2 = 0
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L9_2 = DeleteObject
      L10_2 = L8_2
      L9_2(L10_2)
      L9_2 = ClearAreaOfObjects
      L10_2 = L7_2.x
      L11_2 = L7_2.y
      L12_2 = L7_2.z
      L13_2 = 50.0
      L14_2 = 0
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      L9_2 = CurrentRaceData
      L9_2 = L9_2.Checkpoints
      L9_2 = L9_2[L5_2]
      L9_2.pileleft = nil
    end
    L7_2 = CurrentRaceData
    L7_2 = L7_2.Checkpoints
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.pileright
    if nil ~= L7_2 then
      L7_2 = CurrentRaceData
      L7_2 = L7_2.Checkpoints
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.offset
      L7_2 = L7_2.right
      L8_2 = GetClosestObjectOfType
      L9_2 = L7_2.x
      L10_2 = L7_2.y
      L11_2 = L7_2.z
      L12_2 = 5.0
      L13_2 = GetHashKey
      L14_2 = "prop_offroad_tyres02"
      L13_2 = L13_2(L14_2)
      L14_2 = 0
      L15_2 = 0
      L16_2 = 0
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L9_2 = DeleteObject
      L10_2 = L8_2
      L9_2(L10_2)
      L9_2 = ClearAreaOfObjects
      L10_2 = L7_2.x
      L11_2 = L7_2.y
      L12_2 = L7_2.z
      L13_2 = 50.0
      L14_2 = 0
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      L9_2 = CurrentRaceData
      L9_2 = L9_2.Checkpoints
      L9_2 = L9_2[L5_2]
      L9_2.pileright = nil
    end
  end
  L1_2 = CurrentRaceData
  L1_2.RaceName = nil
  L1_2 = CurrentRaceData
  L2_2 = {}
  L1_2.Checkpoints = L2_2
  L1_2 = CurrentRaceData
  L1_2.Started = false
  L1_2 = CurrentRaceData
  L1_2.CurrentCheckpoint = 0
  L1_2 = CurrentRaceData
  L1_2.TotalLaps = 0
  L1_2 = CurrentRaceData
  L1_2.Lap = 0
  L1_2 = CurrentRaceData
  L1_2.RaceTime = 0
  L1_2 = CurrentRaceData
  L1_2.TotalTime = 0
  L1_2 = CurrentRaceData
  L1_2.BestLap = 0
  L1_2 = CurrentRaceData
  L1_2.RaceId = nil
  L1_2 = RaceData
  L1_2.InRace = false
  L1_2 = FreezeEntityPosition
  L2_2 = GetVehiclePedIsIn
  L3_2 = GetPlayerPed
  L4_2 = -1
  L3_2 = L3_2(L4_2)
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = false
function L2_1()
  local L0_2, L1_2
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = CurrentRaceData
      L0_3 = L0_3.Checkpoints
      if nil ~= L0_3 then
        L0_3 = next
        L1_3 = CurrentRaceData
        L1_3 = L1_3.Checkpoints
        L0_3 = L0_3(L1_3)
        if nil ~= L0_3 then
          L0_3 = CurrentRaceData
          L0_3 = L0_3.Started
          if L0_3 then
            L0_3 = CurrentRaceData
            L1_3 = CurrentRaceData
            L1_3 = L1_3.RaceTime
            L1_3 = L1_3 + 1
            L0_3.RaceTime = L1_3
            L0_3 = CurrentRaceData
            L1_3 = CurrentRaceData
            L1_3 = L1_3.TotalTime
            L1_3 = L1_3 + 1
            L0_3.TotalTime = L1_3
          end
          L0_3 = SendNUIMessage
          L1_3 = {}
          L1_3.action = "Update"
          L1_3.type = "race"
          L2_3 = {}
          L3_3 = CurrentRaceData
          L3_3 = L3_3.CurrentCheckpoint
          L2_3.CurrentCheckpoint = L3_3
          L3_3 = CurrentRaceData
          L3_3 = L3_3.Checkpoints
          L3_3 = #L3_3
          L2_3.TotalCheckpoints = L3_3
          L3_3 = CurrentRaceData
          L3_3 = L3_3.TotalLaps
          L2_3.TotalLaps = L3_3
          L3_3 = CurrentRaceData
          L3_3 = L3_3.Lap
          L2_3.CurrentLap = L3_3
          L3_3 = CurrentRaceData
          L3_3 = L3_3.Started
          L2_3.RaceStarted = L3_3
          L3_3 = CurrentRaceData
          L3_3 = L3_3.RaceName
          L2_3.RaceName = L3_3
          L3_3 = CurrentRaceData
          L3_3 = L3_3.RaceTime
          L2_3.Time = L3_3
          L3_3 = CurrentRaceData
          L3_3 = L3_3.TotalTime
          L2_3.TotalTime = L3_3
          L3_3 = CurrentRaceData
          L3_3 = L3_3.BestLap
          L2_3.BestLap = L3_3
          L1_3.data = L2_3
          L2_3 = RaceData
          L1_3.racedata = L2_3
          L1_3.active = true
          L0_3(L1_3)
      end
      else
        L0_3 = L1_1
        if not L0_3 then
          L0_3 = true
          L1_1 = L0_3
          L0_3 = SetTimeout
          L1_3 = 10000
          function L2_3()
            local L0_4, L1_4, L2_4
            L0_4 = false
            L1_1 = L0_4
            L0_4 = SendNUIMessage
            L1_4 = {}
            L1_4.action = "Update"
            L1_4.type = "race"
            L2_4 = {}
            L1_4.data = L2_4
            L2_4 = RaceData
            L1_4.racedata = L2_4
            L1_4.active = false
            L0_4(L1_4)
          end
          L0_3(L1_3, L2_3)
        end
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 12
      L0_3(L1_3)
    end
  end
  L0_2(L1_2)
end
RaceUI = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = A0_2.RaceId
  A0_2.RaceId = L2_2
  L2_2 = {}
  L3_2 = A0_2.RaceId
  L2_2.RaceId = L3_2
  L3_2 = A0_2.Creator
  L2_2.Creator = L3_2
  L3_2 = A0_2.RaceName
  L2_2.RaceName = L3_2
  L3_2 = A0_2.Checkpoints
  L2_2.Checkpoints = L3_2
  L2_2.Started = false
  L2_2.CurrentCheckpoint = 1
  L2_2.TotalLaps = A1_2
  L2_2.Lap = 1
  L2_2.RaceTime = 0
  L2_2.TotalTime = 0
  L2_2.BestLap = 0
  L3_2 = {}
  L2_2.Racers = L3_2
  CurrentRaceData = L2_2
  L2_2 = pairs
  L3_2 = CurrentRaceData
  L3_2 = L3_2.Checkpoints
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = ClearAreaOfObjects
    L9_2 = L7_2.offset
    L9_2 = L9_2.left
    L9_2 = L9_2.x
    L10_2 = L7_2.offset
    L10_2 = L10_2.left
    L10_2 = L10_2.y
    L11_2 = L7_2.offset
    L11_2 = L11_2.left
    L11_2 = L11_2.z
    L12_2 = 50.0
    L13_2 = 0
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L8_2 = CurrentRaceData
    L8_2 = L8_2.Checkpoints
    L8_2 = L8_2[L6_2]
    L9_2 = CreateObject
    L10_2 = GetHashKey
    L11_2 = "prop_offroad_tyres02"
    L10_2 = L10_2(L11_2)
    L11_2 = L7_2.offset
    L11_2 = L11_2.left
    L11_2 = L11_2.x
    L12_2 = L7_2.offset
    L12_2 = L12_2.left
    L12_2 = L12_2.y
    L13_2 = L7_2.offset
    L13_2 = L13_2.left
    L13_2 = L13_2.z
    L14_2 = 0
    L15_2 = 0
    L16_2 = 0
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L8_2.pileleft = L9_2
    L8_2 = PlaceObjectOnGroundProperly
    L9_2 = CurrentRaceData
    L9_2 = L9_2.Checkpoints
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.pileleft
    L8_2(L9_2)
    L8_2 = FreezeEntityPosition
    L9_2 = CurrentRaceData
    L9_2 = L9_2.Checkpoints
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.pileleft
    L10_2 = 1
    L8_2(L9_2, L10_2)
    L8_2 = SetEntityAsMissionEntity
    L9_2 = CurrentRaceData
    L9_2 = L9_2.Checkpoints
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.pileleft
    L10_2 = 1
    L11_2 = 1
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = ClearAreaOfObjects
    L9_2 = L7_2.offset
    L9_2 = L9_2.right
    L9_2 = L9_2.x
    L10_2 = L7_2.offset
    L10_2 = L10_2.right
    L10_2 = L10_2.y
    L11_2 = L7_2.offset
    L11_2 = L11_2.right
    L11_2 = L11_2.z
    L12_2 = 50.0
    L13_2 = 0
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L8_2 = CurrentRaceData
    L8_2 = L8_2.Checkpoints
    L8_2 = L8_2[L6_2]
    L9_2 = CreateObject
    L10_2 = GetHashKey
    L11_2 = "prop_offroad_tyres02"
    L10_2 = L10_2(L11_2)
    L11_2 = L7_2.offset
    L11_2 = L11_2.right
    L11_2 = L11_2.x
    L12_2 = L7_2.offset
    L12_2 = L12_2.right
    L12_2 = L12_2.y
    L13_2 = L7_2.offset
    L13_2 = L13_2.right
    L13_2 = L13_2.z
    L14_2 = 0
    L15_2 = 0
    L16_2 = 0
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L8_2.pileright = L9_2
    L8_2 = PlaceObjectOnGroundProperly
    L9_2 = CurrentRaceData
    L9_2 = L9_2.Checkpoints
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.pileright
    L8_2(L9_2)
    L8_2 = FreezeEntityPosition
    L9_2 = CurrentRaceData
    L9_2 = L9_2.Checkpoints
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.pileright
    L10_2 = 1
    L8_2(L9_2, L10_2)
    L8_2 = SetEntityAsMissionEntity
    L9_2 = CurrentRaceData
    L9_2 = L9_2.Checkpoints
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.pileright
    L10_2 = 1
    L11_2 = 1
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = CurrentRaceData
    L8_2 = L8_2.Checkpoints
    L8_2 = L8_2[L6_2]
    L9_2 = AddBlipForCoord
    L10_2 = L7_2.coords
    L10_2 = L10_2.x
    L11_2 = L7_2.coords
    L11_2 = L11_2.y
    L12_2 = L7_2.coords
    L12_2 = L12_2.z
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L8_2.blip = L9_2
    L8_2 = SetBlipSprite
    L9_2 = CurrentRaceData
    L9_2 = L9_2.Checkpoints
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.blip
    L10_2 = 1
    L8_2(L9_2, L10_2)
    L8_2 = SetBlipDisplay
    L9_2 = CurrentRaceData
    L9_2 = L9_2.Checkpoints
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.blip
    L10_2 = 4
    L8_2(L9_2, L10_2)
    L8_2 = SetBlipScale
    L9_2 = CurrentRaceData
    L9_2 = L9_2.Checkpoints
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.blip
    L10_2 = 0.6
    L8_2(L9_2, L10_2)
    L8_2 = SetBlipAsShortRange
    L9_2 = CurrentRaceData
    L9_2 = L9_2.Checkpoints
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.blip
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = SetBlipColour
    L9_2 = CurrentRaceData
    L9_2 = L9_2.Checkpoints
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.blip
    L10_2 = 26
    L8_2(L9_2, L10_2)
    L8_2 = ShowNumberOnBlip
    L9_2 = CurrentRaceData
    L9_2 = L9_2.Checkpoints
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.blip
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L8_2 = BeginTextCommandSetBlipName
    L9_2 = "STRING"
    L8_2(L9_2)
    L8_2 = AddTextComponentSubstringPlayerName
    L9_2 = "Checkpoint: "
    L10_2 = L6_2
    L9_2 = L9_2 .. L10_2
    L8_2(L9_2)
    L8_2 = EndTextCommandSetBlipName
    L9_2 = CurrentRaceData
    L9_2 = L9_2.Checkpoints
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.blip
    L8_2(L9_2)
  end
  L2_2 = RaceUI
  L2_2()
end
SetupRace = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = RequestNamedPtfxAsset
  L6_2 = A0_2
  L5_2(L6_2)
  while true do
    L5_2 = HasNamedPtfxAssetLoaded
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      break
    end
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 0
    L5_2(L6_2)
  end
  L5_2 = UseParticleFxAssetNextCall
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = StartParticleFxLoopedAtCoord
  L6_2 = A1_2
  L7_2 = A2_2.x
  L8_2 = A2_2.y
  L9_2 = A2_2.z
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = A3_2
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2 = SetParticleFxLoopedColour
  L7_2 = L5_2
  L8_2 = 0
  L9_2 = 255
  L10_2 = 0
  L11_2 = 0
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  return L5_2
end
showNonLoopParticle = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = CurrentRaceData
  L0_2 = L0_2.Checkpoints
  L1_2 = CurrentRaceData
  L1_2 = L1_2.CurrentCheckpoint
  L0_2 = L0_2[L1_2]
  if nil ~= L0_2 then
    L0_2 = 500
    L1_2 = 2.0
    L2_2 = showNonLoopParticle
    L3_2 = "core"
    L4_2 = "ent_sht_flame"
    L5_2 = CurrentRaceData
    L5_2 = L5_2.Checkpoints
    L6_2 = CurrentRaceData
    L6_2 = L6_2.CurrentCheckpoint
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.offset
    L5_2 = L5_2.left
    L6_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = showNonLoopParticle
    L4_2 = "core"
    L5_2 = "ent_sht_flame"
    L6_2 = CurrentRaceData
    L6_2 = L6_2.Checkpoints
    L7_2 = CurrentRaceData
    L7_2 = L7_2.CurrentCheckpoint
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.offset
    L6_2 = L6_2.right
    L7_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = SetTimeout
    L5_2 = L0_2
    function L6_2()
      local L0_3, L1_3, L2_3
      L0_3 = StopParticleFxLooped
      L1_3 = L2_2
      L2_3 = false
      L0_3(L1_3, L2_3)
      L0_3 = StopParticleFxLooped
      L1_3 = L3_2
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
    L4_2(L5_2, L6_2)
  end
end
DoPilePfx = L2_1
L2_1 = RegisterNetEvent
L3_1 = "qs-racing:client:RaceCountdown"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "qs-racing:client:RaceCountdown"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = TriggerServerEvent
  L1_2 = "qs-racing:server:UpdateRaceState"
  L2_2 = CurrentRaceData
  L2_2 = L2_2.RaceId
  L3_2 = true
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = CurrentRaceData
  L0_2 = L0_2.RaceId
  if nil ~= L0_2 then
    while true do
      L0_2 = L0_1
      if 0 == L0_2 then
        break
      end
      L0_2 = CurrentRaceData
      L0_2 = L0_2.RaceName
      if nil ~= L0_2 then
        L0_2 = L0_1
        if 10 == L0_2 then
          L0_2 = SendTextMessage
          L1_2 = Lang
          L2_2 = "RACE_COUNTDOWN"
          L1_2 = L1_2(L2_2)
          L2_2 = "inform"
          L0_2(L1_2, L2_2)
          L0_2 = PlaySound
          L1_2 = -1
          L2_2 = "slow"
          L3_2 = "SHORT_PLAYER_SWITCH_SOUND_SET"
          L4_2 = 0
          L5_2 = 0
          L6_2 = 1
          L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
        else
          L0_2 = L0_1
          if L0_2 <= 5 then
            L0_2 = SendTextMessage
            L1_2 = L0_1
            L2_2 = "inform"
            L0_2(L1_2, L2_2)
            L0_2 = PlaySound
            L1_2 = -1
            L2_2 = "slow"
            L3_2 = "SHORT_PLAYER_SWITCH_SOUND_SET"
            L4_2 = 0
            L5_2 = 0
            L6_2 = 1
            L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
          end
        end
        L0_2 = L0_1
        L0_2 = L0_2 - 1
        L0_1 = L0_2
        L0_2 = FreezeEntityPosition
        L1_2 = GetVehiclePedIsIn
        L2_2 = GetPlayerPed
        L3_2 = -1
        L2_2 = L2_2(L3_2)
        L3_2 = true
        L1_2 = L1_2(L2_2, L3_2)
        L2_2 = true
        L0_2(L1_2, L2_2)
      else
        break
      end
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 1000
      L0_2(L1_2)
    end
    L0_2 = CurrentRaceData
    L0_2 = L0_2.RaceName
    if nil ~= L0_2 then
      L0_2 = SetNewWaypoint
      L1_2 = CurrentRaceData
      L1_2 = L1_2.Checkpoints
      L2_2 = CurrentRaceData
      L2_2 = L2_2.CurrentCheckpoint
      L2_2 = L2_2 + 1
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.coords
      L1_2 = L1_2.x
      L2_2 = CurrentRaceData
      L2_2 = L2_2.Checkpoints
      L3_2 = CurrentRaceData
      L3_2 = L3_2.CurrentCheckpoint
      L3_2 = L3_2 + 1
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.coords
      L2_2 = L2_2.y
      L0_2(L1_2, L2_2)
      L0_2 = SendTextMessage
      L1_2 = Lang
      L2_2 = "RACE_START"
      L1_2 = L1_2(L2_2)
      L2_2 = "inform"
      L0_2(L1_2, L2_2)
      L0_2 = SetBlipScale
      L1_2 = CurrentRaceData
      L1_2 = L1_2.Checkpoints
      L2_2 = CurrentRaceData
      L2_2 = L2_2.CurrentCheckpoint
      L2_2 = L2_2 + 1
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.blip
      L2_2 = 1.0
      L0_2(L1_2, L2_2)
      L0_2 = FreezeEntityPosition
      L1_2 = GetVehiclePedIsIn
      L2_2 = GetPlayerPed
      L3_2 = -1
      L2_2 = L2_2(L3_2)
      L3_2 = true
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = false
      L0_2(L1_2, L2_2)
      L0_2 = DoPilePfx
      L0_2()
      L0_2 = CurrentRaceData
      L0_2.Started = true
      L0_2 = 10
      L0_1 = L0_2
    else
      L0_2 = FreezeEntityPosition
      L1_2 = GetVehiclePedIsIn
      L2_2 = GetPlayerPed
      L3_2 = -1
      L2_2 = L2_2(L3_2)
      L3_2 = true
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = false
      L0_2(L1_2, L2_2)
      L0_2 = 10
      L0_1 = L0_2
    end
  else
    L0_2 = SendTextMessage
    L1_2 = Lang
    L2_2 = "RACE_NOT_IN"
    L1_2 = L1_2(L2_2)
    L2_2 = "error"
    L0_2(L1_2, L2_2)
  end
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = false
  L2_2 = CurrentRaceData
  L2_2 = L2_2.RaceId
  if nil ~= L2_2 then
    L2_2 = CurrentRaceData
    L2_2 = L2_2.Creator
    if L2_2 == A0_2 then
      L1_2 = true
    end
  end
  return L1_2
end
IsRaceCreator = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetDistanceBetweenCoords
  L2_2 = A0_2.left
  L2_2 = L2_2.x
  L3_2 = A0_2.left
  L3_2 = L3_2.y
  L4_2 = A0_2.left
  L4_2 = L4_2.z
  L5_2 = A0_2.right
  L5_2 = L5_2.x
  L6_2 = A0_2.right
  L6_2 = L6_2.y
  L7_2 = A0_2.right
  L7_2 = L7_2.z
  L8_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = 7.5
  if L1_2 > 20.0 then
    L2_2 = 12.5
  end
  return L2_2
end
GetMaxDistance = L2_1
L2_1 = Citizen
L2_1 = L2_1.CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  while true do
    L0_2 = GetPlayerPed
    L1_2 = -1
    L0_2 = L0_2(L1_2)
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = CurrentRaceData
    L2_2 = L2_2.RaceName
    if nil ~= L2_2 then
      L2_2 = CurrentRaceData
      L2_2 = L2_2.Started
      if L2_2 then
        L2_2 = 0
        L3_2 = CurrentRaceData
        L3_2 = L3_2.CurrentCheckpoint
        L3_2 = L3_2 + 1
        L4_2 = CurrentRaceData
        L4_2 = L4_2.Checkpoints
        L4_2 = #L4_2
        if L3_2 > L4_2 then
          L2_2 = 1
        else
          L3_2 = CurrentRaceData
          L3_2 = L3_2.CurrentCheckpoint
          L2_2 = L3_2 + 1
        end
        L3_2 = CurrentRaceData
        L3_2 = L3_2.Checkpoints
        L3_2 = L3_2[L2_2]
        L4_2 = GetDistanceBetweenCoords
        L5_2 = L1_2
        L6_2 = L3_2.coords
        L6_2 = L6_2.x
        L7_2 = L3_2.coords
        L7_2 = L7_2.y
        L8_2 = L3_2.coords
        L8_2 = L8_2.z
        L9_2 = true
        L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
        L5_2 = GetMaxDistance
        L6_2 = CurrentRaceData
        L6_2 = L6_2.Checkpoints
        L6_2 = L6_2[L2_2]
        L6_2 = L6_2.offset
        L5_2 = L5_2(L6_2)
        if L4_2 < L5_2 then
          L6_2 = CurrentRaceData
          L6_2 = L6_2.TotalLaps
          if 0 == L6_2 then
            L6_2 = CurrentRaceData
            L6_2 = L6_2.CurrentCheckpoint
            L6_2 = L6_2 + 1
            L7_2 = CurrentRaceData
            L7_2 = L7_2.Checkpoints
            L7_2 = #L7_2
            if L6_2 < L7_2 then
              L6_2 = CurrentRaceData
              L7_2 = CurrentRaceData
              L7_2 = L7_2.CurrentCheckpoint
              L7_2 = L7_2 + 1
              L6_2.CurrentCheckpoint = L7_2
              L6_2 = SetNewWaypoint
              L7_2 = CurrentRaceData
              L7_2 = L7_2.Checkpoints
              L8_2 = CurrentRaceData
              L8_2 = L8_2.CurrentCheckpoint
              L8_2 = L8_2 + 1
              L7_2 = L7_2[L8_2]
              L7_2 = L7_2.coords
              L7_2 = L7_2.x
              L8_2 = CurrentRaceData
              L8_2 = L8_2.Checkpoints
              L9_2 = CurrentRaceData
              L9_2 = L9_2.CurrentCheckpoint
              L9_2 = L9_2 + 1
              L8_2 = L8_2[L9_2]
              L8_2 = L8_2.coords
              L8_2 = L8_2.y
              L6_2(L7_2, L8_2)
              L6_2 = TriggerServerEvent
              L7_2 = "qs-racing:server:UpdateRacerData"
              L8_2 = CurrentRaceData
              L8_2 = L8_2.RaceId
              L9_2 = CurrentRaceData
              L9_2 = L9_2.CurrentCheckpoint
              L10_2 = CurrentRaceData
              L10_2 = L10_2.Lap
              L11_2 = false
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
              L6_2 = DoPilePfx
              L6_2()
              L6_2 = PlaySound
              L7_2 = -1
              L8_2 = "SELECT"
              L9_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              L10_2 = 0
              L11_2 = 0
              L12_2 = 1
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
              L6_2 = SetBlipScale
              L7_2 = CurrentRaceData
              L7_2 = L7_2.Checkpoints
              L8_2 = CurrentRaceData
              L8_2 = L8_2.CurrentCheckpoint
              L7_2 = L7_2[L8_2]
              L7_2 = L7_2.blip
              L8_2 = 0.6
              L6_2(L7_2, L8_2)
              L6_2 = SetBlipScale
              L7_2 = CurrentRaceData
              L7_2 = L7_2.Checkpoints
              L8_2 = CurrentRaceData
              L8_2 = L8_2.CurrentCheckpoint
              L8_2 = L8_2 + 1
              L7_2 = L7_2[L8_2]
              L7_2 = L7_2.blip
              L8_2 = 1.0
              L6_2(L7_2, L8_2)
            else
              L6_2 = DoPilePfx
              L6_2()
              L6_2 = PlaySound
              L7_2 = -1
              L8_2 = "SELECT"
              L9_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              L10_2 = 0
              L11_2 = 0
              L12_2 = 1
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
              L6_2 = CurrentRaceData
              L7_2 = CurrentRaceData
              L7_2 = L7_2.CurrentCheckpoint
              L7_2 = L7_2 + 1
              L6_2.CurrentCheckpoint = L7_2
              L6_2 = TriggerServerEvent
              L7_2 = "qs-racing:server:UpdateRacerData"
              L8_2 = CurrentRaceData
              L8_2 = L8_2.RaceId
              L9_2 = CurrentRaceData
              L9_2 = L9_2.CurrentCheckpoint
              L10_2 = CurrentRaceData
              L10_2 = L10_2.Lap
              L11_2 = true
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
              L6_2 = FinishRace
              L6_2()
            end
          else
            L6_2 = CurrentRaceData
            L6_2 = L6_2.CurrentCheckpoint
            L6_2 = L6_2 + 1
            L7_2 = CurrentRaceData
            L7_2 = L7_2.Checkpoints
            L7_2 = #L7_2
            if L6_2 > L7_2 then
              L6_2 = CurrentRaceData
              L6_2 = L6_2.Lap
              L6_2 = L6_2 + 1
              L7_2 = CurrentRaceData
              L7_2 = L7_2.TotalLaps
              if L6_2 > L7_2 then
                L6_2 = DoPilePfx
                L6_2()
                L6_2 = PlaySound
                L7_2 = -1
                L8_2 = "SELECT"
                L9_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                L10_2 = 0
                L11_2 = 0
                L12_2 = 1
                L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
                L6_2 = CurrentRaceData
                L7_2 = CurrentRaceData
                L7_2 = L7_2.CurrentCheckpoint
                L7_2 = L7_2 + 1
                L6_2.CurrentCheckpoint = L7_2
                L6_2 = TriggerServerEvent
                L7_2 = "qs-racing:server:UpdateRacerData"
                L8_2 = CurrentRaceData
                L8_2 = L8_2.RaceId
                L9_2 = CurrentRaceData
                L9_2 = L9_2.CurrentCheckpoint
                L10_2 = CurrentRaceData
                L10_2 = L10_2.Lap
                L11_2 = true
                L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
                L6_2 = FinishRace
                L6_2()
              else
                L6_2 = DoPilePfx
                L6_2()
                L6_2 = PlaySound
                L7_2 = -1
                L8_2 = "SELECT"
                L9_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                L10_2 = 0
                L11_2 = 0
                L12_2 = 1
                L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
                L6_2 = CurrentRaceData
                L6_2 = L6_2.RaceTime
                L7_2 = CurrentRaceData
                L7_2 = L7_2.BestLap
                if L6_2 < L7_2 then
                  L6_2 = CurrentRaceData
                  L7_2 = CurrentRaceData
                  L7_2 = L7_2.RaceTime
                  L6_2.BestLap = L7_2
                else
                  L6_2 = CurrentRaceData
                  L6_2 = L6_2.BestLap
                  if 0 == L6_2 then
                    L6_2 = CurrentRaceData
                    L7_2 = CurrentRaceData
                    L7_2 = L7_2.RaceTime
                    L6_2.BestLap = L7_2
                  end
                end
                L6_2 = CurrentRaceData
                L6_2.RaceTime = 0
                L6_2 = CurrentRaceData
                L7_2 = CurrentRaceData
                L7_2 = L7_2.Lap
                L7_2 = L7_2 + 1
                L6_2.Lap = L7_2
                L6_2 = CurrentRaceData
                L6_2.CurrentCheckpoint = 1
                L6_2 = SetNewWaypoint
                L7_2 = CurrentRaceData
                L7_2 = L7_2.Checkpoints
                L8_2 = CurrentRaceData
                L8_2 = L8_2.CurrentCheckpoint
                L8_2 = L8_2 + 1
                L7_2 = L7_2[L8_2]
                L7_2 = L7_2.coords
                L7_2 = L7_2.x
                L8_2 = CurrentRaceData
                L8_2 = L8_2.Checkpoints
                L9_2 = CurrentRaceData
                L9_2 = L9_2.CurrentCheckpoint
                L9_2 = L9_2 + 1
                L8_2 = L8_2[L9_2]
                L8_2 = L8_2.coords
                L8_2 = L8_2.y
                L6_2(L7_2, L8_2)
                L6_2 = TriggerServerEvent
                L7_2 = "qs-racing:server:UpdateRacerData"
                L8_2 = CurrentRaceData
                L8_2 = L8_2.RaceId
                L9_2 = CurrentRaceData
                L9_2 = L9_2.CurrentCheckpoint
                L10_2 = CurrentRaceData
                L10_2 = L10_2.Lap
                L11_2 = false
                L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
              end
            else
              L6_2 = CurrentRaceData
              L7_2 = CurrentRaceData
              L7_2 = L7_2.CurrentCheckpoint
              L7_2 = L7_2 + 1
              L6_2.CurrentCheckpoint = L7_2
              L6_2 = CurrentRaceData
              L6_2 = L6_2.CurrentCheckpoint
              L7_2 = CurrentRaceData
              L7_2 = L7_2.Checkpoints
              L7_2 = #L7_2
              if L6_2 ~= L7_2 then
                L6_2 = SetNewWaypoint
                L7_2 = CurrentRaceData
                L7_2 = L7_2.Checkpoints
                L8_2 = CurrentRaceData
                L8_2 = L8_2.CurrentCheckpoint
                L8_2 = L8_2 + 1
                L7_2 = L7_2[L8_2]
                L7_2 = L7_2.coords
                L7_2 = L7_2.x
                L8_2 = CurrentRaceData
                L8_2 = L8_2.Checkpoints
                L9_2 = CurrentRaceData
                L9_2 = L9_2.CurrentCheckpoint
                L9_2 = L9_2 + 1
                L8_2 = L8_2[L9_2]
                L8_2 = L8_2.coords
                L8_2 = L8_2.y
                L6_2(L7_2, L8_2)
                L6_2 = TriggerServerEvent
                L7_2 = "qs-racing:server:UpdateRacerData"
                L8_2 = CurrentRaceData
                L8_2 = L8_2.RaceId
                L9_2 = CurrentRaceData
                L9_2 = L9_2.CurrentCheckpoint
                L10_2 = CurrentRaceData
                L10_2 = L10_2.Lap
                L11_2 = false
                L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
                L6_2 = SetBlipScale
                L7_2 = CurrentRaceData
                L7_2 = L7_2.Checkpoints
                L8_2 = CurrentRaceData
                L8_2 = L8_2.CurrentCheckpoint
                L7_2 = L7_2[L8_2]
                L7_2 = L7_2.blip
                L8_2 = 0.6
                L6_2(L7_2, L8_2)
                L6_2 = SetBlipScale
                L7_2 = CurrentRaceData
                L7_2 = L7_2.Checkpoints
                L8_2 = CurrentRaceData
                L8_2 = L8_2.CurrentCheckpoint
                L8_2 = L8_2 + 1
                L7_2 = L7_2[L8_2]
                L7_2 = L7_2.blip
                L8_2 = 1.0
                L6_2(L7_2, L8_2)
              else
                L6_2 = SetNewWaypoint
                L7_2 = CurrentRaceData
                L7_2 = L7_2.Checkpoints
                L7_2 = L7_2[1]
                L7_2 = L7_2.coords
                L7_2 = L7_2.x
                L8_2 = CurrentRaceData
                L8_2 = L8_2.Checkpoints
                L8_2 = L8_2[1]
                L8_2 = L8_2.coords
                L8_2 = L8_2.y
                L6_2(L7_2, L8_2)
                L6_2 = TriggerServerEvent
                L7_2 = "qs-racing:server:UpdateRacerData"
                L8_2 = CurrentRaceData
                L8_2 = L8_2.RaceId
                L9_2 = CurrentRaceData
                L9_2 = L9_2.CurrentCheckpoint
                L10_2 = CurrentRaceData
                L10_2 = L10_2.Lap
                L11_2 = false
                L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
                L6_2 = SetBlipScale
                L7_2 = CurrentRaceData
                L7_2 = L7_2.Checkpoints
                L8_2 = CurrentRaceData
                L8_2 = L8_2.Checkpoints
                L8_2 = #L8_2
                L7_2 = L7_2[L8_2]
                L7_2 = L7_2.blip
                L8_2 = 0.6
                L6_2(L7_2, L8_2)
                L6_2 = SetBlipScale
                L7_2 = CurrentRaceData
                L7_2 = L7_2.Checkpoints
                L7_2 = L7_2[1]
                L7_2 = L7_2.blip
                L8_2 = 1.0
                L6_2(L7_2, L8_2)
              end
              L6_2 = DoPilePfx
              L6_2()
              L6_2 = PlaySound
              L7_2 = -1
              L8_2 = "SELECT"
              L9_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              L10_2 = 0
              L11_2 = 0
              L12_2 = 1
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
            end
          end
        end
      else
        L2_2 = CurrentRaceData
        L2_2 = L2_2.Checkpoints
        L3_2 = CurrentRaceData
        L3_2 = L3_2.CurrentCheckpoint
        L2_2 = L2_2[L3_2]
        L3_2 = DrawText3Ds
        L4_2 = L2_2.coords
        L4_2 = L4_2.x
        L5_2 = L2_2.coords
        L5_2 = L5_2.y
        L6_2 = L2_2.coords
        L6_2 = L6_2.z
        L6_2 = L6_2 + 0.5
        L7_2 = Lang
        L8_2 = "RACE_GET_READY"
        L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L7_2(L8_2)
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
        L3_2 = DrawMarker
        L4_2 = 4
        L5_2 = L2_2.coords
        L5_2 = L5_2.x
        L6_2 = L2_2.coords
        L6_2 = L6_2.y
        L7_2 = L2_2.coords
        L7_2 = L7_2.z
        L7_2 = L7_2 + 1.5
        L8_2 = 0.0
        L9_2 = 0.0
        L10_2 = 0.0
        L11_2 = 0.0
        L12_2 = 0.0
        L13_2 = 0.0
        L14_2 = 1.9
        L15_2 = 1.5
        L16_2 = 1.5
        L17_2 = 255
        L18_2 = 255
        L19_2 = 255
        L20_2 = 255
        L21_2 = 0
        L22_2 = 1
        L23_2 = 0
        L24_2 = 0
        L25_2 = 0
        L26_2 = 0
        L27_2 = 0
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
      end
    else
      L2_2 = Citizen
      L2_2 = L2_2.Wait
      L3_2 = 1000
      L2_2(L3_2)
    end
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 3
    L2_2(L3_2)
  end
end
L2_1(L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  if L1_2 <= 0 then
    L2_2 = "00:00:00"
  else
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "%02.f"
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = L1_2 / 3600
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    hours = L3_2
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "%02.f"
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = L1_2 / 60
    L7_2 = hours
    L7_2 = L7_2 * 60
    L6_2 = L6_2 - L7_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    mins = L3_2
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "%02.f"
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = hours
    L6_2 = L6_2 * 3600
    L6_2 = L1_2 - L6_2
    L7_2 = mins
    L7_2 = L7_2 * 60
    L6_2 = L6_2 - L7_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    secs = L3_2
    L3_2 = hours
    L4_2 = ":"
    L5_2 = mins
    L6_2 = ":"
    L7_2 = secs
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
    L2_2 = L3_2
  end
  return L2_2
end
SecondsToClock = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = TriggerServerEvent
  L1_2 = "qs-racing:server:FinishPlayer"
  L2_2 = CurrentRaceData
  L3_2 = CurrentRaceData
  L3_2 = L3_2.TotalTime
  L4_2 = CurrentRaceData
  L4_2 = L4_2.TotalLaps
  L5_2 = CurrentRaceData
  L5_2 = L5_2.BestLap
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = CurrentRaceData
  L0_2 = L0_2.BestLap
  if 0 ~= L0_2 then
    L0_2 = SendTextMessage
    L1_2 = Lang
    L2_2 = "RACE_FINISH_IN"
    L1_2 = L1_2(L2_2)
    L2_2 = " "
    L3_2 = SecondsToClock
    L4_2 = CurrentRaceData
    L4_2 = L4_2.TotalTime
    L3_2 = L3_2(L4_2)
    L4_2 = " "
    L5_2 = Lang
    L6_2 = "RACE_BEST_ROUND"
    L5_2 = L5_2(L6_2)
    L6_2 = " "
    L7_2 = SecondsToClock
    L8_2 = CurrentRaceData
    L8_2 = L8_2.BestLap
    L7_2 = L7_2(L8_2)
    L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
    L2_2 = "success"
    L0_2(L1_2, L2_2)
  else
    L0_2 = SendTextMessage
    L1_2 = Lang
    L2_2 = "RACE_FINISH_IN"
    L1_2 = L1_2(L2_2)
    L2_2 = " "
    L3_2 = SecondsToClock
    L4_2 = CurrentRaceData
    L4_2 = L4_2.TotalTime
    L3_2 = L3_2(L4_2)
    L1_2 = L1_2 .. L2_2 .. L3_2
    L2_2 = "success"
    L0_2(L1_2, L2_2)
  end
  L0_2 = pairs
  L1_2 = CurrentRaceData
  L1_2 = L1_2.Checkpoints
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = CurrentRaceData
    L6_2 = L6_2.Checkpoints
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.blip
    if nil ~= L6_2 then
      L6_2 = RemoveBlip
      L7_2 = CurrentRaceData
      L7_2 = L7_2.Checkpoints
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.blip
      L6_2(L7_2)
      L6_2 = CurrentRaceData
      L6_2 = L6_2.Checkpoints
      L6_2 = L6_2[L4_2]
      L6_2.blip = nil
    end
    L6_2 = CurrentRaceData
    L6_2 = L6_2.Checkpoints
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.pileleft
    if nil ~= L6_2 then
      L6_2 = CurrentRaceData
      L6_2 = L6_2.Checkpoints
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.offset
      L6_2 = L6_2.left
      L7_2 = GetClosestObjectOfType
      L8_2 = L6_2.x
      L9_2 = L6_2.y
      L10_2 = L6_2.z
      L11_2 = 5.0
      L12_2 = GetHashKey
      L13_2 = "prop_offroad_tyres02"
      L12_2 = L12_2(L13_2)
      L13_2 = 0
      L14_2 = 0
      L15_2 = 0
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L8_2 = DeleteObject
      L9_2 = L7_2
      L8_2(L9_2)
      L8_2 = ClearAreaOfObjects
      L9_2 = L6_2.x
      L10_2 = L6_2.y
      L11_2 = L6_2.z
      L12_2 = 50.0
      L13_2 = 0
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
      L8_2 = CurrentRaceData
      L8_2 = L8_2.Checkpoints
      L8_2 = L8_2[L4_2]
      L8_2.pileleft = nil
    end
    L6_2 = CurrentRaceData
    L6_2 = L6_2.Checkpoints
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.pileright
    if nil ~= L6_2 then
      L6_2 = CurrentRaceData
      L6_2 = L6_2.Checkpoints
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.offset
      L6_2 = L6_2.right
      L7_2 = GetClosestObjectOfType
      L8_2 = L6_2.x
      L9_2 = L6_2.y
      L10_2 = L6_2.z
      L11_2 = 5.0
      L12_2 = GetHashKey
      L13_2 = "prop_offroad_tyres02"
      L12_2 = L12_2(L13_2)
      L13_2 = 0
      L14_2 = 0
      L15_2 = 0
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L8_2 = DeleteObject
      L9_2 = L7_2
      L8_2(L9_2)
      L8_2 = ClearAreaOfObjects
      L9_2 = L6_2.x
      L10_2 = L6_2.y
      L11_2 = L6_2.z
      L12_2 = 50.0
      L13_2 = 0
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
      L8_2 = CurrentRaceData
      L8_2 = L8_2.Checkpoints
      L8_2 = L8_2[L4_2]
      L8_2.pileright = nil
    end
  end
  L0_2 = CurrentRaceData
  L0_2.RaceName = nil
  L0_2 = CurrentRaceData
  L1_2 = {}
  L0_2.Checkpoints = L1_2
  L0_2 = CurrentRaceData
  L0_2.Started = false
  L0_2 = CurrentRaceData
  L0_2.CurrentCheckpoint = 0
  L0_2 = CurrentRaceData
  L0_2.TotalLaps = 0
  L0_2 = CurrentRaceData
  L0_2.Lap = 0
  L0_2 = CurrentRaceData
  L0_2.RaceTime = 0
  L0_2 = CurrentRaceData
  L0_2.TotalTime = 0
  L0_2 = CurrentRaceData
  L0_2.BestLap = 0
  L0_2 = CurrentRaceData
  L0_2.RaceId = nil
  L0_2 = RaceData
  L0_2.InRace = false
end
FinishRace = L2_1
L2_1 = RegisterNetEvent
L3_1 = "qs-racing:client:PlayerFinishs"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "qs-racing:client:PlayerFinishs"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = CurrentRaceData
  L3_2 = L3_2.RaceId
  if nil ~= L3_2 then
    L3_2 = CurrentRaceData
    L3_2 = L3_2.RaceId
    if L3_2 == A0_2 then
      L3_2 = SendTextMessage
      L4_2 = A2_2.PlayerData
      L4_2 = L4_2.charinfo
      L4_2 = L4_2.firstname
      L5_2 = " "
      L6_2 = Lang
      L7_2 = "RACE_POSITION"
      L6_2 = L6_2(L7_2)
      L7_2 = " "
      L8_2 = A1_2
      L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
      L5_2 = "inform"
      L3_2(L4_2, L5_2)
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = Citizen
L2_1 = L2_1.CreateThread
function L3_1()
  local L0_2, L1_2
  while true do
    L0_2 = RaceData
    L0_2 = L0_2.InCreator
    if L0_2 then
      L0_2 = GetClosestCheckpoint
      L0_2()
      L0_2 = SetupPiles
      L0_2()
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 1000
    L0_2(L1_2)
  end
end
L2_1(L3_1)
L2_1 = 10
L3_1 = RegisterNetEvent
L4_1 = "qs-racing:client:WaitingDistanceCheck"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "qs-racing:client:WaitingDistanceCheck"
function L5_1()
  local L0_2, L1_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    while true do
      L0_3 = CurrentRaceData
      L0_3 = L0_3.Started
      if not L0_3 then
        L0_3 = GetPlayerPed
        L1_3 = -1
        L0_3 = L0_3(L1_3)
        L1_3 = GetEntityCoords
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        L2_3 = CurrentRaceData
        L2_3 = L2_3.Checkpoints
        L2_3 = L2_3[1]
        if nil ~= L2_3 then
          L2_3 = CurrentRaceData
          L2_3 = L2_3.Checkpoints
          L2_3 = L2_3[1]
          L2_3 = L2_3.coords
          L3_3 = GetDistanceBetweenCoords
          L4_3 = L1_3
          L5_3 = L2_3.x
          L6_3 = L2_3.y
          L7_3 = L2_3.z
          L8_3 = true
          L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
          if L3_3 > 115.0 then
            L4_3 = L2_1
            if 0 ~= L4_3 then
              L4_3 = L2_1
              L4_3 = L4_3 - 1
              L2_1 = L4_3
              L4_3 = SendTextMessage
              L5_3 = Lang
              L6_3 = "RACE_BACK_COOLDOWN"
              L5_3 = L5_3(L6_3)
              L6_3 = " "
              L7_3 = L2_1
              L8_3 = "s."
              L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3
              L6_3 = "error"
              L4_3(L5_3, L6_3)
            else
              L4_3 = TriggerServerEvent
              L5_3 = "qs-racing:server:LeaveRace"
              L6_3 = CurrentRaceData
              L4_3(L5_3, L6_3)
              L4_3 = 10
              L2_1 = L4_3
              break
            end
            L4_3 = Citizen
            L4_3 = L4_3.Wait
            L5_3 = 1000
            L4_3(L5_3)
          else
            L4_3 = L2_1
            if 10 ~= L4_3 then
              L4_3 = 10
              L2_1 = L4_3
            end
          end
        end
      else
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 3
      L0_3(L1_3)
    end
  end
  L0_2(L1_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "qs-racing:sendMessage"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "qs-racing:sendMessage"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SendTextMessage
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L3_1(L4_1, L5_1)
function L3_1(A0_2)
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
Lang = L3_1
