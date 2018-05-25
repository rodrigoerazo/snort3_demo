require('snort_config')  -- for loading

conf_dir = os.getenv('SNORT_LUA_PATH')

if ( not conf_dir ) then
    conf_dir = '.'
end

dofile(conf_dir .. '/snort_defaults.lua')
dofile(conf_dir .. '/file_magic.lua')

stream = { }
stream_tcp = { }

wizard = default_wizard

ips = { enable_builtin_rules = true }
 
