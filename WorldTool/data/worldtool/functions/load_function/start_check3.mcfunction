# Checks if there is another process running
execute if entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] run function worldtool:wait/start_waiting
execute unless entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] run function worldtool:load_function/global_start