-- entry point for all lua code of the pack
-- more info on the lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
ENABLE_DEBUG_LOG = true
-- get current variant
local variant = Tracker.ActiveVariantUID
-- check variant info
IS_OVERVIEW_ONLY = variant:find("var_overview_only")

print("-- HITMAN Tracker --")
print("Loaded variant: ", variant)
if ENABLE_DEBUG_LOG then
    print("Debug logging is enabled!")
end

-- Utility Script for helper functions etc.
ScriptHost:LoadScript("scripts/utils.lua")

-- Items
Tracker:AddItems("items/items.jsonc")
Tracker:AddItems("items/hosted_items.jsonc")
Tracker:AddItems("items/option_items.jsonc")
Tracker:AddItems("items/enabled_levels_items.jsonc")
Tracker:AddItems("items/enabled_completion_items.jsonc")
Tracker:AddItems("items/enabled_sa_items.jsonc")
Tracker:AddItems("items/enabled_so_items.jsonc")
Tracker:AddItems("items/enabled_saso_items.jsonc")

if not IS_OVERVIEW_ONLY then -- <--- use variant info to optimize loading
    -- Maps
    Tracker:AddMaps("maps/maps.jsonc")
end

-- Locations
Tracker:AddLocations("locations/completion_locations.jsonc")
Tracker:AddLocations("locations/item_locations.jsonc")
Tracker:AddLocations("locations/overview_item_locations.jsonc")
Tracker:AddLocations("locations/overview_split_item_locations.jsonc")

-- Maps
Tracker:AddMaps("maps/overview_maps.jsonc")

-- Layout
Tracker:AddLayouts("layouts/items.jsonc")
Tracker:AddLayouts("layouts/tracker.jsonc")
Tracker:AddLayouts("layouts/broadcast.jsonc")
Tracker:AddLayouts("layouts/settings.jsonc")

-- AutoTracking for Poptracker
if PopVersion and PopVersion >= "0.18.0" then
    ScriptHost:LoadScript("scripts/autotracking.lua")
end