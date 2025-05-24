-- use this file to map the AP item ids to your items
-- first value is the code of the target item and the second is the item type override. The third value is an optional increment multiplier for consumables. (feel free to expand the table with any other values you might need (i.e. special initial values, etc.)!)
-- here are the SM items as an example: https://github.com/Cyb3RGER/sm_ap_tracker/blob/main/scripts/autotracking/item_mapping.lua
BASE_ITEM_ID = 2023011800
ITEM_MAPPING = {
	[BASE_ITEM_ID + 826] = { { "Level - ICA Facility" }, "toggle" },
	[BASE_ITEM_ID + 807] = { { "Level - Bangkok" }, "toggle" },
	[BASE_ITEM_ID + 809] = { { "Level - Colorado" }, "toggle" },
	[BASE_ITEM_ID + 814] = { { "Level - Hokkaido" }, "toggle" },
	[BASE_ITEM_ID + 815] = { { "Level - Marrakesh" }, "toggle" },
	[BASE_ITEM_ID + 820] = { { "Level - Paris" }, "toggle" },
	[BASE_ITEM_ID + 822] = { { "Level - Sapienza" }, "toggle" },
	[BASE_ITEM_ID + 808] = { { "Level - Santa Fortuna" }, "toggle" },
	[BASE_ITEM_ID + 816] = { { "Level - Miami" }, "toggle" },
	[BASE_ITEM_ID + 817] = { { "Level - Mumbai" }, "toggle" },
	[BASE_ITEM_ID + 818] = { { "Level - Hawkes Bay" }, "toggle" },
	[BASE_ITEM_ID + 819] = { { "Level - Whittleton Creek" }, "toggle" },
	[BASE_ITEM_ID + 824] = { { "Level - Isle of Sgail" }, "toggle" },
	[BASE_ITEM_ID + 813] = { { "Level - New York" }, "toggle" },
	[BASE_ITEM_ID + 823] = { { "Level - Haven Island" }, "toggle" },
	[BASE_ITEM_ID + 806] = { { "Level - Dartmorr" }, "toggle" },
	[BASE_ITEM_ID + 810] = { { "Level - Berlin" }, "toggle" },
	[BASE_ITEM_ID + 811] = { { "Level - Mendoza" }, "toggle" },
	[BASE_ITEM_ID + 812] = { { "Level - Dubai" }, "toggle" },
	[BASE_ITEM_ID + 821] = { { "Level - Ambrose Island" }, "toggle" },
	[BASE_ITEM_ID + 825] = { { "Level - Chongqing" }, "toggle" },
	[BASE_ITEM_ID + 827] = { { "Level - Carpathian Mountains" }, "toggle" }
}
