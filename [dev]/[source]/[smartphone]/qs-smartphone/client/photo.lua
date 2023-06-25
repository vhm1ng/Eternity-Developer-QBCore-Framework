local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = {}
L0_1.ESC = 322
L0_1.F1 = 288
L0_1.F2 = 289
L0_1.F3 = 170
L0_1.F5 = 166
L0_1.F6 = 167
L0_1.F7 = 168
L0_1.F8 = 169
L0_1.F9 = 56
L0_1.F10 = 57
L0_1["~"] = 243
L0_1["1"] = 157
L0_1["2"] = 158
L0_1["3"] = 160
L0_1["4"] = 164
L0_1["5"] = 165
L0_1["6"] = 159
L0_1["7"] = 161
L0_1["8"] = 162
L0_1["9"] = 163
L0_1["-"] = 84
L0_1["="] = 83
L0_1.BACKSPACE = 177
L0_1.TAB = 37
L0_1.Q = 44
L0_1.W = 32
L0_1.E = 38
L0_1.R = 45
L0_1.T = 245
L0_1.Y = 246
L0_1.U = 303
L0_1.P = 199
L0_1["["] = 39
L0_1["]"] = 40
L0_1.ENTER = 18
L0_1.CAPS = 137
L0_1.A = 34
L0_1.S = 8
L0_1.D = 9
L0_1.F = 23
L0_1.G = 47
L0_1.H = 74
L0_1.K = 311
L0_1.L = 182
L0_1.LEFTSHIFT = 21
L0_1.Z = 20
L0_1.X = 73
L0_1.C = 26
L0_1.V = 0
L0_1.B = 29
L0_1.N = 249
L0_1.M = 244
L0_1[","] = 82
L0_1["."] = 81
L0_1.LEFTCTRL = 36
L0_1.LEFTALT = 19
L0_1.SPACE = 22
L0_1.RIGHTCTRL = 70
L0_1.HOME = 213
L0_1.PAGEUP = 10
L0_1.PAGEDOWN = 11
L0_1.DELETE = 178
L0_1.LEFT = 174
L0_1.RIGHT = 175
L0_1.TOP = 27
L0_1.DOWN = 173
L0_1.NENTER = 201
L0_1.N4 = 108
L0_1.N5 = 60
L0_1.N6 = 107
L0_1["N+"] = 96
L0_1["N-"] = 97
L0_1.N7 = 117
L0_1.N8 = 61
L0_1.N9 = 118
L1_1 = false
phone = false
phoneId = 0
frontCam = false
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Citizen
  L1_2 = L1_2.InvokeNative
  L2_2 = 2635073306796480568
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
CellFrontCamActivate = L2_1
L2_1 = N_0xa67c35c56eb1bd9d
TakePhoto = L2_1
L2_1 = N_0x0d6ca79eeebd8ca3
WasPhotoTaken = L2_1
L2_1 = N_0x3dec726c25a11bac
SavePhoto = L2_1
L2_1 = N_0xd801cc02177fa3f1
ClearPhoto = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.openCinema = false
  L0_2(L1_2)
  L0_2 = DisplayRadar
  L1_2 = true
  L0_2(L1_2)
