# Called by worldtool:technical/common/save_load/area_saved
# Saves the area data

function #rx.playerdb:api/v2/get/self

execute if data storage rx.playerdb:io player.data.WorldTool.Clipboard run data modify storage worldtool:storage Temp.TemplateList set from storage rx.playerdb:io player.data.WorldTool.Clipboard.TemplateList
execute if data storage rx.playerdb:io player.data.WorldTool.Clipboard run function worldtool:technical/common/save_load/restock_slots

execute unless data storage rx.playerdb:io player.data.WorldTool.Clipboard run data modify storage rx.playerdb:io player.data.WorldTool.Clipboard set value {TemplateList:[]}
data modify storage rx.playerdb:io player.data.WorldTool.Clipboard.TemplateList set from storage worldtool:storage Processes[-1].Output.TemplateList

tag @s add wt.no_message
function worldtool:measure/load

data modify storage rx.playerdb:io player.data.WorldTool.Clipboard.Size set value [0,0,0]
execute store result storage rx.playerdb:io player.data.WorldTool.Clipboard.Size[0] int 1 run scoreboard players get #sizeX worldtool
execute store result storage rx.playerdb:io player.data.WorldTool.Clipboard.Size[1] int 1 run scoreboard players get #sizeY worldtool
execute store result storage rx.playerdb:io player.data.WorldTool.Clipboard.Size[2] int 1 run scoreboard players get #sizeZ worldtool

function #rx.playerdb:api/v2/save/self

function worldtool:ui_general/options/menu
