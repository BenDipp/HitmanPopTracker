-- entry point for all lua code of the pack
-- more info on the lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
ENABLE_DEBUG_LOG = true
-- get current variant
local variant = Tracker.ActiveVariantUID
-- check variant info
IS_ITEMS_ONLY = variant:find("itemsonly")

print("-- Example Tracker --")
print("Loaded variant: ", variant)
if ENABLE_DEBUG_LOG then
    print("Debug logging is enabled!")
end

-- Utility Script for helper functions etc.
ScriptHost:LoadScript("scripts/utils.lua")

-- Logic
ScriptHost:LoadScript("scripts/logic/logic.lua")

-- Custom Items
ScriptHost:LoadScript("scripts/custom_items/class.lua")
ScriptHost:LoadScript("scripts/custom_items/progressiveTogglePlus.lua")
ScriptHost:LoadScript("scripts/custom_items/progressiveTogglePlusWrapper.lua")

-- Items
Tracker:AddItems("items/items.jsonc")

if not IS_ITEMS_ONLY then -- <--- use variant info to optimize loading
    -- Maps
    Tracker:AddMaps("maps/maps.jsonc")
    -- Locations
    Tracker:AddLocations("locations/locations.jsonc")
end

-- Layout
Tracker:AddLayouts("layouts/items.jsonc")
Tracker:AddLayouts("layouts/tracker.jsonc")
Tracker:AddLayouts("layouts/broadcast.jsonc")

-- AutoTracking for Poptracker
if PopVersion and PopVersion >= "0.18.0" then
    ScriptHost:LoadScript("scripts/autotracking.lua")
end

local maps = {"ICA Facility","Paris","Sapienza","Marrakesh","Bangkok","Colorado","Hokkaido","Hawkes Bay","Miami","Santa Fortuna","Mumbai","Whittleton Creek","Isle of Sgail","New York","Haven Island","Dubai","Dartmoor","Berlin","Chongqing","Mendoza","Carpathian Mountains","Ambrose Island"}

local isUpdating = false
function updateAllLocationsWithSameName(changedSection)
    if isUpdating or changedSection.FullID:match("Completion Locations.*") then
        return
    end
    isUpdating = true
    local shortName = changedSection.FullID:match("([^/]+)$")
    print(shortName)
    local desiredCheckStatus = changedSection.AvailableChestCount
    for i=1,22 do
        local otherSection = Tracker:FindObjectForCode("@ItemList/"..maps[i].."/"..shortName) 

       if otherSection ~= nil then
        otherSection.AvailableChestCount = desiredCheckStatus
       end
    end
    isUpdating = false
end

ScriptHost:AddOnLocationSectionChangedHandler("Keep Locations with Same name in sync", updateAllLocationsWithSameName)