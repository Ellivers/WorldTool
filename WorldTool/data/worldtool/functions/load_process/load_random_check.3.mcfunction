# Check if there is another process running
tag @s remove wt_waiting_in_menu
execute if score $functionRunning worldtool matches 1 run function worldtool:wait/start_waiting
execute unless score $functionRunning worldtool matches 1 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randomcorner1] if score @s wt_ID = @p wt_ID at @s run function worldtool:load_process/load_random
