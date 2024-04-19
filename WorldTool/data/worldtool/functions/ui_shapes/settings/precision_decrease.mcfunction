# Called by worldtool:ui_shapes/menu
# Decreases the precision by 1

function worldtool:ui_shapes/check_tool

function worldtool:technical/common/get_item_data
execute store result score #temp worldtool run data get storage worldtool:storage Temp.ItemData.WorldTool.ShapeSettings.Precision

scoreboard players remove #temp worldtool 1

execute if score #temp worldtool matches 3 run scoreboard players set #temp worldtool 2
execute if score #temp worldtool matches 6..7 run scoreboard players set #temp worldtool 5
execute if score #temp worldtool matches 9 run scoreboard players set #temp worldtool 8
execute if score #temp worldtool matches 11..15 run scoreboard players set #temp worldtool 10
execute if score #temp worldtool matches 17..19 run scoreboard players set #temp worldtool 16
execute if score #temp worldtool matches 21..24 run scoreboard players set #temp worldtool 20
execute if score #temp worldtool matches 26..31 run scoreboard players set #temp worldtool 25
execute if score #temp worldtool matches 33..39 run scoreboard players set #temp worldtool 32

execute if score #temp worldtool matches 0 run scoreboard players set #temp worldtool -2
execute if score #temp worldtool matches ..-10 run scoreboard players set #temp worldtool -9

execute store result storage worldtool:storage Temp.Precision int 1 run scoreboard players get #temp worldtool
function worldtool:modify_item/shape_tool/settings/set_precision

function worldtool:ui_shapes/menu
