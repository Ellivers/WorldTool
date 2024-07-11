# Called by worldtool:ui_shapes/menu
# Increases the degrees by 5

function worldtool:ui_shapes/check_tool

function worldtool:technical/common/get_item_data
execute store result score #temp worldtool run data get storage worldtool:storage Temp.ItemData.WorldTool.ShapeSettings.Degrees

scoreboard players remove #temp worldtool 5
execute if score #temp worldtool matches ..4 run scoreboard players set #temp worldtool 360

execute store result storage worldtool:storage Temp.Degrees int 1 run scoreboard players get #temp worldtool
function worldtool:modify_item/shape_tool/settings/set_degrees

function worldtool:ui_shapes/menu
