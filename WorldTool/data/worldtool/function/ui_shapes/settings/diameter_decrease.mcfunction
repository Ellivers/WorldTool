# Called by worldtool:ui_shapes/menu
# Decreases the diameter by 2 (it's always odd)

function worldtool:ui_shapes/check_tool

function worldtool:technical/common/get_item_data
execute store result score #temp worldtool run data get storage worldtool:storage Temp.ItemData.WorldTool.ShapeSettings.Diameter

scoreboard players remove #temp worldtool 2

scoreboard players operation #temp2 worldtool = #temp worldtool
scoreboard players operation #temp2 worldtool %= #2 worldtool
execute if score #temp2 worldtool matches 0 run scoreboard players remove #temp worldtool 1

execute if score #temp worldtool matches ..2 run scoreboard players set #temp worldtool 3

execute store result storage worldtool:storage Temp.Diameter int 1 run scoreboard players get #temp worldtool
function worldtool:modify_item/shape_tool/settings/set_diameter

function worldtool:ui_shapes/menu
