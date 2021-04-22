# Exceptions for finishing processes
execute if entity @s[tag=random1] as @a[tag=wt_random_2] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:ui_general/menus/randomize/place_done

execute if entity @s[tag=wt_clone] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run function worldtool:processes/clone/fix_blocks
execute if entity @s[tag=wt_clone] as @a if score @s wt_ID = #ID_temp worldtool run tag @s add wt_clone_block_fix_schedule
execute if entity @s[tag=wt_clone] run schedule function worldtool:ui_general/menus/clone/schedule_fix_blocks 1t
