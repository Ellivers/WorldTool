tag @s add in_menu
execute if entity @s[tag=wt_outline_selection] run function worldtool:ui/outline/load1

tellraw @s ["",{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n[⬅Back]","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/select"}},{"text": "\nNudge","bold": true,"color":"light_purple"}]

execute if entity @s[tag=wt_outline_selection] run tellraw @s {"text": "\n[Outline selection: On]","color":"dark_purple","hoverEvent": {"action": "show_text","value": "Toggle highlighting the selected area"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/outline_toggle"}}
execute if entity @s[tag=!wt_outline_selection] run tellraw @s {"text": "\n[Outline selection: Off]","color":"dark_purple","hoverEvent": {"action": "show_text","value": "Toggle highlighting the selected area"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/outline_toggle"}}

tellraw @s [{"text":"\n\n\n[+X]  ","color":"gold","hoverEvent": {"action": "show_text","value": "Nudge towards positive X (east)"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/options/nudge/move_x"}},{"text":"[+Y]  ","hoverEvent": {"action": "show_text","value": "Nudge towards positive Y (up)"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/options/nudge/move_y"}},{"text":"[+Z]","hoverEvent": {"action": "show_text","value": "Nudge towards positive Z (south)"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/options/nudge/move_z"}}]
tellraw @s [{"text":"[-X]  ","color":"gold","hoverEvent": {"action": "show_text","value": "Nudge towards negative X (west)"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/options/nudge/move_-x"}},{"text":"[-Y]  ","hoverEvent": {"action": "show_text","value": "Nudge towards negative Y (down)"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/options/nudge/move_-y"}},{"text":"[-Z]","hoverEvent": {"action": "show_text","value": "Nudge towards negative Z (north)"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/options/nudge/move_-z"}}]

tellraw @s {"text": "\n[Done]","color":"green","hoverEvent": {"action": "show_text","value": "Done"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/cancel"}}

function worldtool:ui/anti_feedback_chat_message/load