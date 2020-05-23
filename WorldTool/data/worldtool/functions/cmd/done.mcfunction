kill @e[type=minecraft:area_effect_cloud,tag=wt_drawer]
execute as @e[type=minecraft:area_effect_cloud,tag=cmdpos1,tag=measuring] run function worldtool:measure/done
execute as @e[type=minecraft:area_effect_cloud,tag=cmdpos1,tag=random1] at @s run function worldtool:cmd/start_random_2
execute as @e[type=minecraft:area_effect_cloud,tag=cmdpos1,tag=random2] run function worldtool:cmd/random_done
kill @e[type=minecraft:area_effect_cloud,tag=clonepos]
kill @e[type=minecraft:area_effect_cloud,tag=brushpos1]
kill @e[type=minecraft:area_effect_cloud,tag=brushpos2]
kill @e[type=minecraft:area_effect_cloud,tag=setblock_source]
