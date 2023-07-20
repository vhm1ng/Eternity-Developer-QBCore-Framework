name "Jim-Chairs"
author "Jimathy"
version "1.5"
description "Jim-Chairs By Jimathy"
fx_version "cerulean"
game "gta5"
lua54 'yes'

this_is_a_map 'yes'

files {
    'likemod_freefirethrone_props.ytyp',
}

data_file 'DLC_ITYP_REQUEST' 'likemod_freefirethrone_props.ytyp'

shared_scripts { 'config.lua', 'shared/*.lua' }
client_scripts { 'client/*.lua' }
server_scripts { 'server/*.lua' }