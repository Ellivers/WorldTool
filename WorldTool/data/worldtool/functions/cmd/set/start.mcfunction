# Called manually
execute if score $functionRunning worldtool matches 1 run tellraw @s {"text": "Another process is already running","color": "red"}
execute unless score $functionRunning worldtool matches 1 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] at @s run function worldtool:cmd/load/load