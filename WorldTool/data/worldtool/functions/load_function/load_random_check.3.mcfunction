# Check if there is another process running
execute if entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] run function worldtool:wait/start_waiting
execute unless entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] as @e[type=minecraft:area_effect_cloud,tag=randomcorner1] if score @s wt_ID = @p wt_ID at @s run function worldtool:load_function/load_random