end
ResetHUD = L2_1
L2_1 = Citizen
L2_1 = L2_1.CreateThread
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = DestroyMobilePhone
  L0_2()
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = phone
    if L0_2 then
      L0_2 = DisplayRadar
      L1_2 = false
      L0_2(L1_2)
      L0_2 = IsControlJustPressed
      L1_2 = 1
      L2_2 = L0_1.BACKSPACE
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        L0_2 = IsControlJustPressed
        L1_2 = 1
        L2_2 = 177
        L0_2 = L0_2(L1_2, L2_2)
        if not L0_2 then
          goto lbl_41
        end
      end
      L0_2 = DestroyMobilePhone
      L0_2()
      phone = false
      L0_2 = CellCamActivate
      L1_2 = false
      L2_2 = false
      L0_2(L1_2, L2_2)
      L0_2 = firstTime
      if true == L0_2 then
        firstTime = false
        L0_2 = Citizen
        L0_2 = L0_2.Wait
        L1_2 = 2500
        L0_2(L1_2)
        displayDoneMission = true
      end
      ::lbl_41::
      L0_2 = IsControlJustPressed
      L1_2 = 1
      L2_2 = L0_1.TOP
      L0_2 = L0_2(L1_2, L2_2)
      if L0_2 then
        L0_2 = frontCam
        L0_2 = not L0_2
        frontCam = L0_2
        L0_2 = CellFrontCamActivate
        L1_2 = frontCam
        L0_2(L1_2)
      end
      L0_2 = IsControlJustPressed
      L1_2 = 1
      L2_2 = 176
      L0_2 = L0_2(L1_2, L2_2)
      if L0_2 then
        L0_2 = TakePhoto
        L0_2()
        L0_2 = WasPhotoTaken
        L0_2 = L0_2()
        if L0_2 then
          L0_2 = SavePhoto
          L1_2 = -1
          L0_2 = L0_2(L1_2)
          if L0_2 then
            L0_2 = ClearPhoto
            L0_2()
          end
        end
      end
      L0_2 = IsControlJustPressed
      L1_2 = 1
      L2_2 = 176
      L0_2 = L0_2(L1_2, L2_2)
      if L0_2 then
        L0_2 = TriggerEvent
        L1_2 = "es:setMoneyDisplay"
        L2_2 = 0.0
        L0_2(L1_2, L2_2)
        L0_2 = TriggerEvent
        L1_2 = Config
        L1_2 = L1_2.statussetDisplay
        L2_2 = 0.0
        L0_2(L1_2, L2_2)
        L0_2 = TriggerEvent
        L1_2 = "ui:toggle"
        L2_2 = false
        L0_2(L1_2, L2_2)
        L0_2 = TriggerEvent
        L1_2 = "ui:togglespeedo"
        L0_2(L1_2)
        L0_2 = DisplayRadar
        L1_2 = false
        L0_2(L1_2)
        L0_2 = Citizen
        L0_2 = L0_2.Wait
        L1_2 = 250
        L0_2(L1_2)
        L0_2 = ResetHUD
        L0_2()
        L0_2 = DestroyMobilePhone
        L0_2()
        phone = false
        L0_2 = CellCamActivate
        L1_2 = false
        L2_2 = false
        L0_2(L1_2, L2_2)
        L0_2 = firstTime
        if true == L0_2 then
          firstTime = false
          L0_2 = Citizen
          L0_2 = L0_2.Wait
          L1_2 = 2500
          L0_2(L1_2)
          displayDoneMission = true
        end
        L0_2 = DisplayRadar
        L1_2 = true
        L0_2(L1_2)
      end
    else
      L0_2 = Wait
      L1_2 = 100
      L0_2(L1_2)
    end
  end
