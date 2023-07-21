Config = Config or {}

-- NEW ---
-- There is a new clientside export called 'TrackVehicleByPlate' that can be used to track vehicles by plate, this is useful for other scripts that want to track vehicles by plate (e.g. exports['et-garages']:TrackVehicleByPlate(plate))
-- And the clientside event 'et-garages:client:TrackVehicleByPlate'(e.g. TriggerEvent('et-garages:client:TrackVehicleByPlate', plate))

Config.TrackVehicleByPlateCommand = true -- Allow players to track their vehicles by plate using /trackvehicle <plate>
Config.TrackVehicleByPlateCommandPermissionLevel = 'god' -- Permission level required to use /trackvehicle <plate>, false for anyone / everyone

-- NEW --



-- NEW --
Config.SharedGangGarages = false -- Allow shared gang garages, if false, the player can only access their own vehicles
-- for specific gangs, use this:
-- Config.SharedGangGarages = {
--     ['vagos'] = true, -- Allow shared gang garages, if false, the player can only access their own vehicles
--     ['gsf'] = true, -- Allow shared gang garages, if false, the player can only access their own vehicles
-- }
-- NEW ---

Config.SharedHouseGarage = true -- Allow shared house garages, if false, the player can only access their own vehicles

-- NEW ---
Config.AllowParkingAnyonesVehicle = false -- Allow anyones vehicle to be stored in the garage, if false, only vehicles you own can be stored in the garage (supports only public garages)
Config.AllowParkingFromOutsideVehicle = false -- Allow parking from outside the vehicle, if false, you have to be inside the vehicle to park it
Config.VehicleParkDistance = 2.0 -- Distance from the player to the vehicle to park it, radial option will dissapear beyond this distance
-- NEW -

Config.GlobalParking = false -- if true, you can access your cars from any garage, if false, you can only access your cars from the garage you stored them in
-- NEW

-- NEW
Config.SpawnVehiclesServerside = true -- REQUIRES THE ABSOLUTE LATEST VERSION OF QBCORE, OR MAKE SURE YOU HAVE THESE: https://github.com/qbcore-framework/et-core/blob/81ffd872319d2eb8e496c3b3faaf37e791912c84/server/events.lua#L252
-- NEW 

-- NEW -- Only relevant if AllowSpawningFromAnywhere = false
Config.SpawnAtFreeParkingSpot = false -- Will spawn at the closest free parking spot if you walk up to a occupied parking spot (basically you have to walk up close to a parking lot but it does not matter if there is a vehicle blocking the spawn as it will spawn at the closest free parking spot)

-- DEPRECATED - will be removed in the future
Config.StoreDamageAccuratly = false -- Do not use, if on latest et-core, if set to true, make sure to apply / run patch1.sql
-- DEPRECATED - will be removed in the future

Config.StoreParkinglotAccuratly = false  -- store the last parking lot in the DB, if set to true, make sure to apply / run patch1.sql, I recommend applying the tracking snippet for et-phone from the ReadMe to the phone so you can track the vehicle to the exact parking lot
Config.SpawnAtLastParkinglot = false -- spawn the vehicle at the last parked location if StoreParkinglotAccuratly = true, if set to true, make sure to apply / run patch1.sql
Config.GarageNameAsBlipName = true -- if set to true, the blips name will match the garage name
Config.FuelScript = 'vhming-fuel' -- change to lj-fuel / ps-fuel if you use lj-fuel / ps-fuel or something else if you use any other LegcyFuel compatible script
Config.AllowSpawningFromAnywhere = true -- if set to true, the car can be spawned from anywhere inside the zone on the closest parking lot, if set to false you will have to walk up to a parking lot 
Config.AutoRespawn = false --True == auto respawn cars that are outside into your garage on script restart, false == does not put them into your garage and players have to go to the impound
Config.WarpPlayerIntoVehicle = false -- True == Will Warp Player Into their vehicle after pulling it out of garage. False It will spawn on the parking lot / in front of them  (Global, can be overriden by each garage)
Config.HouseParkingDrawText = 'Parking' -- text when driving on to the HOUSE parking lot
Config.ParkingDistance = 2.0 -- Distance to the parking lot when trying to park the vehicle  (Global, can be overriden by each garage)
Config.SpawnDistance = 4.5 -- The maximum distance you can be from a parking spot, to spawn a car (Global, can be overriden by each garage)
Config.DepotPrice = 60.0 -- The price to take out a despawned vehicle from impound.
Config.DrawTextPosition = 'left' -- location of drawtext: left, top, right

