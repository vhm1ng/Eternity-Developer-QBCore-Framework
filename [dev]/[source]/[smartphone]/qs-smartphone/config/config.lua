Config = {}

Config.okokTextUI = {
   enable = false, -- If you use false, by default there will be DrawText3D.
   colour = 'darkgreen', -- Change the color of your TextUI here.
   position = 'left', -- Change the position of the TextUI here.
}

Config.esxVersion = 'new' -- Select between old (Esx 1.1) or new (Esx 1.2, v1 final, legacy or extendedmode).

Config.RepeatTimeout = 2000 -- Don't touch here.
Config.CallRepeats = 999999 -- Don't touch here.
Config.DisableMovement = false -- Block all the movement while you are using the phone

Config.Voice = 'mumble' -- Options: 'mumble', 'toko', 'pma' or 'salty.'

Config.ScreenshotBasic = 'screenshot-basic' -- Leave it as default if you don't know what you are doing

Config.ValetPrice = 1000 -- Price to bring your vehicle to you.

Config.DeleteStoriesAndNotifies = true -- Do you want the notifications and stories to be deleted after a certain time?
Config.MaxApp = 36 -- Don't touch here.

Config.IbanBank = true -- If you set true to this the bank app will use an IBAN, false to use the ID of the player.
Config.okokBankingIban = false -- With the option above set in true and okokBankingIban in true you will be able to use the okokBanking Alias
--  If you use are not using Iban and the player its disconnect you will not be able to send him money.

Config.WetPhone = true -- Being in the water, the phone will break and will give you the same item but with the prefix "wet_".
Config.RepairWetPhone = 'phone_module' -- With said item, we can repair the wet phone.
Config.RepairWetPhoneNpc = true -- Be able to repair your phone with the NPC Telephone Technician.
Config.RepairWetPhoneNpcPrice = 100 -- Price to repair a wet phone in the Technician.
Config.RepairWetPhoneNpcAccount = 'bank' -- Choose here the account to pay the technician for repairing the wet phone.

function VehicleKeys(vehicle) -- Use this function in case of using vehiclekeys, otherwise empty it.
    TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(vehicle))
end

Config.PoliceAppJobs = { -- Jobs available to receive Police App alerts.
    [1] = 'police',
    -- [2] = 'sheriff',
}  

Config.Jobs = {
    { job = 'police', name = 'Policia' , img = './img/apps/police.png'},
    { job = 'ambulance', name = 'Ems', img = './img/apps/ambulance.png'},
    { job = 'mechanic', name = 'Mechanic', img = './img/apps/mechanic.png'},
}

Config.jobCommands = { -- Just enter a number here, this is the number that will appear when you call.
    ["police"] = "911",
    ["ambulance"] = "912",
    ["mechanic"] = "913",
}

Config.RequiredPhone = false -- Required item?

-- Be careful editing this because every phone need to have a frame, prop and wallpaper sets to work properly.
Config.Phones = { -- Name of the items with the frame.
    ['classic_phone'] = 'classic_frame.png', -- Never remove or delete this from the first position.
    ['black_phone'] = 'black_frame.png',
    ['blue_phone'] = 'blue_frame.png',
    ['gold_phone'] = 'gold_frame.png',
    ['purple_phone'] = 'purple_frame.png',
    ['red_phone'] = 'red_frame.png',
    ['green_phone'] = 'green_frame.png',
    ['greenlight_phone'] = 'greenlight_frame.png',
    ['pink_phone'] = 'pink_frame.png',
    ['white_phone'] = 'white_frame.png',
    ['phone'] = 'classic_frame.png',
}

--[[Config.PhonesProps = { -- Name of the item with the prop
    ['classic_phone'] = `diables_x_quasar_phone_grey`, -- Never remove or delete this from the first position.
    ['black_phone'] = `diables_x_quasar_phone_black`,
    ['blue_phone'] = `diables_x_quasar_phone_blue`,
    ['gold_phone'] = `diables_x_quasar_phone_gold`,
    ['purple_phone'] = `diables_x_quasar_phone_purple`,
    ['red_phone'] = `diables_x_quasar_phone_red`,
    ['green_phone'] = `diables_x_quasar_phone_green`,
    ['greenlight_phone'] = `diables_x_quasar_phone_greenlight`,
    ['pink_phone'] = `diables_x_quasar_phone_pink`,
    ['white_phone'] = `diables_x_quasar_phone_white`,
    ['phone'] = `diables_x_quasar_phone_grey`,
}]]

