# Called by worldtool:process_start/common/check_positions
# Starts the process

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt.input] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:process_start/common/start.input

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:process_start/start
