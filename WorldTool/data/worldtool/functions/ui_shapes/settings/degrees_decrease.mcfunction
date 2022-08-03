# Called by worldtool:ui_shapes/menu
# Increases the degrees by 5

function worldtool:ui_shapes/check_tool

execute store result score #temp worldtool run data get entity @s SelectedItem.tag.WorldTool.ShapeSettings.Degrees

scoreboard players remove #temp worldtool 5
execute if score #temp worldtool matches ..4 run scoreboard players set #temp worldtool 360

execute store result storage worldtool:storage Temp.Degrees int 1 run scoreboard players get #temp worldtool
item modify entity @s weapon.mainhand worldtool:shape_tool/settings/set_degrees

function worldtool:ui_shapes/menu
