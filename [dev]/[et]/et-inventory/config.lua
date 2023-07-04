Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use et-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.MaxInventoryWeight = 80000 -- Max weight a player can carry (default 120kg, written in grams)
Config.MaxInventorySlots = 41 -- Max inventory slots for a player

Config.CleanupDropTime = 5 * 60 -- How many seconds it takes for drops to be untouched before being deleted
Config.MaxDropViewDistance = 12.5 -- The distance in GTA Units that a drop can be seen
Config.UseItemDrop = true -- This will enable item object to spawn on drops instead of markers
Config.ItemDropObject = `sf_prop_sf_backpack_01a` -- if Config.UseItemDrop is true, this will be the prop that spawns for the item

Config.Progressbar = {
    Enable = true,         -- True to Enable the progressbar while opening inventory
    minT = 350,             -- Min Time for Inventory to open
    maxT = 500              -- Max Time for Inventory to open
}

Config.VendingObjects = {
    "prop_vend_soda_01",
    "prop_vend_soda_02",
    "prop_vend_water_01"
}

Config.BinObjects = {
    "prop_bin_05a",
}

Config.CraftingObject = `prop_toolchest_05` -- Only needed if not using target | Line 928 to change Target Models

Config.VendingItem = {
    [1] = {
        name = "water_bottle",
        price = 200,
        amount = 100,
        info = {},
        type = "item",
        slot = 1,
    },
    [2] = {
        name = "sandwich",
        price = 200,
        amount = 100,
        info = {},
        type = "item",
        slot = 2,
    },
}

Config.CraftingItems = {}
Config.AttachmentCraftingLocation = vector3(11111, 11111, 11111) -- Only needed if not using target

Config.AttachmentCrafting = {}

BackEngineVehicles = {
    [`ninef`] = true,
    [`adder`] = true,
    [`vagner`] = true,
    [`t20`] = true,
    [`infernus`] = true,
    [`zentorno`] = true,
    [`reaper`] = true,
    [`comet2`] = true,
    [`comet3`] = true,
    [`jester`] = true,
    [`jester2`] = true,
    [`cheetah`] = true,
    [`cheetah2`] = true,
    [`prototipo`] = true,
    [`turismor`] = true,
    [`pfister811`] = true,
    [`ardent`] = true,
    [`nero`] = true,
    [`nero2`] = true,
    [`tempesta`] = true,
    [`vacca`] = true,
    [`bullet`] = true,
    [`osiris`] = true,
    [`entityxf`] = true,
    [`turismo2`] = true,
    [`fmj`] = true,
    [`re7b`] = true,
    [`tyrus`] = true,
    [`italigtb`] = true,
    [`penetrator`] = true,
    [`monroe`] = true,
    [`ninef2`] = true,
    [`stingergt`] = true,
    [`surfer`] = true,
    [`surfer2`] = true,
    [`gp1`] = true,
    [`autarch`] = true,
    [`tyrant`] = true
}

Config.MaximumAmmoValues = {
}
