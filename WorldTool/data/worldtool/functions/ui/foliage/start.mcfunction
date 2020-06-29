tag @s remove in_menu

execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID unless entity @s[tag=!replacefill,tag=!replacefill_reversed] as @e[type=minecraft:area_effect_cloud,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run clone ~-1 ~ ~ ~-1 ~ ~ 2 1 13 replace move
execute as @e[type=minecraft:area_effect_cloud,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/kill_check_block

execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add foliage_ing
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID at @s run function worldtool:load_function/load_fill
function worldtool:ui/anti_feedback_chat_message/load