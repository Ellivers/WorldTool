function worldtool:ui/summon_check_block/secondary

tag @s add placing_filtered
function worldtool:ui/clear_chat
tellraw @s {"text": "[⬅Back]\n","color":"aqua","hoverEvent": {"action": "show_text","value": "Go back to the previous menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/clone/filter/select_clone_filtered"}}

tellraw @s [{"text":"[Select a block]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Select a block to filter with"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run setblock ~-1 ~ ~ "}},{"text":"(Air)  ","color":"white","hoverEvent":{"action":"show_text","value":"Air"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/filter/select_filter"}},{"text":"[Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load