
-- Form modpath
local modpath = minetest.get_modpath("item_generator_addon")
igen_addon = {} -- Settings

-- Settings
dofile(modpath.."/settings.lua")

-- Load API
local igen = rawget(_G, "item_generator") or {}

-- Begin checking which mods are loaded
if igen ~= nil then
    if technic ~= nil then
        dofile(modpath.."/addons/technic.lua")
        if igen_addon["log_loaded_mods"] then
            minetest.log("action", "[igen_addon] Technic loaded!")
        end
    end
    if moreores ~= nil then
        dofile(modpath.."/addons/moreores.lua")
        if igen_addon["log_loaded_mods"] then
            minetest.log("action", "[igen_addon] moreores loaded!")
        end
    end
    if farming ~= nil then
        dofile(modpath.."/addons/farming.lua")
        if igen_addon["log_loaded_mods"] then
            minetest.log("action", "[igen_addon] farming loaded!")
        end
    end
else
    error("[igen_addon] Failed getting Item Generator API!")
end