Shared = {} or Shared

Shared.ThangmayZones = {
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
            vector2(283.85412597656, -639.71936035156),
            vector2(282.92559814453, -642.13354492188),
            vector2(292.69552612305, -645.75250244141),
            vector2(293.58380126953, -643.27386474609)
        },
        minZ = 41,
        maxZ = 43.86,
        box = false
    },
    [2] = { -- Example of a PolyZone (box = false)
    points = {
        vector2(279.14358520508, -652.73455810547),
        vector2(288.80270385742, -656.32037353516),
        vector2(289.7253112793, -653.86090087891),
        vector2(279.95220947266, -650.34045410156)
    },
    minZ = 41,
    maxZ = 43.86,
    box = false
    },
}
