tag @s remove in_menu

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID unless entity @s[tag=!replacefill,tag=!replacefill_reversed] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run clone ~-1 ~ ~ ~-1 ~ ~ 2 1 13 replace move
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/kill_wt_check

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add foliage_ing
function worldtool:load_process/load_check
function worldtool:ui/anti_feedback_chat_message/load