-- set useVehicleSpawner = true for each garage that has type job and should use the vehicle spawner instead of personal vehicles
Config.JobVehicles = {
	['pd1'] = { -- jobGarageIdentifier
        label = "Police Vehicles",
        job = 'police',
        -- Grade 0
        vehicles = {
            [0] = {
                ["police"] = "Police Car 1",
                ["police2"] = "Police Car 2",
                ["police3"] = "Police Car 3",
                ["police4"] = "Police Car 4",
                ["policeb"] = "Police Car 5",
                ["policet"] = "Police Car 6",
                ["sheriff"] = "Sheriff Car 1",
                ["sheriff2"] = "Sheriff Car 2",
            },
            -- Grade 1
            [1] = {
                ["police"] = "Police Car 1",
                ["police2"] = "Police Car 2",
                ["police3"] = "Police Car 3",
                ["police4"] = "Police Car 4",
                ["policeb"] = "Police Car 5",
                ["policet"] = "Police Car 6",
                ["sheriff"] = "Sheriff Car 1",
                ["sheriff2"] = "Sheriff Car 2",

            },
            -- Grade 2
            [2] = {
                ["police"] = "Police Car 1",
                ["police2"] = "Police Car 2",
                ["police3"] = "Police Car 3",
                ["police4"] = "Police Car 4",
                ["policeb"] = "Police Car 5",
                ["policet"] = "Police Car 6",
                ["sheriff"] = "Sheriff Car 1",
                ["sheriff2"] = "Sheriff Car 2",
            },
            -- Grade 3
            [3] = {
                ["police"] = "Police Car 1",
                ["police2"] = "Police Car 2",
                ["police3"] = "Police Car 3",
                ["police4"] = "Police Car 4",
                ["policeb"] = "Police Car 5",
                ["policet"] = "Police Car 6",
                ["sheriff"] = "Sheriff Car 1",
                ["sheriff2"] = "Sheriff Car 2",
            },
            -- Grade 4
            [4] = {
                ["police"] = "Police Car 1",
                ["police2"] = "Police Car 2",
                ["police3"] = "Police Car 3",
                ["police4"] = "Police Car 4",
                ["policeb"] = "Police Car 5",
                ["policet"] = "Police Car 6",
                ["sheriff"] = "Sheriff Car 1",
                ["sheriff2"] = "Sheriff Car 2",
            },
        },
    };
    ['am1'] = { -- jobGarageIdentifier
        label = "Xe Bệnh Viện",
        job = 'ambulance',
        -- Grade 0
    };
};

-- '/restorelostcars <destination_garage>' allows you to restore cars that have been parked in garages which no longer exist in the config (garage renamed or removed). The restored cars get sent to the destination garage or if left empty to a random garage in the list.
-- NOTE: This may also send helis and boats to said garaga so choose wisely
Config.RestoreCommandPermissionLevel = 'god' -- sets the permission level for the above mentioned command

-- THESE VEHICLE CATEGORIES ARE NOT RELATED TO THE ONES IN shared/vehicles.lua
-- Here you can define which category contains which vehicle class. These categories can then be used in the garage config
-- All vehicle classes can be found here: https://docs.fivem.net/natives/?_0x29439776AAA00A62
Config.VehicleCategories = {
    ['car'] = { 0, 1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12 },
    ['motorcycle'] = { 8 },
    ['other'] = { 13 }, -- cycles: 13 - you can move cycles to cars if you want and have anything else like military vehicles in this category
    ['boat'] = { 14 },
    ['helicopter'] = { 15 },
    ['plane'] = { 16 },
    ['service'] = { 17 },
    ['emergency'] = { 18 },
    ['military'] = { 19 },
    ['commercial'] = { 20 },
    -- you can also create new / delete or update categories, and use them below in the config.
}

Config.HouseGarageCategories = {'car', 'motorcycle', 'other'} -- Which categories are allowed to be parked at a house garage


Config.VehicleHeading = 'driverside' -- only used when NO parking spots are defined in the garage config
--[[^^^^^^^^
    'forward' = will face the sameway as the ped
    'driverside' = will put the driver door closets to the ped
    'hood' = will face the hood towards ped
    'passengerside' = will put the passenger door closets to the ped
]]

