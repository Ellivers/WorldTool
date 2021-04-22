# Woo-hoo! It's done!

execute unless score #temp worldtool matches 1 run tag @s remove wt_started_function

execute unless score #temp worldtool matches 1 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randompoint,tag=dostuff] if score @s wt_ID = #ID_temp worldtool run tag @s remove dostuff
