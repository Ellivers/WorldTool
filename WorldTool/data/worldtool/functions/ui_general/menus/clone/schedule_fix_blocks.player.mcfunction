tag @s remove wt_clone_block_fix_schedule
tag @s add wt_TempHahaThisIsNeeded
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_start_marker] if score @s wt_ID = #ID_temp worldtool at @s as @a[tag=wt_TempHahaThisIsNeeded,limit=1] run function worldtool:ui_general/menus/clone/start/start
