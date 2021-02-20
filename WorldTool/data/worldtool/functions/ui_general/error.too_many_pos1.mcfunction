scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run kill @s

function worldtool:ui_general/clear_chat

tellraw @s {"text": "Error: You have more than one position 1. All have been removed, so one needs to be placed again.","color":"red"}
function worldtool:ui_general/anti_feedback_chat_message/load