end
L2_1(L3_1)
--[[L2_1 = {}
L3_1 = "diables_x_quasar_phone_black"
L4_1 = "diables_x_quasar_phone_blue"
L5_1 = "diables_x_quasar_phone_gold"
L6_1 = "diables_x_quasar_phone_green"
L7_1 = "diables_x_quasar_phone_greenlight"
L8_1 = "diables_x_quasar_phone_grey"
L9_1 = "diables_x_quasar_phone_pink"
L10_1 = "diables_x_quasar_phone_purple"
L11_1 = "diables_x_quasar_phone_red"
L12_1 = "diables_x_quasar_phone_white"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L2_1[7] = L9_1
L2_1[8] = L10_1
L2_1[9] = L11_1
L2_1[10] = L12_1
L3_1 = Citizen
L3_1 = L3_1.CreateThread
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = pairs
  L1_2 = L2_1
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
L3_1(L4_1)]]
L3_1 = RegisterNUICallback
L4_1 = "GetPhotos"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = PhoneData
  L3_2 = L3_2.Photos
  L2_2(L3_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "SaveImage"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.data
  L3_2 = GetTheStreet
  L3_2 = L3_2()
  L2_2.location = L3_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:SavePhoto"
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = QSPhone
    L0_3 = L0_3.TriggerServerCallback
    L1_3 = "qs-smartphone:server:GetGaleri"
    function L2_3(A0_4)
      local L1_4, L2_4
      L1_4 = PhoneData
      L1_4.Photos = A0_4
      L1_4 = A1_2
      L2_4 = PhoneData
      L2_4 = L2_4.Photos
      L1_4(L2_4)
    end
    L0_3(L1_3, L2_3)
  end
  L5_2 = A0_2.url
  L6_2 = A0_2.data
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "DeleteImage"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = PhoneData
  L3_2 = L3_2.Photos
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.id
    L9_2 = tonumber
    L10_2 = A0_2.id
    L9_2 = L9_2(L10_2)
    if L8_2 == L9_2 then
      L8_2 = table
      L8_2 = L8_2.remove
      L9_2 = PhoneData
      L9_2 = L9_2.Photos
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:DeletePhoto"
  L4_2 = A0_2.id
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = PhoneData
  L3_2 = L3_2.Photos
  L2_2(L3_2)
end
L3_1(L4_1, L5_1)
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = table
  L0_2 = L0_2.unpack
  L1_2 = GetEntityCoords
  L2_2 = GetPlayerPed
  L3_2 = -1
  L2_2 = L2_2(L3_2)
  L3_2 = true
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L1_2(L2_2, L3_2)
  L0_2, L1_2, L2_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = GetStreetNameAtCoord
  L4_2 = L0_2
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = currentStreetHash
  L8_2 = intersectStreetHash
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L5_2 = GetStreetNameFromHashKey
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  currentStreetName = L5_2
  L5_2 = GetStreetNameFromHashKey
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  intersectStreetName = L5_2
  L5_2 = tostring
  L6_2 = GetNameOfZone
  L7_2 = L0_2
  L8_2 = L1_2
  L9_2 = L2_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  zone = L5_2
  L5_2 = ZoneNames
  L6_2 = tostring
  L7_2 = zone
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2[L6_2]
  playerStreetsLocation = L5_2
  L5_2 = zone
  if not L5_2 then
    zone = "UNKNOWN"
    L5_2 = ZoneNames
    L6_2 = zone
    L5_2.UNKNOWN = L6_2
  else
    L5_2 = ZoneNames
    L6_2 = tostring
    L7_2 = zone
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2[L6_2]
    if not L5_2 then
      L5_2 = zone
      L6_2 = " "
      L7_2 = L0_2
      L8_2 = " "
      L9_2 = L1_2
      L10_2 = " "
      L11_2 = L2_2
      L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
      L6_2 = ZoneNames
      L7_2 = tostring
      L8_2 = zone
      L7_2 = L7_2(L8_2)
      L6_2[L7_2] = "Bilinmeyen B\195\182lge"
    end
  end
  L5_2 = intersectStreetName
  if nil ~= L5_2 then
    L5_2 = intersectStreetName
    if "" ~= L5_2 then
      if "" ~= L5_2 then
        L5_2 = currentStreetName
        playerStreetsLocation = L5_2
      end
    end
  end
  L5_2 = currentStreetName
  if nil ~= L5_2 then
    L5_2 = currentStreetName
  else
    L5_2 = ZoneNames
    L6_2 = tostring
    L7_2 = zone
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2[L6_2]
    playerStreetsLocation = L5_2
  end
  L5_2 = playerStreetsLocation
  return L5_2
end
GetTheStreet = L3_1
L3_1 = {}
L3_1.AIRP = "Los Santos International Airport"
L3_1.ALAMO = "Alamo Sea"
L3_1.ALTA = "Alta"
L3_1.ARMYB = "Fort Zancudo"
L3_1.BANHAMC = "Banham Canyon Dr"
L3_1.BANNING = "Banning"
L3_1.BAYTRE = "Baytree Canyon"
L3_1.BEACH = "Vespucci Beach"
L3_1.BHAMCA = "Banham Canyon"
L3_1.BRADP = "Braddock Pass"
L3_1.BRADT = "Braddock Tunnel"
L3_1.BURTON = "Burton"
L3_1.CALAFB = "Calafia Bridge"
L3_1.CANNY = "Raton Canyon"
L3_1.CCREAK = "Cassidy Creek"
L3_1.CHAMH = "Chamberlain Hills"
L3_1.CHIL = "Vinewood Hills"
L3_1.CHU = "Chumash"
L3_1.CMSW = "Chiliad Mountain State Wilderness"
L3_1.CYPRE = "Cypress Flats"
L3_1.DAVIS = "Davis"
L3_1.DELBE = "Del Perro Beach"
L3_1.DELPE = "Del Perro"
L3_1.DELSOL = "La Puerta"
L3_1.DESRT = "Grand Senora Desert"
L3_1.DOWNT = "Downtown"
L3_1.DTVINE = "Downtown Vinewood"
L3_1.EAST_V = "East Vinewood"
L3_1.EBURO = "El Burro Heights"
L3_1.ELGORL = "El Gordo Lighthouse"
L3_1.ELYSIAN = "Elysian Island"
L3_1.GALFISH = "Galilee"
L3_1.GALLI = "Galileo Park"
L3_1.golf = "GWC and Golfing Society"
L3_1.GRAPES = "Grapeseed"
L3_1.GREATC = "Great Chaparral"
L4_1 = "Harmony"
L3_1.HARMO = L4_1
L4_1 = "HAWICK"
L5_1 = "Hawick"
L3_1[L4_1] = L5_1
L4_1 = "HORS"
L5_1 = "Vinewood Racetrack"
L3_1[L4_1] = L5_1
L4_1 = "HUMLAB"
L5_1 = "Humane Labs and Research"
L3_1[L4_1] = L5_1
L4_1 = "JAIL"
L5_1 = "Bolingbroke Penitentiary"
L3_1[L4_1] = L5_1
L4_1 = "KOREAT"
L5_1 = "Little Seoul"
L3_1[L4_1] = L5_1
L4_1 = "LACT"
L5_1 = "Land Act Reservoir"
L3_1[L4_1] = L5_1
L4_1 = "LAGO"
L5_1 = "Lago Zancudo"
L3_1[L4_1] = L5_1
L4_1 = "LDAM"
L5_1 = "Land Act Dam"
L3_1[L4_1] = L5_1
L4_1 = "LEGSQU"
L5_1 = "Legion Square"
L3_1[L4_1] = L5_1
L4_1 = "LMESA"
L5_1 = "La Mesa"
L3_1[L4_1] = L5_1
L4_1 = "LOSPUER"
L3_1[L4_1] = "La Puerta"
L4_1 = "MIRR"
L5_1 = "Mirror Park"
L3_1[L4_1] = L5_1
L4_1 = "MORN"
L5_1 = "Morningwood"
L3_1[L4_1] = L5_1
L4_1 = "MOVIE"
L5_1 = "Richards Majestic"
L3_1[L4_1] = L5_1
L4_1 = "MTCHIL"
L5_1 = "Mount Chiliad"
L3_1[L4_1] = L5_1
L4_1 = "MTGORDO"
L5_1 = "Mount Gordo"
L3_1[L4_1] = L5_1
L4_1 = "MTJOSE"
L5_1 = "Mount Josiah"
L3_1[L4_1] = L5_1
L4_1 = "MURRI"
L5_1 = "Murrieta Heights"
L3_1[L4_1] = L5_1
L4_1 = "NCHU"
L5_1 = "North Chumash"
L3_1[L4_1] = L5_1
L4_1 = "NOOSE"
L5_1 = "N.O.O.S.E"
L3_1[L4_1] = L5_1
L4_1 = "OCEANA"
L5_1 = "Pacific Ocean"
L3_1[L4_1] = L5_1
L4_1 = "PALCOV"
L5_1 = "Paleto Cove"
L3_1[L4_1] = L5_1
L4_1 = "PALETO"
L5_1 = "Paleto Bay"
L3_1[L4_1] = L5_1
L4_1 = "PALFOR"
L5_1 = "Paleto Forest"
L3_1[L4_1] = L5_1
L4_1 = "PALHIGH"
L5_1 = "Palomino Highlands"
L3_1[L4_1] = L5_1
L4_1 = "PALMPOW"
L5_1 = "Palmer-Taylor Power Station"
L3_1[L4_1] = L5_1
L4_1 = "PBLUFF"
L5_1 = "Pacific Bluffs"
L3_1[L4_1] = L5_1
L4_1 = "PBOX"
L5_1 = "Pillbox Hill"
L3_1[L4_1] = L5_1
L4_1 = "PROCOB"
L5_1 = "Procopio Beach"
L3_1[L4_1] = L5_1
L4_1 = "RANCHO"
L5_1 = "Rancho"
L3_1[L4_1] = L5_1
L4_1 = "RGLEN"
L5_1 = "Richman Glen"
L3_1[L4_1] = L5_1
L4_1 = "RICHM"
L5_1 = "Richman"
L3_1[L4_1] = L5_1
L4_1 = "ROCKF"
L5_1 = "Rockford Hills"
L3_1[L4_1] = L5_1
L4_1 = "RTRAK"
L5_1 = "Redwood Lights Track"
L3_1[L4_1] = L5_1
L4_1 = "SanAnd"
L5_1 = "San Andreas"
L3_1[L4_1] = L5_1
L4_1 = "SANCHIA"
L5_1 = "San Chianski Mountain Range"
L3_1[L4_1] = L5_1
L4_1 = "SANDY"
L5_1 = "Sandy Shores"
L3_1[L4_1] = L5_1
L4_1 = "SKID"
L5_1 = "Mission Row"
L3_1[L4_1] = L5_1
L4_1 = "SLAB"
L5_1 = "Stab City"
L3_1[L4_1] = L5_1
L4_1 = "STAD"
L5_1 = "Maze Bank Arena"
L3_1[L4_1] = L5_1
L4_1 = "STRAW"
L5_1 = "Strawberry"
L3_1[L4_1] = L5_1
L4_1 = "TATAMO"
L5_1 = "Tataviam Mountains"
L3_1[L4_1] = L5_1
L4_1 = "TERMINA"
L5_1 = "Terminal"
L3_1[L4_1] = L5_1
L4_1 = "TEXTI"
L5_1 = "Textile City"
L3_1[L4_1] = L5_1
L4_1 = "TONGVAH"
L5_1 = "Tongva Hills"
L3_1[L4_1] = L5_1
L4_1 = "TONGVAV"
L5_1 = "Tongva Valley"
L3_1[L4_1] = L5_1
L4_1 = "VCANA"
L5_1 = "Vespucci Canals"
L3_1[L4_1] = L5_1
L4_1 = "VESP"
L5_1 = "Vespucci"
L3_1[L4_1] = L5_1
L4_1 = "VINE"
L5_1 = "Vinewood"
L3_1[L4_1] = L5_1
L4_1 = "WINDF"
L5_1 = "Ron Alternates Wind Farm"
L3_1[L4_1] = L5_1
L4_1 = "WVINE"
L5_1 = "West Vinewood"
L3_1[L4_1] = L5_1
L4_1 = "ZANCUDO"
L5_1 = "Zancudo River"
L3_1[L4_1] = L5_1
L4_1 = "ZP_ORT"
L5_1 = "Port of South Los Santos"
L3_1[L4_1] = L5_1
L4_1 = "ZQ_UAR"
L5_1 = "Davis Quartz"
L3_1[L4_1] = L5_1
ZoneNames = L3_1
