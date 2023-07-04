QBCore = exports['et-core']:GetCoreObject()

local ctvch = false
-- local isFishing = false
-- local fishingRod

RegisterNetEvent('vhming-canho:client:VaoCanHo', function()
    -- Kiểm tra bạn có trong khu vực căn hộ không
    if not ctvch then
        -- print('khong trong vung thang may chung cu')
        QBCore.Functions.Notify('Bạn không thể vào căn hộ tại đây ..', 'error', 2500)
    else
        -- print('Vao chung cu')
        TriggerEvent('apartments:client:EnterApartment')
        -- print('Vao chung cu thanh cong')
    end
end)


CreateThread(function()
    -- print('tao function')
    -- Start with empty array (for ComboZone)
    local zones = {}

    -- Create individual fishing zones and add them to the array
    for k, v in pairs(Shared.CanHoZones) do
        if v.box then -- BoxZone
            -- zones[#zones+1] = BoxZone:Create(v.coords, v.length, v.width, {
            --     name = "CanHoZones"..k,
            --     minZ = v.minZ,
            --     maxZ = v.maxZ,
            --     debugPoly = false
            -- })
        else -- PolyZone
            zones[#zones+1] = PolyZone:Create(v.points, {
                name = "CanHoZones"..k,
                minZ = v.minZ,
                maxZ = v.maxZ,
                debugGrid = false,
            })
        end
    end
    -- print('End 1')
    -- Create ComboZone
    local CanHoCombo = ComboZone:Create(zones, {
        name = "CanHoCombo", 
        debugPoly = false
    })
    -- print('Tao combozone')
    -- Enter/Exit Fishing Zone
    CanHoCombo:onPlayerInOut(function(isPointInside, point, zone)
        if isPointInside then
            exports['et-core']:DrawText('Căn hộ', 'left')
            ctvch = true -- ctvch = Có thể vào căn hộ
        else
            exports['et-core']:HideText()
            ctvch = false -- ctvch = Có thể vào căn hộ
        end
    end)
end)