local L0_1, L1_1
L0_1 = {}
Menu = L0_1
L0_1 = Menu
L1_1 = {}
L0_1.GUI = L1_1
L0_1 = Menu
L0_1.buttonCount = 0
L0_1 = Menu
L0_1.selection = 0
L0_1 = Menu
L0_1.hidden = true
MenuTitle = "Menu"
L0_1 = Menu
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L6_2 = 0.25
  L7_2 = 0.3
  L8_2 = 0.0
  L9_2 = 0.15
  L10_2 = 0.03
  L11_2 = 0.03
  L12_2 = Menu
  L12_2 = L12_2.GUI
  L13_2 = Menu
  L13_2 = L13_2.buttonCount
  L13_2 = L13_2 + 1
  L14_2 = {}
  L12_2[L13_2] = L14_2
  if nil ~= A3_2 then
    L12_2 = Menu
    L12_2 = L12_2.GUI
    L13_2 = Menu
    L13_2 = L13_2.buttonCount
    L13_2 = L13_2 + 1
    L12_2 = L12_2[L13_2]
    L12_2.extra = A3_2
  end
  if nil ~= A4_2 then
    L12_2 = Menu
    L12_2 = L12_2.GUI
    L13_2 = Menu
    L13_2 = L13_2.buttonCount
    L13_2 = L13_2 + 1
    L12_2 = L12_2[L13_2]
    L12_2.damages = A4_2
    L12_2 = Menu
    L12_2 = L12_2.GUI
    L13_2 = Menu
    L13_2 = L13_2.buttonCount
    L13_2 = L13_2 + 1
    L12_2 = L12_2[L13_2]
    L12_2.bodydamages = A5_2
  end
  L12_2 = Menu
  L12_2 = L12_2.GUI
  L13_2 = Menu
  L13_2 = L13_2.buttonCount
  L13_2 = L13_2 + 1
  L12_2 = L12_2[L13_2]
  L12_2.name = A0_2
  L12_2 = Menu
  L12_2 = L12_2.GUI
  L13_2 = Menu
  L13_2 = L13_2.buttonCount
  L13_2 = L13_2 + 1
  L12_2 = L12_2[L13_2]
  L12_2.func = A1_2
  L12_2 = Menu
  L12_2 = L12_2.GUI
  L13_2 = Menu
  L13_2 = L13_2.buttonCount
  L13_2 = L13_2 + 1
  L12_2 = L12_2[L13_2]
  L12_2.args = A2_2
  L12_2 = Menu
  L12_2 = L12_2.GUI
  L13_2 = Menu
  L13_2 = L13_2.buttonCount
  L13_2 = L13_2 + 1
  L12_2 = L12_2[L13_2]
  L12_2.active = false
  L12_2 = Menu
  L12_2 = L12_2.GUI
  L13_2 = Menu
  L13_2 = L13_2.buttonCount
  L13_2 = L13_2 + 1
  L12_2 = L12_2[L13_2]
  L12_2.xmin = L8_2
  L12_2 = Menu
  L12_2 = L12_2.GUI
  L13_2 = Menu
  L13_2 = L13_2.buttonCount
  L13_2 = L13_2 + 1
  L12_2 = L12_2[L13_2]
  L13_2 = Menu
  L13_2 = L13_2.buttonCount
  L13_2 = L13_2 + 0.01
  L13_2 = L10_2 * L13_2
  L13_2 = L13_2 + L6_2
  L12_2.ymin = L13_2
  L12_2 = Menu
  L12_2 = L12_2.GUI
  L13_2 = Menu
  L13_2 = L13_2.buttonCount
  L13_2 = L13_2 + 1
  L12_2 = L12_2[L13_2]
  L12_2.xmax = L9_2
  L12_2 = Menu
  L12_2 = L12_2.GUI
  L13_2 = Menu
  L13_2 = L13_2.buttonCount
  L13_2 = L13_2 + 1
  L12_2 = L12_2[L13_2]
  L12_2.ymax = L11_2
  L12_2 = Menu
  L13_2 = Menu
  L13_2 = L13_2.buttonCount
  L13_2 = L13_2 + 1
  L12_2.buttonCount = L13_2
