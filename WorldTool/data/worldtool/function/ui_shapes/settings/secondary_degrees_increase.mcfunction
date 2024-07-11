# Called by worldtool:ui_shapes/menu
# Increases the degrees by 5

function worldtool:ui_shapes/check_tool

function worldtool:technical/common/get_item_data
execute store result score #temp worldtool run data get storage worldtool:storage Temp.ItemData.WorldTool.ShapeSettings.SecondaryDegrees

scoreboard players add #temp worldtool 5
execute if score #temp worldtool matches 181.. run scoreboard players set #temp worldtool 5

execute store result storage worldtool:storage Temp.SecondaryDegrees int 1 run scoreboard players get #temp worldtool
function worldtool:modify_item/shape_tool/settings/set_secondary_degrees

function worldtool:ui_shapes/menu
