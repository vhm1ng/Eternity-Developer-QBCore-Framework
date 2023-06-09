fx_version 'cerulean'
game 'gta5'

description 'et-Cow'
version '1.0.0'

shared_scripts {
	'@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/EntityZone.lua',
	'@PolyZone/CircleZone.lua',
	'@PolyZone/ComboZone.lua',
    'config.lua',
}

client_scripts {
	'config.lua',
	'client/*.lua',
	'@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/EntityZone.lua',
	'@PolyZone/CircleZone.lua',
	'@PolyZone/ComboZone.lua',
}

server_script 'server/*.lua'
files{'html/*'}
file 'stream/gen_w_am_metaldetector.ytyp'
ui_page('html/index.html')
-- data_file 'DLC_ITYP_REQUEST' 'stream/carrot_y.ytyp'
-- data_file 'DLC_ITYP_REQUEST' 'stream/carrot_y.ytyp'
-- data_file 'DLC_ITYP_REQUEST' 'stream/wtmelon_y.ytyp'
-- data_file 'DLC_ITYP_REQUEST' 'stream/wtmelon.ytyp'

-- lua54 'yes'