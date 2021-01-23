function worldtool:ui/clear_chat

tellraw @s {"text": "[⬅Back]\n","color":"aqua","hoverEvent": {"action": "show_text","value": "Go back to the previous menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/hollow/select"}}

scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run function worldtool:ui/hollow/select_sides.pos1

function worldtool:ui/anti_feedback_chat_message/load
