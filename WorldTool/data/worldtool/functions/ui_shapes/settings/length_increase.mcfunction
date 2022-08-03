# Called by worldtool:ui_shapes/menu
# Increases the length by 1 block

function worldtool:ui_shapes/check_tool

execute store result score #temp worldtool run data get entity @s SelectedItem.tag.WorldTool.ShapeSettings.Length

scoreboard players add #temp worldtool 1

execute store result storage worldtool:storage Temp.Length int 1 run scoreboard players get #temp worldtool
item modify entity @s weapon.mainhand worldtool:shape_tool/settings/set_length

function worldtool:ui_shapes/menu