Config.SharedJobGarages = { -- define the job garages which are shared
    'cardealergarage1',
}

Config.Garages = {
-- Garages Trung tâm
    ['legionsquare1'] = { --204
    ['Zone'] = {
        ['Shape'] = { --polygon that surrounds the parking area
            vector2(239.88751220703, -820.52038574219),
            vector2(252.71513366699, -784.91027832031),
            vector2(258.39483642578, -786.82489013672),
            vector2(264.27755737305, -769.99841308594),
            vector2(218.69738769531, -754.69787597656),
            vector2(200.07238769531, -805.74285888672)
        },
        ['minZ'] = 29.07,  -- min height of the parking zone
        ['maxZ'] = 40.0,  -- max height of the parking zone
    },
    label = "~y~[Garages] ~y~ Trung tâm 1",
    showBlip = true,
    blipcoords = vector3(215.9499, -809.698, 30.731),
    blipName = "Public Parking",
    blipNumber = 357,
    type = 'public',                --public, job, gang, depot
    vehicleCategories = {'car', 'motorcycle', 'other'},
    drawText = '[Garages] Trung tâm 1',                 --car, air, sea
    debug = false,
    ['ParkingSpots'] = {
        vector4(206.54, -801.18, 30.44, 249.19),
        vector4(207.43, -798.7, 30.43, 250.75),
        vector4(208.34, -796.2, 30.41, 249.19),
        vector4(209.25, -793.66, 30.39, 250.42),
        vector4(210.14, -791.23, 30.37, 249.7),
        vector4(211.08, -788.63, 30.36, 249.57),
        vector4(212.01, -786.05, 30.35, 251.53),
        vector4(212.88, -783.63, 30.33, 248.92),
        vector4(213.76, -781.24, 30.32, 248.51),
        vector4(214.7, -778.58, 30.31, 249.8),
        vector4(215.61, -776.08, 30.3, 249.45),
        vector4(216.53, -773.5, 30.29, 250.39),
        vector4(217.45, -770.96, 30.29, 249.98),
        vector4(218.32, -768.54, 30.28, 250.23),
        vector4(219.26, -765.91, 30.28, 250.22),
        vector4(214.9, -804.11, 30.26, 68.04),
        vector4(215.82, -801.6, 30.25, 69.78),
        vector4(216.75, -799.05, 30.23, 69.91),
        vector4(217.64, -796.56, 30.22, 68.46),
        vector4(218.56, -794.06, 30.21, 69.99),
        vector4(219.47, -791.53, 30.21, 69.73),
        vector4(220.37, -788.97, 30.22, 68.07),
        vector4(221.29, -786.46, 30.22, 69.57),
        vector4(222.17, -783.97, 30.22, 68.16),
        vector4(223.11, -781.43, 30.21, 68.89),
        vector4(223.99, -778.98, 30.21, 69.2),
        vector4(224.95, -776.32, 30.22, 69.31),
        vector4(225.81, -773.95, 30.23, 69.41),
        vector4(226.77, -771.29, 30.23, 70.79),
        vector4(227.7, -768.67, 30.23, 68.2),
        vector4(221.27, -806.72, 30.12, 248.98),
        vector4(222.2, -804.14, 30.12, 248.76),
        vector4(223.11, -801.68, 30.11, 247.77),
        vector4(223.99, -799.16, 30.11, 249.47),
        vector4(224.92, -796.57, 30.11, 249.78),
        vector4(225.77, -794.29, 30.11, 247.6),
        vector4(226.67, -791.7, 30.12, 249.69),
        vector4(227.68, -788.96, 30.13, 248.94),
        vector4(228.53, -786.62, 30.15, 248.82),
        vector4(229.42, -784.1, 30.15, 249.66),
        vector4(230.36, -781.56, 30.15, 248.28),
        vector4(231.29, -779.0, 30.16, 247.27),
        vector4(232.17, -776.49, 30.17, 249.26),
        vector4(233.13, -773.83, 30.19, 249.77),
        vector4(234.03, -771.36, 30.2, 248.58),
        vector4(230.87, -810.24, 29.89, 68.82),
        vector4(231.84, -807.6, 29.89, 69.21),
        vector4(232.73, -805.13, 29.9, 70.4),
        vector4(233.66, -802.46, 29.92, 66.83),
        vector4(234.56, -800.03, 29.93, 68.02),
        vector4(235.45, -797.6, 29.94, 69.57),
        vector4(236.36, -795.07, 29.95, 68.37),
        vector4(237.32, -792.46, 29.96, 69.44),
        vector4(238.24, -789.88, 29.98, 69.02),
        vector4(239.13, -787.42, 30.0, 69.19),
        vector4(240.03, -784.88, 30.03, 67.99),
        vector4(240.94, -782.41, 30.05, 69.69),
        vector4(241.9, -779.76, 30.07, 69.37),
        vector4(242.76, -777.27, 30.1, 66.78),
        vector4(243.7, -774.73, 30.13, 67.78),
        vector4(244.6, -772.29, 30.16, 69.84),
    }
    },
    ['legionsquare2'] = { --206
    ['Zone'] = {
        ['Shape'] = { --polygon that surrounds the parking area
            vector2(188.70750427246, -887.70562744141),
            vector2(212.2901763916, -854.001953125),
            vector2(216.92163085938, -857.21557617188),
            vector2(220.76348876953, -851.79266357422),
            vector2(241.87890625, -866.56506347656),
            vector2(238.11903381348, -872.03668212891),
            vector2(243.09925842285, -875.58435058594),
            vector2(220.07450866699, -908.43627929688)
        },
        ['minZ'] = 17.07,  -- min height of the parking zone
        ['maxZ'] = 19.0,  -- max height of the parking zone
    },
    label = "~y~[Garages] ~y~ Trung tâm 2",
    showBlip = true,
    blipcoords = vector3(217.09, -937.12, 24.14),
    blipName = "[Garages] Trung tâm 2",
    blipNumber = 357,
    type = 'public',                --public, job, gang, depot
    vehicleCategories = {'car', 'motorcycle', 'other'},
    drawText = '[Garages] Trung tâm 2',                 --car, air, sea
    debug = true,
    ['ParkingSpots'] = {
        vector4(192.42, -887.19, 18.05, 234.6),
        vector4(194.37, -884.82, 18.05, 235.24),
        vector4(195.69, -881.94, 18.05, 235.19),
        vector4(198.48, -878.95, 18.05, 235.45),
        vector4(200.31, -876.31, 18.05, 235.8),
        vector4(202.19, -873.95, 18.05, 235.48),
        vector4(204.19, -870.38, 18.05, 236.04),
        vector4(206.63, -868.06, 18.05, 235.59),
        vector4(208.11, -865.47, 18.05, 235.14),
        vector4(210.24, -862.04, 18.05, 235.55),
        vector4(212.15, -859.61, 18.05, 234.98),
        vector4(213.9, -856.91, 18.05, 235.41),
        vector4(220.66, -855.43, 18.05, 144.07),
        vector4(222.92, -857.3, 18.05, 148.58),
        vector4(225.52, -859.22, 18.05, 146.12),
        vector4(227.93, -861.36, 18.05, 146.67),
        vector4(230.84, -862.15, 18.05, 144.58),
        vector4(233.43, -864.3, 18.05, 144.94),
        vector4(235.8, -866.25, 18.05, 145.21),
        vector4(239.79, -875.07, 18.05, 55.14),
        vector4(237.76, -877.51, 18.05, 55.49),
        vector4(236.19, -880.25, 18.05, 54.76),
        vector4(233.4, -883.17, 18.05, 55.58),
        vector4(231.86, -885.96, 18.05, 55.93),
        vector4(229.97, -888.36, 18.05, 55.08),
        vector4(227.81, -891.91, 18.05, 56.68),
        vector4(225.97, -894.49, 18.05, 56.37),
        vector4(223.97, -896.76, 18.05, 55.28),
        vector4(221.8, -900.27, 18.05, 55.84),
        vector4(220.03, -902.76, 18.05, 55.83),
        vector4(218.1, -905.41, 18.05, 54.3),
        vector4(209.45, -886.58, 18.05, 53.54),
        vector4(211.19, -883.99, 18.05, 55.36),
        vector4(212.5, -881.13, 18.05, 55.01),
        vector4(215.29, -878.18, 18.05, 56.74),
        vector4(216.93, -875.52, 18.05, 54.41),
        vector4(218.89, -872.9, 18.05, 55.12),
        vector4(214.6, -890.16, 18.05, 234.23),
        vector4(215.96, -887.28, 18.05, 235.28),
        vector4(217.76, -884.86, 18.05, 235.69),
        vector4(219.98, -881.31, 18.05, 234.31),
        vector4(222.36, -879.08, 18.05, 236.05),
        vector4(223.62, -876.28, 18.05, 236.14),
    }
    },
    ['llegionsquare3'] = { --399
        ['Zone'] = {
            ['Shape'] = {
                vector2(69.414520263672, -849.34320068359),
                vector2(59.563220977783, -876.13598632812),
                vector2(53.812015533447, -873.94421386719),
                vector2(52.552845001221, -876.92974853516),
                vector2(58.53719329834, -879.25579833984),
                vector2(49.19457244873, -904.89520263672),
                vector2(12.526390075684, -891.47192382812),
                vector2(32.711112976074, -835.94616699219),
                vector2(43.370277404785, -840.03533935547),
                vector2(41.773113250732, -844.49047851562),
                vector2(44.550273895264, -845.6552734375),
                vector2(46.358081817627, -841.06768798828)
            },
            ['minZ'] = 29.0,
            ['maxZ'] = 31.10
        },
        label = '~y~[Garages] ~y~ Trung tâm 3',
        showBlip = true,
        blipcoords = vector3(52.41, -874.53, 30.42),
        blipName = 'Public Parking',
        blipNumber = 357,
        type = 'public',
        vehicleCategories = {'car', 'motorcycle', 'other'},
        drawText = '[Garages] Trung tâm 3',
        debug = false,
        ['ParkingSpots'] = {
            vector4(19.23, -880.71, 29.8, 341.54),
            vector4(22.45, -882.16, 29.79, 340.09),
            vector4(25.93, -883.46, 29.79, 343.72),
            vector4(37.8, -887.64, 29.77, 160.81),
            vector4(40.91, -889.25, 29.75, 160.21),
            vector4(44.33, -890.22, 29.75, 159.58),
            vector4(48.14, -890.77, 29.75, 161.49),
            vector4(51.0, -892.1, 29.74, 158.87),
            vector4(52.71, -887.68, 29.81, 158.88),
            vector4(49.66, -885.99, 29.83, 161.45),
            vector4(45.81, -885.22, 29.83, 161.8),
            vector4(42.78, -884.27, 29.83, 161.42),
            vector4(39.63, -883.03, 29.84, 159.02),
            vector4(27.5, -878.27, 29.87, 160.31),
            vector4(24.28, -877.02, 29.88, 158.81),
            vector4(20.96, -876.17, 29.88, 157.99),
            vector4(25.15, -864.12, 30.08, 161.27),
            vector4(28.23, -865.24, 30.07, 158.11),
            vector4(32.0, -866.64, 30.06, 158.96),
            vector4(44.22, -870.05, 30.05, 159.97),
            vector4(47.29, -872.04, 30.03, 160.4),
            vector4(50.56, -873.75, 30.01, 158.52),
            vector4(60.1, -866.79, 30.13, 159.36),
            vector4(56.83, -865.6, 30.14, 161.35),
            vector4(53.77, -864.08, 30.16, 158.58),
            vector4(50.79, -863.1, 30.16, 159.63),
            vector4(47.46, -861.17, 30.18, 160.06),
            vector4(35.2, -857.05, 30.21, 160.46),
            vector4(31.39, -855.98, 30.22, 163.34),
            vector4(28.65, -854.67, 30.24, 156.84),
            vector4(34.44, -839.08, 30.49, 161.56),
            vector4(37.43, -840.18, 30.48, 159.6),
            vector4(41.04, -841.14, 30.47, 157.63),
            vector4(53.89, -846.47, 30.42, 159.93),
            vector4(56.93, -847.64, 30.41, 162.76),
            vector4(60.37, -848.47, 30.41, 161.79),
            vector4(63.44, -850.18, 30.39, 157.81),
            vector4(236.68, -795.08, 30.08, 66.13),
            vector4(233.41, -774.07, 30.31, 248.68)
        }
    },
-- Garages Bệnh viện
    ['pillboxgarage1'] = { -- 201 trên
    ['Zone'] = {
        ['Shape'] = {
            vector2(302.69, -602.20 ),
            vector2(298.35, -614.12),
            vector2(288.00, -610.30),
            vector2(292.56, -598.52)
        },
        ['minZ'] = 42.0,  -- min height of the parking zone
        ['maxZ'] = 44.30,  -- max height of the parking zone
    },
    label = 'Garage Bệnh Viện ETERNITY',
    showBlip = false,
    blipcoords = vector3(37.08, -616.99, 34.19),
    blipName = 'Public Parking',
    blipNumber = 357,
    type = 'job',                --public, job, gang, depot
    job = "ambulance",
    vehicleCategories = {'emergency'},
    drawText = '[Garages] Bệnh viện 2',
    debug = false,
    ['ParkingSpots'] = {
        vector4(298.32, -605.26, 42.50, 68.76),
        vector4(299.45, -602.49, 42.50, 69.75),
        vector4(297.2, -608.03, 42.50, 67.17),
        vector4(296.06, -610.96, 42.50, 68.61),
    }
    },
    ['pillboxgarage2'] = { -- 201 dưới
    ['Zone'] = {
        ['Shape'] = {
            vector2(333.14724731445, -583.71112060547),
            vector2(338.00854492188, -585.49493408203),
            vector2(336.09161376953, -589.28088378906),
            vector2(334.04504394531, -594.60485839844),
            vector2(316.27682495117, -588.18243408203),
            vector2(318.24963378906, -582.74859619141),
            vector2(310.49685668945, -579.97033691406),
            vector2(317.10736083984, -561.79772949219),
            vector2(322.32794189453, -559.53454589844),
            vector2(326.14297485352, -561.0654296875),
            vector2(326.35650634766, -560.58984375),
            vector2(339.5234375, -565.50555419922)
        },
        ['minZ'] = 27.796838760376,  -- min height of the parking zone
        ['maxZ'] = 29.796871185303,  -- max height of the parking zone
    },
    label = '~y~[Garages] ~y~ Bệnh viện',
    showBlip = true,
    blipcoords = vector3(37.08, -616.99, 34.19),
    blipName = 'Public Parking',
    blipNumber = 357,
    type = 'public',
    vehicleCategories = {'car', 'motorcycle', 'other'},
    drawText = '[Garages] Bệnh viện 1',
    debug = false,
    ['ParkingSpots'] = {
        vector4(316.4, -578.24, 28.41, 249.78),
        vector4(319.28, -569.63, 28.41, 250.45),
        vector4(329.69, -589.05, 28.41, 340.26),
        vector4(320.65, -565.28, 28.41, 250.14),
        vector4(318.0, -573.66, 28.41, 248.47),
        vector4(326.44, -587.97, 28.41, 340.44),
        vector4(333.08, -590.15, 28.41, 338.45),
        vector4(319.7, -585.51, 28.41, 341.08),
        vector4(323.17, -586.62, 28.41, 339.67),
    }
    },
-- Garage Cảnh sát
    ['pdfront1'] = {
    ['Zone'] = {
        ['Shape'] = { --polygon that surrounds the parking area
        vector2(448.01132202148, -1028.5633544922),
        vector2(425.82501220703, -1031.0162353516),
        vector2(424.99182128906, -1023.87890625),
        vector2(447.62200927734, -1022.8018188477),
        },
        ['minZ'] = 27.473958969116,  -- min height of the parking zone
        ['maxZ'] = 30.061031341553,  -- max height of the parking zone

    },
    label = 'Garage Cảnh Sát - 1',
    type = 'job',
    job = "police",
    vehicleCategories = {'emergency'},
    drawText = '[Garages] Cảnh sát 1',
    ["ParkingSpots"] = {
        vector4(446.21, -1025.83, 28.33, 182.99),
        vector4(442.5, -1025.93, 28.39, 181.94),
        vector4(438.55, -1026.13, 28.47, 183.28),
        vector4(434.81, -1026.49, 28.53, 185.28),
        vector4(430.9, -1026.7, 28.6, 186.69),
        vector4(427.25, -1027.03, 28.66, 185.2),
    },
    debug = false
    },
    ['pdfront'] = {
    ['Zone'] = {
        ['Shape'] = { --polygon that surrounds the parking area
        vector2(405.13595581054, -998.57788085938),
        vector2(410.59521484375, -1002.8664550782),
        vector2(410.91711425782, -979.44134521484),
        vector2(405.4065246582, -974.57928466796),
        },
        ['minZ'] = 28.0,  -- min height of the parking zone
        ['maxZ'] = 31.0,  -- max height of the parking zone

    },
    label = 'Garage Cảnh Sát - 2',
    type = 'job',
    job = "police",
    vehicleCategories = {'emergency', 'car', 'motorcycle', 'other'},
    drawText = '[Garages] Cảnh sát 2',
    ["ParkingSpots"] = {
        vector4(407.44, -997.7, 28.94, 52.87),
        vector4(407.55, -992.85, 28.94, 51.63),
        vector4(407.7, -988.49, 28.94, 52.48),
        vector4(407.42, -983.95, 28.94, 51.54),
        vector4(407.68, -979.62, 28.94, 51.69),
    },
    debug = false
    },
-- Garage Cardelaer
    ['cardealergarage1'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-343.4, -1353.48),
                vector2(-349.86, -1363.64),
                vector2(-349.91, -1354.13),
                vector2(-343.4, -1353.48)
            },
            ['minZ'] = 30.56,  -- min height of the parking zone
            ['maxZ'] = 34.56,  -- max height of the parking zone
        },
        label = 'Garage Cardealer',
        showBlip = false,
        blipcoords = vector3(-346.71, -1358.7, 31.28),
        blipName = 'Public Parking',
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        job = "cardealer",
        vehicleCategories = {'car', 'motorcycle', 'other'},
        drawText = '[Garages] CarDealer 2',
        debug = false,
        ['ParkingSpots'] = {
            vector4(-346.71, -1358.7, 31.28, 0.26),
        }
    },
    ['cardealergarage2'] = {
        ['Zone'] = {
            ['Shape'] = {
                vector2(-298.91247558594, -1404.5548095703),
                vector2(-304.52700805664, -1404.4163818359),
                vector2(-304.53231811523, -1378.74609375),
                vector2(-299.11489868164, -1378.88671875)
            },
            ['minZ'] = 30.56,  -- min height of the parking zone
            ['maxZ'] = 34.56,  -- max height of the parking zone
        },
        label = 'Garage Cardealer',
        showBlip = false,
        blipcoords = vector3(-346.71, -1358.7, 31.28),
        blipName = 'Public Parking',
        blipNumber = 357,
        type = 'job',                --public, job, gang, depot
        job = "cardealer",
        vehicleCategories = {'car', 'motorcycle', 'other'},
        drawText = '[Garages] CarDealer 1',
        debug = false,
        ['ParkingSpots'] = {
            vector4(-301.54, -1380.89, 31.02, 88.71),
            vector4(-301.48, -1385.24, 31.02, 88.96),
            vector4(-301.54, -1393.98, 31.02, 89.7),
            vector4(-301.34, -1389.54, 31.02, 89.35),
            vector4(-301.68, -1398.06, 31.02, 89.81),
            vector4(-301.49, -1402.41, 31.02, 89.28),
        }
    },
