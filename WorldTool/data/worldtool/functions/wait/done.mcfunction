tag @s add wt_TempHahaThisIsNeeded
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute if entity @s[tag=!wt_random_2] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1,tag=!cloning_wt] if score @s wt_ID = #ID_temp worldtool as @p run function worldtool:process_load/global_start
execute if entity @s[tag=!wt_random_2] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1,tag=cloning_wt] if score @s wt_ID = #ID_temp worldtool as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_waiting_marker] if score @s wt_ID = #ID_temp worldtool at @s as @a[tag=wt_TempHahaThisIsNeeded,limit=1] run function worldtool:ui_general/menus/clone/start
execute if entity @s[tag=wt_random_2] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randomcorner1] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:process_load/randomize/load
tag @s remove wt_TempHahaThisIsNeeded