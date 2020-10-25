tag @s remove measure_filter
tag @s remove measure_filter_reversed
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s remove filtered_reversed
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s remove filtered
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/kill_wt_check

function worldtool:ui/clear_chat
tellraw @s {"text": "[⬅Back]\n","color":"aqua","hoverEvent": {"action": "show_text","value": "Go back to the previous menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/measure/select"}}

tellraw @s [{"text":"[Normal...]  ","color":"green","hoverEvent":{"action":"show_text","value":"Choose a block to filter with"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/measure/filtered/select.normal"}},{"text":"[Exclude...]  ","color":"gold","hoverEvent":{"action":"show_text","value":"Choose a block to not count"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/measure/filtered/select.reversed"}},{"text":"[Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load