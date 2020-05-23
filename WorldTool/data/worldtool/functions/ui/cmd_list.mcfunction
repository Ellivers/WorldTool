tag @s remove in_menu
tag @s remove placing_fill
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add cmdlist_search
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID at @s run function worldtool:load_fill
function worldtool:ui/anti_feedback_chat_message/load