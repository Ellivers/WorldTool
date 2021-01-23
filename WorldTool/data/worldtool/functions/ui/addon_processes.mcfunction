scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:ui/kill_wt_check

tag @s remove placing_fill
tag @s add wt_backbuttonplzthx
function worldtool:ui/clear_chat

tellraw @s {"text": "List of addon processes:\n","color":"light_purple"}
function #worldtool:general_list

function worldtool:ui/anti_feedback_chat_message/load
