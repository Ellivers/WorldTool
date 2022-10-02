# Called by worldtool:ui_shapes/menu
# Increases the degrees by 5

function worldtool:ui_shapes/check_tool

execute store result score #temp worldtool run data get entity @s SelectedItem.tag.WorldTool.ShapeSettings.Degrees2

scoreboard players add #temp worldtool 5
execute if score #temp worldtool matches 361.. run scoreboard players set #temp worldtool 5

execute store result storage worldtool:storage Temp.Degrees2 int 1 run scoreboard players get #temp worldtool
item modify entity @s weapon.mainhand worldtool:shape_tool/settings/set_degrees2

function worldtool:ui_shapes/menu
