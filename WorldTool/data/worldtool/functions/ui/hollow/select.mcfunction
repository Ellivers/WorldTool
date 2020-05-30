tag @s remove placing_fill
tag @s add hollowing

#🦀

execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/hollow/select.pos1
function worldtool:ui/anti_feedback_chat_message/load