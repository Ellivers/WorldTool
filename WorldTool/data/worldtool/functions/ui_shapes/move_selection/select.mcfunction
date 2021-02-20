scoreboard players operation #ID_temp worldtool = @s wt_ID

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker] if score @s wt_ID = #ID_temp worldtool run tag @s add wt_be_seleected
execute if entity @s[tag=wt_outline_selection] at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,tag=wt_be_seleected] align xyz positioned ~.5 ~.5 ~.5 run function worldtool:particles/load_shape_preview
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,tag=wt_be_seleected] remove wt_be_seleected

function worldtool:ui_general/clear_chat
tellraw @s {"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the main generation menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_shapes/select"}}

tellraw @s [{"text":"[+X]  ","color":"gold","hoverEvent": {"action": "show_text","value": "Nudge towards positive X (east)"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_shapes/move_selection/x"}},{"text":"[+Y]  ","hoverEvent": {"action": "show_text","value": "Nudge towards positive Y (up)"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_shapes/move_selection/y"}},{"text":"[+Z]","hoverEvent": {"action": "show_text","value": "Nudge towards positive Z (south)"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_shapes/move_selection/z"}}]
tellraw @s [{"text":"[-X]  ","color":"gold","hoverEvent": {"action": "show_text","value": "Nudge towards negative X (west)"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_shapes/move_selection/-x"}},{"text":"[-Y]  ","hoverEvent": {"action": "show_text","value": "Nudge towards negative Y (down)"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_shapes/move_selection/-y"}},{"text":"[-Z]","hoverEvent": {"action": "show_text","value": "Nudge towards negative Z (north)"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_shapes/move_selection/-z"}}]

function worldtool:ui_general/anti_feedback_chat_message/load
