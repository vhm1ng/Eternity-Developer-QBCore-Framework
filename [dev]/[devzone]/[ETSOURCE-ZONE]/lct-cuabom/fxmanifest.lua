fx_version 'adamant'
games { 'gta5' }

shared_scripts {
	'config.lua'
}

client_scripts {
	'@PolyZone/client.lua',
	'client/main.lua'
}
dependencies {'prospecting'}
server_scripts {
	'@prospecting/interface.lua',
	'server/main.lua'
}

