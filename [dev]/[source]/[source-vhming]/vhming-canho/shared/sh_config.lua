Shared = {} or Shared

Shared.CanHoZones = {
    -- [1] = { -- Example of a BoxZone (box = true)
    --     coords = vector3(713.31, 4113.7, 35.78),
    --     heading = 179,
    --     length = 44.4,
    --     width = 5.0,
    --     minZ = 33.78,
    --     maxZ = 36.98,
    --     box = true,
    -- },
    [1] = { -- Example of a PolyZone (box = false)
        points = {
            vector2(270.16296386719, -640.55352783203),
            vector2(269.47137451172, -640.32647705078),
            vector2(269.22286987305, -640.97290039062),
            vector2(269.92718505859, -641.24566650391)
        },
        minZ = 41,
        maxZ = 43.86,
        box = false
    },
    [2] = { -- Example of a PolyZone (box = false)
    points = {
        vector2(268.50402832031, -645.11791992188),
        vector2(268.24038696289, -645.89501953125),
        vector2(267.44287109375, -645.6123046875),
        vector2(267.74435424805, -644.90454101562)
    },
    minZ = 41,
    maxZ = 43.86,
    box = false
    },
}
