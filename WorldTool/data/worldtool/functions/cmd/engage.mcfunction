#execute unless entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] as @e[type=minecraft:area_effect_cloud,tag=cmdpos1] at @s run function worldtool:cmd/load
#execute if entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] if score $STOP worldtool matches 0 run schedule function worldtool:cmd/engage 1t
#schedule function worldtool:cmd/stop_it_please/engage 1t
#scoreboard players set $STOP worldtool 1
execute as @e[type=minecraft:area_effect_cloud,tag=cmdpos1] at @s run function worldtool:cmd/load