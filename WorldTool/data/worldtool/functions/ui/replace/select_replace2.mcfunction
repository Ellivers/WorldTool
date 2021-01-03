function worldtool:ui/clear_chat
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = #ID_temp worldtool at @s run setblock ~1 1 ~ minecraft:air
tellraw @s {"text": "[⬅Back]\n","color":"aqua","hoverEvent": {"action": "show_text","value": "Go back to the previous menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/replace/select_replace1"}}

tellraw @s ["",{"text":"[Select which block to replace with]  ","color":"gold","hoverEvent":{"action":"show_text","value":"Select a block to replace the other block with"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run setblock ~1 ~ ~ "}},{"text":"(Air)  ","hoverEvent":{"action":"show_text","value":"Air"},"clickEvent":{"action":"run_command","value":"/function worldtool:load_process/start_check1"}},{"text": "[Pick block...]  ","color": "green","hoverEvent": {"action": "show_text","value": "Choose an existing block to use"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/pick_block/primary"}},{"text":"\n[Cancel]","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
tag @s remove replacing_fill1
tag @s add replacing_fill2

function worldtool:ui/anti_feedback_chat_message/load