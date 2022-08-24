# Called by worldtool:ui_shapes/adjust_position/menu
# Nudges the position 1 block

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool at @s run tp ~ ~ ~-1

function worldtool:ui_shapes/adjust_position/menu
