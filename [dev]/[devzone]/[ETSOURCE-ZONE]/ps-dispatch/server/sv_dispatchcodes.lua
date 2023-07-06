
--[[
	["vehicleshots"] -> dispatchcodename that you pass with the event of AlertGunShot
	displayCode -> Code to be displayed on the blip message
	description -> Description of the blip message
	radius -> to draw a circle with radius around blip ( the number need to have a  .0  behind it, for example 150.0 or 75.0 )
        -> if u want to have the radius without the blip just make the blipScale = 0
        -> if u want to have the radius centered, disable the offset
	recipientList -> list of job names that can see the blip
	blipSprite -> blip sprite
	blipColour -> blip colour
	blipScale -> blip scale
	blipLength -> time in seconds at which the blip will fade down, lower the time, faster it will fade. Cannot be 0
        offset -> enable or disable the offset for the radius ( radius on 0 and offset on true does nothing )
        blipflash -> enable or disable the flashing blip
]]--

dispatchCodes = {

	["vehicleshots"] =  {displayCode = '10-13', description = "Có tiếng súng bắn từ xe", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 119, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["shooting"] =  {displayCode = '10-13', description ="Có tiếng súng", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 110, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["speeding"] =  {displayCode = '10-13', description = "Chạy quá tốc độ", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 326, blipColour = 84, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["fight"] =  {displayCode = '10-10', description = "Có đánh nhau", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 685, blipColour = 69, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["civdown"] =  {displayCode = '10-69', description = "Cư dân bị thương", radius = 0, recipientList = {'EMS', 'ambulance'}, blipSprite = 126, blipColour = 3, blipScale = 1.5, blipLength = 2, sound = "dispatch", offset = "false", blipflash = "false"},
	["civdead"] =  {displayCode = '10-69', description = "Cư dân chết", radius = 0, recipientList = {'EMS', 'ambulance'}, blipSprite = 126, blipColour = 3, blipScale = 1.5, blipLength = 2, sound = "dispatch", offset = "false", blipflash = "false"},
	["911call"] =  {displayCode = '911', description = "911 Call", radius = 0, recipientList = {'FirstResponder', 'police'}, blipSprite = 480, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["311call"] =  {displayCode = '911', description = "311 Call", radius = 0, recipientList = {'FirstResponder', 'ambulance'}, blipSprite = 480, blipColour = 3, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["officerdown"] =  {displayCode = '10-99', description = "CS bị thương", radius = 15.0, recipientList = {'FirstResponder', 'ambulance'}, blipSprite = 526, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "panicbutton", offset = "false", blipflash = "false"},
	["emsdown"] =  {displayCode = '10-99', description = "BS bị thương", radius = 15.0, recipientList = {'FirstResponder', 'ambulance'}, blipSprite = 526, blipColour = 3, blipScale = 1.5, blipLength = 2, sound = "panicbutton", offset = "false", blipflash = "false"},
	["storerobbery"] =  {displayCode = '10-90', description = "Cướp tạp hóa", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 52, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["bankrobbery"] =  {displayCode = '10-90', description = "Cướp ngân hàng", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 500, blipColour = 2, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["paletobankrobbery"] =  {displayCode = '10-90', description = "Cướp ngân hàng", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 500, blipColour = 12, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["pacificbankrobbery"] =  {displayCode = '10-90', description = "Cướp ngân hàng", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 500, blipColour = 5, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["prisonbreak"] =  {displayCode = '10-90', description = "Vượt ngục", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 189, blipColour = 59, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["vangelicorobbery"] =  {displayCode = '10-90', description = "Cướp tiệm đá quý", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 434, blipColour = 5, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["houserobbery"] =  {displayCode = '10-90', description = "Lau nhà", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 40, blipColour = 5, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["suspicioushandoff"] =  {displayCode = '10-60', description = "Chất cấm", radius = 120.0, recipientList = {'LEO', 'police'}, blipSprite = 469, blipColour = 52, blipScale = 0, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "true", blipflash = "false"},
	["yachtheist"] =  {displayCode = '10-65', description = "Cướp du thuyền", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 455, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["vehicletheft"] =  {displayCode = '10-35', description = "Phá khóa xe", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 595, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["signrobbery"] =  {displayCode = '10-35', description = "Cướp biển báo", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 358, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["susactivity"] =  {displayCode = '10-66', description = "Hành vi đáng ngờ", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 66, blipColour = 37, blipScale = 0.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},

	-- Rainmad Heists

	["artgalleryrobbery"] =  {displayCode = '10-90', description = "Cướp tiệm tranh", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 269, blipColour = 59, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["humanelabsrobbery"] =  {displayCode = '10-90', description = "Cướp phòng lab", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 499, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["trainrobbery"] =  {displayCode = '10-90', description = "Cướp tàu", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 667, blipColour = 78, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["vanrobbery"] =  {displayCode = '10-90', description = "Cướp xe tiền", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 67, blipColour = 59, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["undergroundrobbery"] =  {displayCode = '10-90', description = "Underground Tunnels Robbery In Progress", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 486, blipColour = 59, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["drugboatrobbery"] =  {displayCode = '10-31', description = "Suspicious Activity On Boat", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 427, blipColour = 26, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["unionrobbery"] =  {displayCode = '10-90', description = "Union Depository Robbery In Progress", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 500, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
	["carboosting"] =  {displayCode = '10-50', description = "Car Boosting In Progress", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 595, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["carjack"] =  {displayCode = '10-35', description = "Cướp xe", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 595, blipColour = 60, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["explosion"] =  {displayCode = '10-80', description = "Có tiếng nổ", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 436, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
	["hunting"] =  {displayCode = '10-13', description = "Đi săn", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 442, blipColour = 1, blipScale = 0, blipLength = 2, sound = "Lose_1st", sound2 = "GTAO_FM_Events_Soundset", offset = "false", blipflash = "false"},
}
