execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run kill @s

function worldtool:ui/clear_chat

tellraw @s {"text": "Error: You have more than one position 1. All have been removed, so one needs to be placed again.","color":"red"}
function worldtool:ui/anti_feedback_chat_message/load