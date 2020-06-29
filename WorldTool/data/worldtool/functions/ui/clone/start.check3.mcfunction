tag @s add wt_TempHahaThisIsNeeded
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add cloning_wt

execute if entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] at @s run function worldtool:wait/start_waiting
execute unless entity @e[type=minecraft:area_effect_cloud,tag=wt_drawer] as @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker] if score @s wt_ID = @p wt_ID at @s as @a[tag=wt_TempHahaThisIsNeeded,limit=1] run function worldtool:ui/clone/start