Config.PhonesProps = { -- Name of the item with the prop
    ['classic_phone'] = `prop_npc_phone_02`, -- Never remove or delete this from the first position.
    ['black_phone'] = `prop_npc_phone_02`,
    ['blue_phone'] = `prop_npc_phone_02`,
    ['gold_phone'] = `prop_npc_phone_02`,
    ['purple_phone'] = `prop_npc_phone_02`,
    ['red_phone'] = `prop_npc_phone_02`,
    ['green_phone'] = `prop_npc_phone_02`,
    ['greenlight_phone'] = `prop_npc_phone_02`,
    ['pink_phone'] = `prop_npc_phone_02`,
    ['white_phone'] = `prop_npc_phone_02`,
    ['phone'] = `prop_npc_phone_02`,
}

Config.PhonesCustomWallpaper = { -- Name of the item with the default wallpaper.
    ['classic_frame.png'] = 'b4', -- Never remove or delete this from the first position.
    ['black_frame.png'] = 'b6',
    ['blue_frame.png'] = 'b1',
    ['gold_frame.png'] = 'b5',
    ['purple_frame.png'] = 'b3',
    ['red_frame.png'] = 'b2',
    ['green_frame.png'] = 'b8',
    ['greenlight_frame.png'] = 'b16',
    ['pink_frame.png'] = 'b3',
    ['white_frame.png'] = 'b29',
}

Config.BlackMarketAccount = 'black_money' -- Account with which you want to pay in Onion Browser.
Config.WeaponsItems = false -- This will work for Onion Browser, weapons are items?

Config.Darkweb = { -- Onion Browser items.
    List = {    
        [1] = { item = 'WEAPON_PISTOL', label = 'Pistol', isItem = false, price = 8000},
        [2] = { item = 'WEAPON_PISTOL50', label = 'Pistol 50', isItem = false, price = 9000},
        [3] = { item = 'WEAPON_PISTOL_MK2', label = 'Pistol MK2', isItem = false, price = 10000},
        [4] = { item = 'WEAPON_KNUCKLE', label = 'Knucle', isItem = false, price = 5000},
        [5] = { item = 'WEAPON_GRENADE', label = 'Pistol', isItem = false, price = 20000},
        [6] = { item = 'WEAPON_CARBINERIFLE_MK2', label = 'Carbine Rifle MK2', isItem = false, price = 35000},
        [7] = { item = 'WEAPON_BULLPUPRIFLE_MK2', label = 'Bullpup Rifle MK2', isItem = false, price = 40000},
        [8] = { item = 'WEAPON_SNIPERRIFLE', label = 'Sniper Rifle', isItem = false, price = 55000},
        -- [9] = { item = 'laptop', label = 'Hacker Laptop', isItem = true, price = 700}, -- If you use `Config.WeaponsItems = false` then you can choose if it's an item with `isItem = true`.
    },
}

function SendTextMessage(msg, type) --You can add your notification system here for simple messages.
    if type == 'inform' then 
      SetNotificationTextEntry('STRING')
      AddTextComponentString(msg)
      DrawNotification(0,1)
  
      --MORE EXAMPLES OF NOTIFICATIONS.
      --exports['qs-core']:Notify(msg, "primary")
      --exports['mythic_notify']:DoHudText('inform', msg)
    end
    if type == 'error' then 
      SetNotificationTextEntry('STRING')
      AddTextComponentString(msg)
      DrawNotification(0,1)
  
      --MORE EXAMPLES OF NOTIFICATIONS.
      --exports['qs-core']:Notify(msg, "error")
      --exports['mythic_notify']:DoHudText('error', msg)
    end
    if type == 'success' then 
      SetNotificationTextEntry('STRING')
      AddTextComponentString(msg)
      DrawNotification(0,1)
  
      --MORE EXAMPLES OF NOTIFICATIONS.
      --exports['qs-core']:Notify(msg, "success")
      --exports['mythic_notify']:DoHudText('success', msg)
    end
end

