# Called by worldtool:ui_general/options/adjust_positions/menu
# Nudges the selected positions

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.position,tag=wt.nudge_selected] if score @s wt.ID = #ID_temp worldtool at @s run tp ~ ~-1 ~

function worldtool:ui_general/options/adjust_positions/menu
