fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'tC - IDCARD'
author 'tC Dev'
version '1.0.0'
description 'Script Thẻ Ngành Dev Bởi tC Dev'

shared_scripts {
	'@ox_lib/init.lua',
	'config.lua'
}

client_script 'main/client.lua'

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'bridge/framework/*.lua',
	'bridge/inventory/*.lua',
	'main/server.lua',
	'main/version.lua',
}

ui_page "web/index.html"

files {
	'web/index.html',
	'web/css/style.css',
	'web/flags/*.png',
	'lang/global.js',
	'web/js/*.js',
	'web/badges/*.png',
}
