# Called by worldtool:technical/common/save_load_area/area_saved
# Saves the area data

function #rx.playerdb:api/v2/get/self

execute if data storage rx.playerdb:io player.data.WorldTool.Clipboard run data modify storage worldtool:storage Temp.TemplateList set from storage rx.playerdb:io player.data.WorldTool.Clipboard.TemplateList
execute if data storage rx.playerdb:io player.data.WorldTool.Clipboard run function worldtool:technical/common/save_load_area/restock_slots

execute unless data storage rx.playerdb:io player.data.WorldTool.Clipboard run data modify storage rx.playerdb:io player.data.WorldTool.Clipboard set value {TemplateList:[]}
data modify storage rx.playerdb:io player.data.WorldTool.Clipboard.TemplateList set from storage worldtool:storage Processes[-1].Output

function #rx.playerdb:api/v2/save/self

function worldtool:ui_general/options/menu
