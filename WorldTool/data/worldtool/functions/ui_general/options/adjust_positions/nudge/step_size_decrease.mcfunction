# Called by worldtool:ui_general/options/adjust_positions/menu
# Decreases the step size by 1 block

scoreboard players remove @s wt.size 1
execute if score @s wt.size matches ..0 run scoreboard players set @s wt.size 1

function worldtool:ui_general/options/adjust_positions/menu
