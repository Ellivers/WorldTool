tag @s remove measure_filter
tag @s remove measure_filter_reversed
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s remove filtered_reversed
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s remove filtered
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:ui_general/kill_wt_check

function worldtool:ui_general/clear_chat
tellraw @s {"text": "[⬅Back]\n","color":"aqua","hoverEvent": {"action": "show_text","value": "Go back to the previous menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_general/menus/measure/select"}}

tellraw @s [{"text":"[Normal...]  ","color":"green","hoverEvent":{"action":"show_text","value":"Choose a block to filter with"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/measure/filtered/select.normal"}},{"text":"[Exclude...]  ","color":"gold","hoverEvent":{"action":"show_text","value":"Choose a block to not count"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/measure/filtered/select.reversed"}},{"text":"[Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/cancel"}}]
function worldtool:ui_general/anti_feedback_chat_message/load