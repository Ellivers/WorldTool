# Called by worldtool:ui_general/clone/rotation_menu/menu
# Sets the rotation of the preview armor stand

data modify storage worldtool:storage Temp.Rotation set value [0f, 0f, 0f]

execute store result storage worldtool:storage Temp.Rotation[0] float 1 run scoreboard players get #temp worldtool
execute store result storage worldtool:storage Temp.Rotation[1] float 1 run scoreboard players get #temp2 worldtool
execute store result storage worldtool:storage Temp.Rotation[2] float 1 run scoreboard players get #temp3 worldtool

data modify entity @s Pose.Head set from storage worldtool:storage Temp.Rotation
