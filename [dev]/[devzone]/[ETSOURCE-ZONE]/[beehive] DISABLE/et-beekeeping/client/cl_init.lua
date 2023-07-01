CreateThread(function()
    for id, zone in ipairs(HiveZones) do
        exports["et-polyzone"]:AddCircleZone("et-beekeeping:bee_zone", zone[1], zone[2],{
            zoneEvents={"d-beekeeping:trigger_zone"},
            data = {
                id = id,
            },
        })
    end
end)