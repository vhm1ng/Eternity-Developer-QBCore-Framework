Config = {}

Config.setupMenu = 'et-menu' -- et-menu / nh-context

Config.vehicleList = {
    { name = "BobCatXL", model = "bobcatXL", price = 1000 },
}

Config.CreatePed = vector4(247.6, -561.06, 42.27, 227.58)

-- Blips 
Config.Locations = {
    ["rentalstations"] = {
        [1] = {label = "Thuê Xe", coords = vector4(247.6, -561.06, 43.27, 227.58)},
    },
}

Config.vehicleSpawn = {
    --- Mirror Park
	[1] = { 
		workSpawn = {
			coords = vector3(253.7, -568.51, 42.73),
			heading = 344.69,
		},
	},
}


-- Addding Exports to your et-Targ
