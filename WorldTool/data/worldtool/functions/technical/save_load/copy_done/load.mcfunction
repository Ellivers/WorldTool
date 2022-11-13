# Called by worldtool:technical/common/save_load/area_saved
# Saves the area data

function #rx.playerdb:api/v2/get/self

execute if data storage rx.playerdb:io player.data.WorldTool.Clipboard run data modify storage worldtool:storage Temp.TemplateList set from storage rx.playerdb:io player.data.WorldTool.Clipboard[0].TemplateList
execute if data storage rx.playerdb:io player.data.WorldTool.Clipboard run function worldtool:technical/common/save_load/restock_slots

tag @s add wt.no_message
function worldtool:measure/area/load

data modify storage rx.playerdb:io player.data.WorldTool.Clipboard set value []
function worldtool:technical/save_load/copy_done/set_area_data_values

function #rx.playerdb:api/v2/save/self

function worldtool:ui_general/options/menu
