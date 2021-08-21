kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer]
execute unless entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1,tag=random1] run scoreboard players set $functionRunning worldtool 0
scoreboard players set $brushFunctionRunning worldtool 0
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1,tag=measuring] run function worldtool:measure/done
execute if score $functionRunning worldtool matches 1 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1,tag=random1] at @s run function worldtool:cmd/start_random_2
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1,tag=random2] run function worldtool:cmd/random_done
kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos]
kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brushpos1]
kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brushpos2]
kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=setblock_source]