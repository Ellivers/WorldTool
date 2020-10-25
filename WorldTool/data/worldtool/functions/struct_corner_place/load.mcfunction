tag @s remove in_menu
tag @s remove fun_menu
function worldtool:ui/anti_feedback_chat_message/load
function worldtool:ui/clear_chat

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s wt_ID = @p wt_ID run tag @s add wt_struct_corn
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID at @s run function worldtool:struct_corner_place/pos1
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s wt_ID = @p wt_ID at @s run function worldtool:struct_corner_place/pos2
tellraw @s "Placed 2 blocks"