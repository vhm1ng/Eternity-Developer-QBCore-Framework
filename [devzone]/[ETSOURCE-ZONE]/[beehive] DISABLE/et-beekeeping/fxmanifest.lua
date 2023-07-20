fx_version 'cerulean'
games { 'gta5' }

author "VT Developmet's"
description 'NoPixel 3.0 Inspired Beehive'

client_scripts {
  'client/cl_*.lua',
  "@PolyZone/client.lua",
}

shared_script {
  'shared/sh_*.*',
}

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  'server/sv_main.lua',
}

--
-- Escrow
-- 
escrow_ignore {
    'shared/sh_config - original.lua',
    'shared/sh_config.lua',
    'et-setup/sql.sql',
}