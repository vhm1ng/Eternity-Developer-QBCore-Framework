Config, Locales = {}, {}

Config.Debug = false -- This help find the source of a problem 

Config.OnlyUnpaidCityInvoices = false

Config.OnlyUnpaidSocietyInvoices = false

Config.EventPrefix = 'okokBilling'

Config.Locale = 'en'

Config.DatabaseTable = 'okokbilling'

Config.OpenMenuKey = 168 -- Default 168 (F7)

Config.OpenMenuCommand = 'hoadon' -- Command to open the menu

Config.UseOKOKNotify = true -- If set to true it will use okokNotify, if set to false it will use the QB notify

Config.InvoiceDistance = 15

Config.AllowPlayersInvoice = falas -- if players can create Player to Player invoices

Config.okokRequests = false -- Player to Player invoices only, to avoid abuse

Config.AuthorReceivesAPercentage = true -- When sending a society invoice

Config.AuthorPercentage = 0 -- Percentage that the invoice author receives

Config.VATPercentage = 10

Config.SocietyReceivesLessWithVAT = false

Config.QBManagement = true -- If set to true it will use the et-management resource, if set to false it will use the okokBanking database tables

Config.SocietyHasSocietyPrefix = false -- *Do not touch this if the resource is working correctly* If set to true it'll search for `society_police` (example) when paying a society invoice

Config.AutoDeletePaidInvoices = true -- true: Deletes paid invoices (to reduce lag) | false: Doesn't delete paid invoices.

Config.DeletePaidInvoicesEvery = 30 -- How often it should delete the paid invoices (in minutes)

-- Autopay

Config.UseAutoPay = true

Config.DefaultLimitDate = 2 -- Days for limit pay date

Config.CheckForUnpaidInvoicesEvery = 30 -- minutes

Config.FeeAfterEachDay = true

Config.FeeAfterEachDayPercentage = 5

-- Autopay

Config.JobsWithCityInvoices = { -- Which jobs have City Invoices (They will be allowed to delete any invoice) | Admins will have access by default
	'court'
}

Config.CityInvoicesAccessRanks = { -- Which jobs have City Invoices (They will be allowed to delete any invoice)
	'' -- All of them have access
}

Config.AllowedSocieties = { -- Which societies can access the Society Invoices
	'police',
	'ambulance'
}

Config.InspectCitizenSocieties = { -- Which societies can access the Society Invoices
	'police'
}

Config.SocietyAccessRanks = { -- Which ranks of the society have access to Society Invoices and City Invoices
	'Boss',
	'Chief',
}

Config.BillsList = {
	['police'] = {
		-- {'High Speed', 550},
		-- {'Parking on bridge', 1200},
		-- {'Jumping a red light', 250},
		-- {'Driving dangerously', 750},
		-- {'Reckless driving', 1000},
		{'Custom'}, -- If set without a price it'll let the players create a custom invoice (custom price)
	},
	['ambulance'] = {
		{'Chữa', 500},
		{'Cứu TTP', 1000},
		{'Cứu NTP', 1500},
		{'Cứu 12h', 2000},
		{'Cứu dưới nước', 2500},
		{'Cứu quân sự', 5000},
		{'Đánh nhau', 20000},
		{'Custom'},
	},
}

Config.AdminGroups = {
	'god',
	'admin',
	'mod',
}

-------------------------- DISCORD LOGS

-- To set your Discord Webhook URL go to sv_utils.lua, line 3

Config.BotName = 'ETERNITY BILLING' -- Write the desired bot name

Config.ServerName = 'REPUBLIC OF ETERNITY' -- Write your server's name

Config.IconURL = 'https://media.discordapp.net/attachments/1002061639723515965/1115909469931589702/myLogo.png' -- Insert your desired image link

Config.DateFormat = '%d/%m/%Y [%X]' -- To change the date format check this website - https://www.lua.org/pil/22.1.html

-- To change a webhook color you need to set the decimal value of a color, you can use this website to do that - https://www.mathsisfun.com/hexadecimal-decimal-colors.html

Config.CreatePersonalInvoiceWebhookColor = '65535'

Config.CreateJobInvoiceWebhookColor = '16776960'

Config.CancelInvoiceWebhookColor = '16711680'

Config.PayInvoiceWebhookColor = '65280'

-------------------------- LOCALES (DON'T TOUCH)

function _L(id) 
	if Locales[Config.Locale][id] then 
		return Locales[Config.Locale][id] 
	else 
		print('Locale '..id..' doesn\'t exist') 
	end 
end