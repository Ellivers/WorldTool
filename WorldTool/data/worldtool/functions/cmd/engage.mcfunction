# Called manually
execute if entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] run schedule function worldtool:cmd/engage 1t replace
execute unless entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] as @e[type=minecraft:area_effect_cloud,tag=cmdpos1] at @s run function worldtool:cmd/load