end
L0_1.addButton = L1_1
L0_1 = Menu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = IsControlJustPressed
  L1_2 = 1
  L2_2 = 173
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = Menu
    L0_2 = L0_2.selection
    L1_2 = Menu
    L1_2 = L1_2.buttonCount
    L1_2 = L1_2 - 1
    if L0_2 < L1_2 then
      L0_2 = Menu
      L1_2 = Menu
      L1_2 = L1_2.selection
      L1_2 = L1_2 + 1
      L0_2.selection = L1_2
    else
      L0_2 = Menu
      L0_2.selection = 0
    end
    L0_2 = PlaySound
    L1_2 = -1
    L2_2 = "SELECT"
    L3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
    L4_2 = 0
    L5_2 = 0
    L6_2 = 1
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  else
    L0_2 = IsControlJustPressed
    L1_2 = 1
    L2_2 = 27
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L0_2 = Menu
      L0_2 = L0_2.selection
      if L0_2 > 0 then
        L0_2 = Menu
        L1_2 = Menu
        L1_2 = L1_2.selection
        L1_2 = L1_2 - 1
        L0_2.selection = L1_2
      else
        L0_2 = Menu
        L1_2 = Menu
        L1_2 = L1_2.buttonCount
        L1_2 = L1_2 - 1
        L0_2.selection = L1_2
      end
      L0_2 = PlaySound
      L1_2 = -1
      L2_2 = "SELECT"
      L3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      L4_2 = 0
      L5_2 = 0
      L6_2 = 1
      L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
    else
      L0_2 = IsControlJustPressed
      L1_2 = 1
      L2_2 = 38
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        L0_2 = IsControlJustPressed
        L1_2 = 1
        L2_2 = 18
        L0_2 = L0_2(L1_2, L2_2)
        if not L0_2 then
          goto lbl_103
        end
      end
      L0_2 = MenuCallFunction
      L1_2 = Menu
      L1_2 = L1_2.GUI
      L2_2 = Menu
      L2_2 = L2_2.selection
      L2_2 = L2_2 + 1
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.func
      L2_2 = Menu
      L2_2 = L2_2.GUI
      L3_2 = Menu
      L3_2 = L3_2.selection
      L3_2 = L3_2 + 1
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.args
      L0_2(L1_2, L2_2)
      L0_2 = PlaySound
      L1_2 = -1
      L2_2 = "SELECT"
      L3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      L4_2 = 0
      L5_2 = 0
      L6_2 = 1
      L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
  ::lbl_103::
  L0_2 = 0
  L1_2 = ipairs
  L2_2 = Menu
  L2_2 = L2_2.GUI
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = Menu
    L7_2 = L7_2.GUI
    L7_2 = L7_2[L5_2]
    L7_2.active = false
    L7_2 = Menu
    L7_2 = L7_2.selection
    if L0_2 == L7_2 then
      L7_2 = Menu
      L7_2 = L7_2.GUI
      L8_2 = L0_2 + 1
      L7_2 = L7_2[L8_2]
      L7_2.active = true
    end
    L0_2 = L0_2 + 1
  end
end
L0_1.updateSelection = L1_1
L0_1 = Menu
function L1_1()
  local L0_2, L1_2
  L0_2 = Menu
  L0_2 = L0_2.hidden
  if not L0_2 then
    L0_2 = Menu
    L0_2 = L0_2.renderButtons
    L0_2()
    L0_2 = Menu
    L0_2 = L0_2.updateSelection
    L0_2()
  end
end
L0_1.renderGUI = L1_1
L0_1 = Menu
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L8_2 = DrawRect
  L9_2 = 0.7
  L10_2 = A2_2
  L11_2 = 0.15
  L12_2 = A3_2 - 0.002
  L13_2 = A4_2
  L14_2 = A5_2
  L15_2 = A6_2
  L16_2 = A7_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
