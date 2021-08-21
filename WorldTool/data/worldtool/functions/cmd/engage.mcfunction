# Called manually
execute if score $functionRunning worldtool matches 1 run schedule function worldtool:cmd/engage 1t replace
execute unless score $functionRunning worldtool matches 1 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] at @s run function worldtool:cmd/load