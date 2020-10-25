tag @s add wt_TempHahaThisIsNeeded
scoreboard players operation #ID_temp wt_ID = @s wt_ID
execute if entity @s[tag=!random_2] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1,tag=!cloning_wt] if score @s wt_ID = #ID_temp wt_ID as @p run function worldtool:load_process/global_start
execute if entity @s[tag=!random_2] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1,tag=cloning_wt] if score @s wt_ID = #ID_temp wt_ID as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_waiting_marker] if score @s wt_ID = #ID_temp wt_ID at @s as @a[tag=wt_TempHahaThisIsNeeded,limit=1] run function worldtool:ui/clone/start
execute if entity @s[tag=random_2] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randomcorner1] if score @s wt_ID = #ID_temp wt_ID at @s run function worldtool:load_process/load_random
tag @s remove wt_TempHahaThisIsNeeded