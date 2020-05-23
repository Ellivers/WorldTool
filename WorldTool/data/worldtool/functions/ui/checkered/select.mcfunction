function worldtool:ui/summon_check_block/1

tag @s remove placing_fill
tag @s add checkered_select

tellraw @s "\n\n\n\n\n\n\n\n\n\n"
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/checkered/select.pos1
function worldtool:ui/anti_feedback_chat_message/load