function DrawText3D(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

Config.StoreAppToday = {
    {
        header = 'GAMING NEWS',
        head = 'New games available!',
        image = 'https://play-lh.googleusercontent.com/4F5b-cJ3sNDFJ2x_0u7-z5sonK-8duDQDiVVRqSfDn02k6NK5LP6XlMAtQXu_gNaJ6dO=w512',
        footer = 'Doodle Jump now available here!'
    },
    {
        header = 'SPOTIFY PREMIUM AVAILABLE!',
        head = 'Free music!',
        image = 'https://i.blogs.es/f28a43/spotify/450_1000.jpeg',
        footer = 'Now you will have the App available.'
    },
}

Config.StoreApps = { -- Apps from the App Store.
    ['instagram'] = { -- App label.
        app = "instagram", -- App label.
        color = "img/apps/instagram.png", -- App visual image.
        icon = "fab fa-spotify", -- Ignore.
        tooltipText = "Instagram",  -- Visual app name.
        tooltipPos = 'top', -- Ignore.
        job = false, -- If you want this app to work only with jobs, put them inside ' '.
        blockedjobs = {}, -- If you want this app to crash with jobs, put them inside {}.
        slot = 18, -- Slot where the app will be installed.
        Alerts = 0, -- Ignore.
        creator = "Instagram, Inc.​",
        password = false,
        isGame = false,
        description = 'Free - Offers In-App Purchases.',
        score = '4.25', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '22.5M Ratings',
        age = '16+',
        extraDescription = {
            {
                header = 'INSTAGRAM',
                head = 'Enjoy with your friends!',
                image = 'https://i.imgur.com/nhyfbJs.png',
                footer = 'Bringing you closer to the people and things you love. — Instagram from Facebook'
            }
        }
    },

    ['garage'] = {
        app = "garage",
        color = "img/apps/garages.png",
        icon = "fas fa-warehouse",
        tooltipText = "My Garage",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 19,
        creator = "Raffaele Di Marzo.​",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Manage your vehicles data.',
        score = '3.75', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '48 Ratings',
        age = '18+',
        extraDescription = {
            {
                header = 'MY GARAGE',
                head = 'Manage your vehicles here.',
                image = 'https://i.imgur.com/Pv9W8iP.png',
                footer = 'My Garage is the application that all owners of cars, motorcycles or other vehicles.'
            }
        }
    },

    ['whatsapp'] = {
        app = "whatsapp",
        color = "img/apps/whatsapp.png",
        icon = "fas fa-warehouse",
        tooltipText = "WhatsApp",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 20,
        creator = "WhatsApp Inc.",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Simple. Reliable. Private.',
        score = '4', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '9.6M Ratings',
        age = '16+',
        extraDescription = {
            {
                header = 'WHATSAPP',
                head = '#3 in Social Networking',
                image = 'https://www.cronista.com/files/image/336/336154/60cb8a40b2548.jpg',
                footer = 'WhatsApp from Facebook is a FREE messaging and video calling app.'
            }
        }
    },

    ['twitter'] = {
        app = "twitter",
        color = "img/apps/twitter.png",
        icon = "fas fa-warehouse",
        tooltipText = "Twitter",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 21,
        creator = "Twitter, Inc.",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Contains Ads·Offers in-app purchases',
        score = '3.75', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '19.3M Ratings',
        age = '17+',
        extraDescription = {
            {
                header = 'TWITTER',
                head = 'Are you ready to Tweet?',
                image = 'https://d500.epimg.net/cincodias/imagenes/2022/01/07/gadgets/1641568079_017034_1641569592_noticia_normal.jpg',
                footer = 'Expand your social network and stay updated on whats trending now.'
            }
        }
    },

    ['advert'] = {
        app = "advert",
        color = "img/apps/yellow_pages.png",
        icon = "fas fa-warehouse",
        tooltipText = "Yellow Pages",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 22,
        creator = "YELLOWPAGES.COM LLC.​",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Find local businesses near you.',
        score = '4', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '36.1K Ratings',
        age = '4+',
        extraDescription = {
            {
                header = 'YELLOW PAGES',
                head = 'Advertise your articles here.',
                image = 'https://thumbs.dreamstime.com/b/portsmouth-hampshire-uk-mobile-phone-cell-being-held-hand-yellow-pages-app-open-screen-209900632.jpg',
                footer = 'More than 30,000 people publish their articles here!'
            }
        }
    },

    ['tinder'] = {
        app = "tinder",
        color = "img/apps/tinder.png",
        icon = "fas fa-warehouse",
        tooltipText = "Tinder",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 23,
        creator = "Tinder Inc.​",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Chat and meet new people!',
        score = '4.25', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '10.5M Ratings',
        age = '16+',
        extraDescription = {
            {
                header = 'TINDER',
                head = 'With 30 billion matches to date!',
                image = 'https://d500.epimg.net/cincodias/imagenes/2020/01/23/lifestyle/1579788462_071828_1579788504_noticia_normal.jpg',
                footer = 'Tinder is the most popular app in the world to meet new people.'
            }
        }
    },

    ['youtube'] = {
        app = "youtube",
        color = "img/apps/youtube.png",
        icon = "fas fa-warehouse",
        tooltipText = "YouTube",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 24,
        creator = "Google LLC.​",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Videos, Music and Live Streams',
        score = '3.25', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '24.3M Ratings',
        age = '17+',
        extraDescription = {
            {
                header = 'YOUTUBE',
                head = 'Your favorite videos and creators.',
                image = 'https://f.hellowork.com/blogdumoderateur/2021/05/youtube-mobile-pc.jpg',
                footer = 'Discover a large number of videos and content creators!'
            }
        }
    },
    
    ['uber'] = {
        app = "uber",
        color = "img/apps/uber.png",
        icon = "fas fa-warehouse",
        tooltipText = "Uber Eats",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 25,
        creator = "Uber Technologies, Inc.​",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Any takeout order to your door!',
        score = '3.75', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '4.9M Ratings',
        age = '12+',
        extraDescription = {
            {
                header = 'UBER EATS',
                head = 'Find food delivery on your budget.',
                image = 'https://s03.s3c.es/imag/_v0/770x420/e/5/f/uber-eats.jpg',
                footer = 'Start working now, with a simple click!'
            }
        }
    },

    ['darkweb'] = {
        app = "darkweb",
        color = "img/apps/darkweb.png",
        icon = "fas fa-warehouse",
        tooltipText = "Onion Browser",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {'police'},
        slot = 26,
        creator = "Mike Tigas.​",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Secure, anonymous web with Tor.',
        score = '3.25', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '1.2K Ratings',
        age = '18+',
        extraDescription = {
            {
                header = 'ONION OR TOR',
                head = 'Secure, anonymous web/shop with Tor',
                image = 'https://www.adslzone.net/app/uploads-adslzone.net/2018/09/tor-browser-android.jpg?x=480&y=375&quality=40',
                footer = 'The best Tor-related offering on iOS right now is Onion Browser'
            }
        }
    },

    ['radio'] = {
        app = "radio",
        color = "img/apps/radio.png",
        icon = "fas fa-warehouse",
        tooltipText = "Radio",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 27,
        creator = "LS Radio Inc.​",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Radio work for all users.',
        score = '3.25', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = ' 332 Ratings',
        age = '16+',
        extraDescription = {
            {
                header = 'RADIO',
                head = 'A radio to connect to many frequencies!',
                image = 'https://i.imgur.com/ENBVOUI.png',
                footer = 'Communicate quickly and safely.'
            }
        }
    },

    ['state'] = {
        app = "state",
        color = "img/apps/workspace.png",
        icon = "fas fa-warehouse",
        tooltipText = "State",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 28,
        creator = "Los Santos Inc.​",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Contact Los Santos employees.',
        score = '4.25', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = ' 12M Ratings',
        age = '4+',
        extraDescription = {
            {
                header = 'STATE',
                head = 'Police, ambulances and much more here',
                image = 'https://cdn.oldskull.net/wp-content/uploads/2014/12/los-santos-ciudad-de-gta.jpg',
                footer = 'Contact them directly now.'
            }
        }
    },

    ['meos'] = {
        app = "meos",
        color = "img/apps/police.png",
        icon = "fas fa-warehouse",
        tooltipText = "Police",
        tooltipPos = 'top',
        job = {'police'},
        blockedjobs = {},
        slot = 29,
        creator = "LS Department.​",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Exclusive MDT for policemen.',
        score = '5', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = ' 12 Ratings',
        age = '18+',
        extraDescription = {
            {
                header = 'MDT',
                head = 'Database for police!',
                image = 'https://i.imgur.com/xIn2bWQ.png',
                footer = 'The Saints are safe thanks to your work.'
            }
        }
    },

    ['jump'] = {
        app = "jump",
        color = "img/apps/jump.png",
        icon = "fas fa-warehouse",
        tooltipText = "Doodle Jump",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 30,
        creator = "Hydra Dev.​",
        Alerts = 0,
        password = false,
        isGame = true,
        description = 'Insanely Addictive!',
        score = '4.75', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = ' 660 Ratings',
        age = '4+',
        extraDescription = {
            {
                header = 'DOODLE JUMP',
                head = 'BE WARNED: Insanely addictive!',
                image = 'https://thumbs.gfycat.com/ContentEnragedIridescentshark-size_restricted.gif',
                footer = 'Very fun jumping game!'
            }
        }
    },

    ['darkchat'] = {
        app = "darkchat",
        color = "img/apps/darkchat.png",
        icon = "fas fa-warehouse",
        tooltipText = "Darkchat",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {'police'},
        slot = 31,
        creator = "Anonymous.​",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Completely anonymous chat.',
        score = '2.75', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '500K Ratings',
        age = '18+',
        extraDescription = {
            {
                header = 'DARKCHAT',
                head = 'Completely anonymous chat.',
                image = 'data:image/jpeg;base64,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',
                footer = 'Application to create anonymous chats.'
            }
        }
    },

    ['business'] = {
        app = "business",
        color = "img/apps/business.png",
        icon = "fas fa-warehouse",
        tooltipText = "Business",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 32,
        creator = "Los Santos Inc.",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Contact the companies of Los Santos!',
        score = '5', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '12M Ratings',
        age = '14+',
        extraDescription = {
            {
                header = 'COMPANIES AND BUSINESS',
                head = 'Contact the companies of Los Santos!',
                image = 'https://diariolibre.blob.core.windows.net.optimalcdn.com/images/binrepository/doordashdriver_15714255_20210205162935-focus-0-0-375-240.jpg',
                footer = 'Order food or talk to cops quickly!'
            }
        }
    },

    ['society'] = {
        app = "society",
        color = "img/apps/society.png",
        icon = "fas fa-warehouse",
        tooltipText = "Society",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 33,
        creator = "Los Santos Inc.",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Addon for Business App!',
        score = '4', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '666 Ratings',
        age = '18+',
        extraDescription = {
            {
                header = 'SOCIETY',
                head = 'Addon for Business App!',
                image = 'https://zenkit.com/wp-content/uploads/2017/12/business-meeting.jpg',
                footer = 'Communicate with the buyers of your Business App!'
            }
        }
    },

    ['spotify'] = {
        app = "spotify",
        color = "img/apps/spotify.png",
        icon = "fas fa-warehouse",
        tooltipText = "Spotify",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 34,
        creator = "Spotify AB.​",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Play your music!',
        score = '4.75', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '25M Ratings',
        age = '12+',
        extraDescription = {
            {
                header = 'SPOTIFY',
                head = 'Play your music"',
                image = 'https://indiehoy.com/wp-content/uploads/2021/04/spotify-logo.jpg',
                footer = 'Escuchar música y podcasts gratis no podía ser más sencillo con la app de Spotify.'
            }
        }
    },

    ['flappy'] = {
        app = "flappy",
        color = "img/apps/flappy.png",
        icon = "fas fa-warehouse",
        tooltipText = "Flappy Bird",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 34,
        creator = "Essendon Studios.​",
        Alerts = 0,
        password = false,
        isGame = true,
        description = 'Jump with your Bird around the world!',
        score = '4.75', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '2M Ratings',
        age = '12+',
        extraDescription = {
            {
                header = 'FLAPPY BIRD',
                head = 'Jump with your Bird around the world!',
                image = 'https://deblogsyjuegos.files.wordpress.com/2015/10/flappygif.gif',
                footer = 'Have fun with the new Flappy Bird!'
            }
        }
    },

    ['kong'] = {
        app = "kong",
        color = "img/apps/kong.png",
        icon = "fas fa-warehouse",
        tooltipText = "Donkey Kong",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 35,
        creator = "Nintendo Inc.​",
        Alerts = 0,
        password = false,
        isGame = true,
        description = 'Save the princess!',
        score = '2.25', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '3M Ratings',
        age = '4+',
        extraDescription = {
            {
                header = 'DONKEY KONG',
                head = 'Save the princess!',
                image = 'https://i.gifer.com/1INx.gif',
                footer = 'Play as Mario to save Princess Peach from the clutches of Donkey Kong!'
            }
        }
    },

    ['pacman'] = {
        app = "pacman",
        color = "img/apps/pacman.png",
        icon = "fas fa-warehouse",
        tooltipText = "PAC-MAN",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 37,
        creator = "BANDAI NAMCO Inc.​",
        Alerts = 0,
        password = false,
        isGame = true,
        description = 'PAC-MAN introduces story mode!',
        score = '4', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '1M Ratings',
        age = '18+',
        extraDescription = {
            {
                header = 'PAC-MAN',
                head = 'PAC-MAN introduces story mode!',
                image = 'https://cl.buscafs.com/www.sandiegored.com/public/uploads/images/112453.gif',
                footer = 'Go on an exciting journey, experience various maze layouts with obstacles'
            }
        }
    },

    ['group-chats'] = {
        app = "group-chats",
        color = "img/apps/discord.png",
        icon = "fas fa-warehouse",
        tooltipText = "Discord",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 38,
        creator = "Discord Inc.​",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Chat, talk and join!',
        score = '4.5', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '100M Ratings',
        age = '16+',
        extraDescription = {
            {
                header = 'Discord',
                head = 'Chat, talk and join!',
                image = 'https://cdn1.epicgames.com/salesEvent/salesEvent/egs-discord-discord-s1-2560x1440-51474ee7abe3_2560x1440-e14a2b58e93768f0abc47dbf62a4ee86',
                footer = 'The best site to chat and create channels!'
            }
        }
    },

    ['uberDriver'] = {
        app = "uberDriver",
        color = "img/apps/uberDriver.png",
        icon = "fas fa-warehouse",
        tooltipText = "Uber",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 39,
        creator = "Uber Technologies, Inc.",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Request trips whenever you want',
        score = '4', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '12M Ratings',
        age = '16+',
        extraDescription = {
            {
                header = 'Uber',
                head = 'Request trips whenever you want',
                image = 'https://www.autofacil.es/wp-content/uploads/2021/05/coche_uber.jpg',
                footer = 'In Uber we commit ourselves to your security.'
            }
        }
    },

    ['rentel'] = { -- Rental DLC.
        app = "rentel",
        color = "img/apps/rentel.png",
        icon = "fas fa-warehouse",
        tooltipText = "Nextbike",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {},
        slot = 39,
        creator = "nextbike.​",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Start cycling!',
        score = '3.50', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '333 Ratings',
        age = '4+',
        extraDescription = {
            {
                header = 'NEXTBIKE',
                head = 'The best bike rental app!',
                image = 'https://i.imgur.com/WPzp1PV.png',
                footer = 'Find bike rental areas or even make friends!'
            }
        }
    }, 

    ['racing'] = { -- Racing DLC.
        app = "racing",
        color = "img/apps/racing.png",
        icon = "fas fa-warehouse",
        tooltipText = "Racing",
        tooltipPos = 'top',
        job = false,
        blockedjobs = {'police'},
        slot = 40,
        creator = "Los Santos Customs.​",
        Alerts = 0,
        password = false,
        isGame = false,
        description = 'Los Santos Illegal Racing App.',
        score = '4.25', -- Options: 0, 0.25, 0.5, 0.75, 1, 1.25, 1.50, 1.75, 2, 2.25, 2.50, 2.75, 3, 3.25, 3.50, 3.75, 4, 4.25, 4.50, 4.75, 5
        rating = '5M Ratings',
        age = '16+',
        extraDescription = {
            {
                header = 'RACING',
                head = 'Illegal racing in Los Santos!',
                image = 'https://i.imgur.com/OJ4Zxtn.png',
                footer = 'Application created by LS Customs, to provide comfort to drivers.'
            }
        }
    },
}


Config.PhoneApplications = { -- Pre-installed applications (If you modify them, remember to empty the "apps" column of your sql "users").
    [1] = { -- Slot id.
        app = "phone", -- App label.
        color = "img/apps/phone.png", -- App visual image.
        icon = "fa fa-phone-alt", -- Ignore.
        tooltipText = "Phone", -- Ignore.
        tooltipPos = "top", -- Ignore.
        job = false, -- Ignore.
        blockedjobs = {}, -- Ignore.
        slot = 1, -- Slot where the app will appear.
        Alerts = 0, -- Alerts that will appear in the app as soon as you use the phone.
        bottom = true, -- Ignore.
    },

    [2] = {
        app = "photos",
        color = "img/apps/gallery.png",
        icon = "fab fa-spotify",
        tooltipText = "Gallery",
        job = false,
        blockedjobs = {},
        slot = 2,
        Alerts = 0,
        bottom = true,
    },

    [3] = {
        app = "messages",
        color = "img/apps/messages.png",
        icon = "fas fa-university",
        tooltipText = "Messages",
        job = false,
        slot = 3,
        blockedjobs = {},
        Alerts = 0,
        bottom = true
    },

    [4] = {
        app = "settings",
        color = "img/apps/settings.png",
        icon = "fa fa-cog",
        tooltipText = "Settings",
        tooltipPos = "top",
        job = false,
        blockedjobs = {},
        slot = 4,
        Alerts = 0,
        bottom = true
    },

    [5] = {
        app = "clock",
        color = "img/apps/clock.png",
        icon = "fab fa-spotify",
        tooltipText = "Clock",
        job = false,
        slot = 5,
        blockedjobs = {},
        Alerts = 0,
    },

    [6] = {
        app = "camera",
        color = "img/apps/camera.png",
        icon = "fab fa-spotify",
        tooltipText = "Camera",
        job = false,
        blockedjobs = {},
        slot = 6,
        Alerts = 0,
    },

    [7] = {
        app = "mail",
        color = "img/apps/mail.png",
        icon = "fas fa-envelope",
        tooltipText = "Mail",
        job = false,
        blockedjobs = {},
        slot = 7,
        Alerts = 0,
    },

    [8] = {
        app = "bank",
        color = "img/apps/banksign.png",
        icon = "fas fa-university",
        tooltipText = "Bank",
        job = false,
        slot = 8,
        blockedjobs = {},
        Alerts = 0,
    },

    [9] = {
        app = "calendar",
        color = "img/apps/system_calendar_1.png",
        icon = "fab fa-spotify",
        tooltipText = "Calendar",
         job = false,
         blockedjobs = {},
         slot = 9,
         Alerts = 0,
    },

    [10] = {
        app = "weather",
        color = "img/apps/weather.png",
        icon = "&nbsp;",
        tooltipText = "Weather",
         job = false,
         blockedjobs = {},
         slot = 10,
         Alerts = 0,
    },

    [11] = {
        app = "notes",
        color = "img/apps/notes.png",
        icon = "fab fa-spotify",
        tooltipText = "Notes",
         job = false,
         blockedjobs = {},
         slot = 11,
         Alerts = 0,
    },

    [12] = {
        app = "calculator",
        color = "img/apps/calculator.png",
        icon = "fab fa-spotify",
        tooltipText = "Calculator",
         job = false,
         blockedjobs = {},
         slot = 12,
         Alerts = 0,
    },

    [13] = {
        app = "store",
        color = "img/apps/appstore.png",
        icon = "fas fa-user-tie",
        tooltipText = "App Store",
        job = false,
        blockedjobs = {},
        slot = 13,
        Alerts = 0,
    },

    [14] = {
        app = "music",
        color = "img/apps/music.png",
        icon = "",
        tooltipText = "Music",
        job = false,
        slot = 14,
        blockedjobs = {},
        Alerts = 0,
        bottom = true
    },

    [15] = {
        app = "ping",
        color = "img/apps/ping.png",
        icon = "",
        tooltipText = "Ping",
        job = false,
        slot = 15,
        blockedjobs = {},
        Alerts = 0,
        bottom = true
    },

-- It will only work if you use qs-housing, if you have this resource, you can enable it.
    --[[ [16] = {
        app = "houses",
        color = "img/apps/home.png",
        icon = "",
        tooltipText = "Home",
        job = false,
        slot = 16,
        blockedjobs = {},
        Alerts = 0,
        bottom = true
    }, ]]
}