# Called by worldtool:ui_shapes/adjust_position/menu
# Increases the step size by 1 block

scoreboard players add @s wt.size 1
execute if score @s wt.size matches ..0 run scoreboard players set @s wt.size 1

function worldtool:ui_shapes/adjust_position/menu
