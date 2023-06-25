fx_version 'cerulean'

game 'gta5'

version '1.0.1'

lua54 'yes'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config/config.lua',
	'config/config_framework.lua',
	'config/translations.lua',
	'server/main.lua',
	'server/framework_functions.lua',
}

client_scripts {
	'config/config.lua',
	'config/config_framework.lua',
	'config/translations.lua',
	'client/gui.lua',
	'client/main.lua',
}

escrow_ignore {
    'config/config.lua',
	'config/translations.lua',
	'config/config_framework.lua',
}

dependency '/assetpacks'