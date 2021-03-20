tag @s remove placing_filtered
tag @s remove placing_filtered_reversed
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s remove filtered
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s remove filtered_reversed
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:ui_general/kill_wt_check

function worldtool:ui_general/clear_chat
tellraw @s {"text": "[⬅Back]\n","color":"aqua","hoverEvent": {"action": "show_text","value": "Go back to the previous menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_general/menus/clone/select_clone"}}

tellraw @s [{"text":"[Clone a certain block...]  ","color":"green","hoverEvent":{"action":"show_text","value":"Choose a block to filter with"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/clone/filter/select_clone_filtered.normal"}},{"text":"[Don't clone a certain block...]  ","color":"gold","hoverEvent":{"action":"show_text","value":"Choose a block to not clone"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/clone/filter/select_clone_filtered.reversed"}},{"text":"[Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/cancel"}}]
function worldtool:ui_general/anti_feedback_chat_message/load