end
L0_1.renderBox = L1_1
L0_1 = Menu
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = 0.5
  L1_2 = 0
  L2_2 = pairs
  L3_2 = Menu
  L3_2 = L3_2.GUI
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = 0
    L9_2 = 0
    L10_2 = GetScreenResolution
    L11_2 = 0
    L12_2 = 0
    L10_2, L11_2 = L10_2(L11_2, L12_2)
    L9_2 = L11_2
    L8_2 = L10_2
    L10_2 = {}
    L11_2 = 13
    L12_2 = 11
    L13_2 = 10
    L14_2 = 233
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L10_2[3] = L13_2
    L10_2[4] = L14_2
    boxColor = L10_2
    L10_2 = 0.0
    L11_2 = L7_2.extra
    if "In" == L11_2 then
      L11_2 = {}
      L12_2 = 44
      L13_2 = 88
      L14_2 = 44
      L15_2 = 230
      L11_2[1] = L12_2
      L11_2[2] = L13_2
      L11_2[3] = L14_2
      L11_2[4] = L15_2
      boxColor = L11_2
    else
      L11_2 = L7_2.extra
      if "Out" ~= L11_2 then
        L10_2 = -0.025
      end
    end
    L11_2 = L7_2.active
    if L11_2 then
      L11_2 = {}
      L12_2 = 45
      L13_2 = 45
      L14_2 = 45
      L15_2 = 230
      L11_2[1] = L12_2
      L11_2[2] = L13_2
      L11_2[3] = L14_2
      L11_2[4] = L15_2
      boxColor = L11_2
    end
    L11_2 = L7_2.extra
    if nil ~= L11_2 then
      L11_2 = SetTextFont
      L12_2 = 4
      L11_2(L12_2)
      L11_2 = SetTextScale
      L12_2 = 0.34
      L13_2 = 0.34
      L11_2(L12_2, L13_2)
      L11_2 = SetTextColour
      L12_2 = 255
      L13_2 = 255
      L14_2 = 255
      L15_2 = 255
      L11_2(L12_2, L13_2, L14_2, L15_2)
      L11_2 = SetTextEntry
      L12_2 = "STRING"
      L11_2(L12_2)
      L11_2 = AddTextComponentString
      L12_2 = L7_2.name
      L11_2(L12_2)
      L11_2 = DrawText
      L12_2 = 0.63
      L13_2 = L7_2.ymin
      L13_2 = L13_2 - 0.012
      L11_2(L12_2, L13_2)
      L11_2 = SetTextFont
      L12_2 = 4
      L11_2(L12_2)
      L11_2 = SetTextScale
      L12_2 = 0.26
      L13_2 = 0.26
      L11_2(L12_2, L13_2)
      L11_2 = SetTextColour
      L12_2 = 255
      L13_2 = 255
      L14_2 = 255
      L15_2 = 255
      L11_2(L12_2, L13_2, L14_2, L15_2)
      L11_2 = SetTextEntry
      L12_2 = "STRING"
      L11_2(L12_2)
      L11_2 = AddTextComponentString
      L12_2 = L7_2.extra
      L11_2(L12_2)
      L11_2 = DrawText
      L12_2 = 0.73 + L10_2
      L13_2 = L7_2.ymin
      L13_2 = L13_2 - 0.011
      L11_2(L12_2, L13_2)
      L11_2 = SetTextFont
      L12_2 = 4
      L11_2(L12_2)
      L11_2 = SetTextScale
      L12_2 = 0.31
      L13_2 = 0.31
      L11_2(L12_2, L13_2)
      L11_2 = SetTextColour
      L12_2 = 11
      L13_2 = 11
      L14_2 = 11
      L15_2 = 255
      L11_2(L12_2, L13_2, L14_2, L15_2)
      L11_2 = SetTextEntry
      L12_2 = "STRING"
      L11_2(L12_2)
      L11_2 = AddTextComponentString
      L12_2 = L7_2.damages
      L11_2(L12_2)
      L11_2 = DrawText
      L12_2 = 0.78
      L13_2 = L7_2.ymin
      L13_2 = L13_2 - 0.012
      L11_2(L12_2, L13_2)
      L11_2 = SetTextFont
      L12_2 = 4
      L11_2(L12_2)
      L11_2 = SetTextScale
      L12_2 = 0.31
      L13_2 = 0.31
      L11_2(L12_2, L13_2)
      L11_2 = SetTextColour
      L12_2 = 11
      L13_2 = 11
      L14_2 = 11
      L15_2 = 255
      L11_2(L12_2, L13_2, L14_2, L15_2)
      L11_2 = SetTextEntry
      L12_2 = "STRING"
      L11_2(L12_2)
      L11_2 = AddTextComponentString
      L12_2 = L7_2.bodydamages
      L11_2(L12_2)
      L11_2 = DrawText
      L12_2 = 0.845
      L13_2 = L7_2.ymin
      L13_2 = L13_2 - 0.012
      L11_2(L12_2, L13_2)
      L11_2 = DrawRect
      L12_2 = 0.832
      L13_2 = L7_2.ymin
      L14_2 = 0.11
      L15_2 = L7_2.ymax
      L15_2 = L15_2 - 0.002
      L16_2 = 255
      L17_2 = 255
      L18_2 = 255
      L19_2 = 199
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    else
      L11_2 = SetTextFont
      L12_2 = 4
      L11_2(L12_2)
      L11_2 = SetTextScale
      L12_2 = 0.34
      L13_2 = 0.34
      L11_2(L12_2, L13_2)
      L11_2 = SetTextColour
      L12_2 = 255
      L13_2 = 255
      L14_2 = 255
      L15_2 = 255
      L11_2(L12_2, L13_2, L14_2, L15_2)
      L11_2 = SetTextCentre
      L12_2 = true
      L11_2(L12_2)
      L11_2 = SetTextEntry
      L12_2 = "STRING"
      L11_2(L12_2)
      L11_2 = AddTextComponentString
      L12_2 = L7_2.name
      L11_2(L12_2)
      L11_2 = DrawText
      L12_2 = 0.7
      L13_2 = L7_2.ymin
      L13_2 = L13_2 - 0.012
      L11_2(L12_2, L13_2)
    end
    L11_2 = Menu
    L11_2 = L11_2.renderBox
    L12_2 = L7_2.xmin
    L13_2 = L7_2.xmax
    L14_2 = L7_2.ymin
    L15_2 = L7_2.ymax
    L16_2 = boxColor
    L16_2 = L16_2[1]
    L17_2 = boxColor
    L17_2 = L17_2[2]
    L18_2 = boxColor
    L18_2 = L18_2[3]
    L19_2 = boxColor
    L19_2 = L19_2[4]
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  end
end
L0_1.renderButtons = L1_1
function L0_1()
  local L0_2, L1_2
  L0_2 = Menu
  L1_2 = {}
  L0_2.GUI = L1_2
  L0_2 = Menu
  L0_2.buttonCount = 0
  L0_2 = Menu
  L0_2.selection = 0
end
ClearMenu = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = _G
  L2_2 = L2_2[A0_2]
  L3_2 = A1_2
  L2_2(L3_2)
end
MenuCallFunction = L0_1
