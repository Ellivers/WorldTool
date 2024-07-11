# Called by worldtool:ui_shapes/menu
# Decreases the length by 1 block

function worldtool:ui_shapes/check_tool

function worldtool:technical/common/get_item_data
execute store result score #temp worldtool run data get storage worldtool:storage Temp.ItemData.WorldTool.ShapeSettings.Length

scoreboard players remove #temp worldtool 1

execute if score #temp worldtool matches ..0 run scoreboard players set #temp worldtool 1

execute store result storage worldtool:storage Temp.Length int 1 run scoreboard players get #temp worldtool
function worldtool:modify_item/shape_tool/settings/set_length

function worldtool:ui_shapes/menu