-- Garage Phương tiện
    ['impoundlot'] = {
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the parking area
            vector2(-128.76565551758, -1186.7231445312),
            vector2(-128.95680236816, -1158.9990234375),
            vector2(-155.75888061524, -1158.6616210938),
            vector2(-155.84657287598, -1186.7335205078)
            },
            ['minZ'] = 22.25,  -- min height of the parking zone
            ['maxZ'] = 26.31,  -- max height of the parking zone
            debug = false,
        },
        label = "~y~[Garages] ~y~ Kho Phương tiện",
        showBlip = true,
        blipcoords = vector3(-143.15, -1175.06, 23.77),
        blipName = "[Garages] Kho Phương tiện",
        blipNumber = 357,
        type = 'depot',                --public, job, gang, depot
        vehicleCategories = {'car', 'motorcycle', 'other'},
        drawText = 'Impound',                 --car, air, sea
        debug = false,
        ['ParkingSpots'] = {
            vector4(-152.91, -1170.13, 23.14, 270.11),
            vector4(-153.26, -1166.51, 23.14, 270.74),
            vector4(-147.67, -1161.83, 23.14, 179.67),
            vector4(-144.19, -1161.83, 23.14, 179.02),
            vector4(-139.1, -1161.6, 23.14, 178.95),
            vector4(-131.92, -1166.54, 23.14, 89.09),
            vector4(-132.01, -1170.05, 23.14, 90.24),
            vector4(-132.03, -1175.15, 23.14, 90.94),
            vector4(-131.99, -1178.68, 23.14, 90.07),
            vector4(-131.95, -1182.25, 23.14, 90.11),
        }
    },

}

Config.HouseGarages = {} -- DO NOT TOUCH!

Garages = Config.Garages
HouseGarages = Config.HouseGarages
