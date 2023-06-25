fx_version 'bodacious'

game 'gta5'

lua54 'yes'

version '1.2.2'

this_is_a_map 'yes'

--[[files {
    'diables_x_quasar_phone.ytyp',
    'diables_x_quasar_phone_black.ydr',
    'diables_x_quasar_phone_blue.ydr',
    'diables_x_quasar_phone_gold.ydr',
    'diables_x_quasar_phone_green.ydr',
    'diables_x_quasar_phone_greenlight.ydr',
    'diables_x_quasar_phone_grey.ydr',
    'diables_x_quasar_phone_pink.ydr',
    'diables_x_quasar_phone_purple.ydr',
    'diables_x_quasar_phone_red.ydr',
    'diables_x_quasar_phone_txd.ydr',
    'diables_x_quasar_phone_white.ydr',
}

data_file 'DLC_ITYP_REQUEST' 'diables_x_quasar_phone.ytyp']]

ui_page "html/index.html"

client_scripts {
    'config/config.lua',
    'config/config_framework.lua',
    'client/functions_framework.lua',
    'client/main.lua',
    'client/uber.lua',
    'client/photo.lua',
    'client/rentel.lua',
    'client/valet.lua',
    'client/discord.lua',
    'client/room_creation.lua',
    'client/business.lua',
    'client/pincode.lua',
    'config/config_discord.lua',
    'config/config_vehicles.lua',
    'config/config_pincode.lua',
    'config/config_animations.lua',
    'config/config_rentel.lua',
    'config/config_uber.lua',
    'config/config_client.lua',
    'config/config_radio.lua',
    'config/config_calls_client.lua',
    'config/config_invoices_client.lua',
    'config/config_business.lua',
    'config/translations.lua',

    --[[ '@cs-video-call/client/hooks/core.lua', ]]
    --[[ '@cs-stories/client/hooks/core.lua' ]]
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'config/config.lua',
    'config/config_discord.lua',
    'config/config_framework.lua',
    'server/functions_framework.lua',
    'config/config_webhook.lua',    
    'server/main.lua',
    'server/discord.lua',
    'server/room_creation.lua',
    'config/translations.lua',
    'config/config_pincode.lua',
    'config/config_server.lua',
	'config/config_valet.lua',
    'config/config_rentel.lua',
    'config/config_uber.lua',
    'config/config_banking.lua',
    'config/config_calls_server.lua',
    'config/config_invoices_server.lua',
    'config/config_commands.lua',
    'config/config_business.lua',
    'server/version_check.lua',

    --[[ '@cs-video-call/server/hooks/core.lua', ]]
    --[[ '@cs-stories/server/hooks/core.lua' ]]
}

files {
    'html/index.html',
    'html/js/*.js',
    'config/config_javascript.js',
    'config/config_discord.js',
    'config/translations.js',
    'html/img/*.png',
    'html/sounds/*.mp3',
    'html/css/*.css',
    'html/fonts/*.ttf',
    'html/fonts/*.otf',
    'html/fonts/*.woff',
    'html/img/uberDriver/*.png',
    'html/img/backgrounds/*.png',
    'html/img/apps/*.png',
	'html/img/app_details/*.png',
    'html/img/business/*.png',
    'html/img/darkweb_items/*.png',
}

escrow_ignore {
    'server/version_check.lua',
	'config/config.lua',
    'config/config_framework.lua',
    'config/translations.lua',
    'config/config_discord.lua',
    'config/config_valet.lua',
    'config/config_client.lua',
    'config/config_animations.lua',
    'config/config_commands.lua',
    'config/config_server.lua',
    'config/config_webhook.lua',
    'config/config_uber.lua',
    'config/config_rentel.lua',
    'config/config_pincode.lua',
    'config/config_radio.lua',
    'config/config_banking.lua',
    'config/config_calls_server.lua',
    'config/config_calls_client.lua',
    'config/config_invoices_client.lua',
    'config/config_invoices_server.lua',
    'config/config_business.lua',
    'config/config_vehicles.lua',
}

dependencies {
	'mysql-async', -- Required.
    'qs-sounds', -- Required.
	'screenshot-basic', -- Required.
	'/server:4752', -- ⚠️PLEASE READ⚠️ This requires at least server build 4700 or higher
}
dependency '/assetpacks'