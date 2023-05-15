local function hideText()
    exports['okokTextUI']:Close()
end

local function drawText(text, _)
    exports['okokTextUI']:Open(text, 'lightred', 'right') -- you can configure the design here with these options https://docs.okokscripts.io/scripts/okoktextui
end

-- local function changeText(text, position) -- Can't use
--     if type(position) ~= "string" then position = "left" end

--     SendNUIMessage({
--         action = 'CHANGE_TEXT',
--         data = {
--             text = text,
--             position = position
--         }
--     })
-- end

local function keyPressed()
    CreateThread(function() -- Can't use
        --[[ SendNUIMessage({
            action = 'KEY_PRESSED',
        }) ]]
        --Wait(500)
        hideText()
    end)
end

RegisterNetEvent('qb-core:client:DrawText', function(text, position)
    drawText(text, position)
end)

-- RegisterNetEvent('qb-core:client:ChangeText', function(text, position) -- Can't use
--     changeText(text, position)
-- end)

RegisterNetEvent('qb-core:client:HideText', function()
    hideText()
end)

-- RegisterNetEvent('qb-core:client:KeyPressed', function() -- Can't use
--     keyPressed()
-- end)

exports('DrawText', drawText)
--exports('ChangeText', changeText) -- Can't use
exports('HideText', hideText)
exports('KeyPressed', keyPressed) -- Can't use