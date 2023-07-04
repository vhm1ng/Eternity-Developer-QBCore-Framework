fx_version 'cerulean'
game 'gta5'

author 'VHMing'
description 'Vào căn hộ F1'
version '1.0.0'

dependencies {
    'PolyZone',
    'et-target'
}

shared_scripts {
    'shared/sh_config.lua'
}

client_scripts {
    '@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/ComboZone.lua',
    'client/cl_main.lua',
}
