tag @s remove placing_fill
tag @s remove placing_hollow_inner
tag @s add hollowing

tag @s add wt_backbuttonplzthx
function worldtool:ui_general/clear_chat
#🦀
# crab in the code ^

scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run function worldtool:ui_general/menus/hollow/select.pos1
function worldtool:ui_general/anti_feedback_chat_message/load