# Called by worldtool:ui_shapes/menu
# Decreases the precision by 1

function worldtool:ui_shapes/check_tool

execute store result score #temp worldtool run data get entity @s SelectedItem.tag.WorldTool.ShapeSettings.Precision

scoreboard players remove #temp worldtool 1

execute if score #temp worldtool matches 7 run scoreboard players set #temp worldtool 6
execute if score #temp worldtool matches 11 run scoreboard players set #temp worldtool 10
execute if score #temp worldtool matches 13..14 run scoreboard players set #temp worldtool 12
execute if score #temp worldtool matches 17 run scoreboard players set #temp worldtool 16
execute if score #temp worldtool matches 19 run scoreboard players set #temp worldtool 18
execute if score #temp worldtool matches 21..23 run scoreboard players set #temp worldtool 20
execute if score #temp worldtool matches 26..29 run scoreboard players set #temp worldtool 25
execute if score #temp worldtool matches 31 run scoreboard players set #temp worldtool 30
execute if score #temp worldtool matches 33..35 run scoreboard players set #temp worldtool 32

execute if score #temp worldtool matches 0 run scoreboard players set #temp worldtool -2
execute if score #temp worldtool matches ..-4 run scoreboard players set #temp worldtool -3

execute store result storage worldtool:storage Temp.Precision int 1 run scoreboard players get #temp worldtool
item modify entity @s weapon.mainhand worldtool:shape_tool/settings/set_precision

function worldtool:ui_shapes/menu
