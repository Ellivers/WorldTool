tag @s add wt_TempHahaThisIsNeeded
execute if entity @s[tag=!random_2] as @e[type=minecraft:area_effect_cloud,tag=pos1,tag=!cloning_wt] if score @s wt_ID = @p wt_ID as @p run function worldtool:load_function/global_start
execute if entity @s[tag=!random_2] as @e[type=minecraft:area_effect_cloud,tag=pos1,tag=cloning_wt] if score @s wt_ID = @p wt_ID as @p as @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker] if score @s wt_ID = @p wt_ID at @s as @a[tag=wt_TempHahaThisIsNeeded,limit=1] run function worldtool:ui/clone/start
execute if entity @s[tag=random_2] as @e[type=minecraft:area_effect_cloud,tag=randomcorner1] if score @s wt_ID = @p wt_ID at @s run function worldtool:load_function/load_random
tag @s remove wt_TempHahaThisIsNeeded