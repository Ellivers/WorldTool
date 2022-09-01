# Called by worldtool:ui_shapes/menu
# Decreases the X rotation by 5

function worldtool:ui_shapes/check_tool

execute store result score #temp worldtool run data get entity @s SelectedItem.tag.WorldTool.ShapeSettings.XRotation

scoreboard players remove #temp worldtool 5
execute if score #temp worldtool matches ..-1 run scoreboard players set #temp worldtool 355

execute store result storage worldtool:storage Temp.XRotation int 1 run scoreboard players get #temp worldtool
item modify entity @s weapon.mainhand worldtool:shape_tool/settings/set_x_rotation

function worldtool:ui_shapes/menu
