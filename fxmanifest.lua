fx_version 'adamant'

game 'gta5'

lua54 'yes'
client_scripts {
	--'config.lua',
	'client/*.lua',
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server/*.lua',
}
files {
	'locales/*.json'
}

shared_scripts {
	'@ox_lib/init.lua',
	'@es_extended/imports.lua',
}