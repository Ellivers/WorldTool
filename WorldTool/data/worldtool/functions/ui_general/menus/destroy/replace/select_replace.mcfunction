# Called by worldtool:ui_general/menus/destroy/select
# Menu for selecting to replace normally or to exclude a block

tag @s remove d_replacing_fill1
tag @s remove d_replacing_fill2
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:ui_general/kill_wt_check
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s remove replacefill
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s remove replacefill_reversed

# Put a gap in the chat and a back button
function worldtool:ui_general/clear_chat
tellraw @s {"text": "[⬅Back]\n","color":"aqua","hoverEvent": {"action": "show_text","value": "Go back to the previous menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_general/menus/destroy/select"}}

tellraw @s [{"text":"[Normal...]  ","color":"green","hoverEvent":{"action":"show_text","value":"Select which block to replace"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/destroy/replace/replace_select.normal"}},{"text":"[Exclude...]  ","color":"gold","hoverEvent":{"action":"show_text","value":"Select which block to not replace"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/menus/destroy/replace/replace_select.reversed"}},{"text":"[Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/cancel"}}]
function worldtool:ui_general/anti_feedback_chat_message/load