function worldtool:ui/summon_check_block/secondary

function worldtool:ui/clear_chat
tellraw @s {"text": "[⬅Back]\n","color":"aqua","hoverEvent": {"action": "show_text","value": "Go back to the previous menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/measure/filtered/select"}}

execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add filtered_reversed
tag @s add measure_filter
tellraw @s ["",{"text":"[Select a block]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Select a block to not count"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run setblock ~-1 ~ ~ "}},{"text":"(Air)  ","color":"white","hoverEvent":{"action":"show_text","value":"Air"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/measure/start"}},{"text":"[Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load