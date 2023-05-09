Config = {}

-- **** IMPORTANT ****
-- UseTarget should only be set to true when using et-target
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Targets = {}

Config.AttachedVehicle = nil

Config.AuthorizedIds = {
    -- "insertcitizenidhere",
}

Config.MaxStatusValues = {
    ["engine"] = 1000.0,
    ["body"] = 1000.0,
    ["radiator"] = 100,
    ["axle"] = 100,
    ["brakes"] = 100,
    ["clutch"] = 100,
    ["fuel"] = 100,
}

Config.ValuesLabels = {
    ["engine"] = Lang:t('labels.engine'),
    ["body"] = Lang:t('labels.bodsy'),
    ["radiator"] = Lang:t('labels.radiator'),
    ["axle"] = Lang:t('labels.axle'),
    ["brakes"] = Lang:t('labels.brakes'),
    ["clutch"] = Lang:t('labels.clutch'),
    ["fuel"] = Lang:t('labels.fuel'),
}

Config.RepairCost = {
    ["body"] = "plastic",
    ["radiator"] = "plastic",
    ["axle"] = "steel",
    ["brakes"] = "iron",
    ["clutch"] = "aluminum",
    ["fuel"] = "plastic",
}

Config.RepairCostAmount = {
    ["engine"] = {
        item = "metalscrap",
        costs = 2,
    },
    ["body"] = {
        item = "plastic",
        costs = 3,
    },
    ["radiator"] = {
        item = "steel",
        costs = 5,
    },
    ["axle"] = {
        item = "aluminum",
        costs = 7,
    },
    ["brakes"] = {
        item = "copper",
        costs = 5,
    },
    ["clutch"] = {
        item = "copper",
        costs = 6,
    },
    ["fuel"] = {
        item = "plastic",
        costs = 5,
    },
}

Config.Businesses = {
    "Auto Repair",
}

Config.Plates = {
    [1] = {
        coords = vector4(-327.04, -144.38, 39.02, 66.68),
        boxData = {
            heading = 250,
            length = 7,
            width = 4,
            debugPoly = true
        },
        AttachedVehicle = nil,
    },
    [2] = {
        coords = vector4(-324.94, -139.06, 39.02, 65.53),
        boxData = {
            heading = 250,
            length = 7,
            width = 4,
            debugPoly = true
        },
        AttachedVehicle = nil,
    },
    [3] = {
        coords = vector4(-322.99, -133.98, 39.02, 78.09),
        boxData = {
            heading = 250,
            length = 7,
            width = 4,
            debugPoly = true
        },
        AttachedVehicle = nil,
    },
    [4] = {
        coords = vector4(-321.34, -128.72, 39.02, 70.36),
        boxData = {
            heading = 250,
            length = 7,
            width = 4,
            debugPoly = true
        },
        AttachedVehicle = nil,
    },
    [5] = {
        coords = vector4(-319.49, -123.48, 39.02, 77.7),
        boxData = {
            heading = 250,
            length = 7,
            width = 4,
            debugPoly = true
        },
        AttachedVehicle = nil,
    },
    [6] = {
        coords = vector4(-317.55, -118.43, 39.02, 77.08),
        boxData = {
            heading = 250,
            length = 7,
            width = 4,
            debugPoly = true
        },
        AttachedVehicle = nil,
    },
}

Config.Locations = {
    ["exit"] = vector3(-339.04, -135.53, 39),
    ["duty"] = vector3(-347.16, -114.21, 39.02),
    ["stash"] = vector3(-317.07, -129.48, 39.02),
    ["vehicle"] = vector4(-370.51, -107.88, 38.35, 72.56),
}

Config.Vehicles = {
    ["flatbed"] = "Flatbed",
    ["towtruck"] = "Towtruck",
    ["minivan"] = "Minivan (Rental Car)",
    ["blista"] = "Blista",
}

Config.MinimalMetersForDamage = {
    [1] = {
        min = 8000,
        max = 12000,
        multiplier = {
            min = 1,
            max = 8,
        }
    },
    [2] = {
        min = 12000,
        max = 16000,
        multiplier = {
            min = 8,
            max = 16,
        }
    },
    [3] = {
        min = 12000,
        max = 16000,
        multiplier = {
            min = 16,
            max = 24,
        }
    },
}

Config.Damages = {
    ["radiator"] = "Radiator",
    ["axle"] = "Drive Shaft",
    ["brakes"] = "Brakes",
    ["clutch"] = "Clutch",
    ["fuel"] = "Fuel Tank",
}
