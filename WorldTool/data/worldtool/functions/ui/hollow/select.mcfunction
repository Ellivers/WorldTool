tag @s remove placing_fill
tag @s remove placing_hollow_inner
tag @s add hollowing

tag @s add backbuttonplzthx
function worldtool:ui/clear_chat
#🦀

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/hollow/select.pos1
function worldtool:ui/anti_feedback_chat_message/load