tag @s remove in_menu
tag @s remove menu_nudge
tag @s remove wt_dont_move_pos1
tag @s remove wt_dont_move_pos2

function worldtool:ui/clear_chat
tellraw @s ["",{"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/general_tool_ui/full"}},{"text": "Options","bold": true,"color":"gold"}]
tellraw @s ["",{"text": "\n\n\n[Nudge Selection...]  ","color":"light_purple","hoverEvent": {"action": "show_text","value": "Move one or both positions one block at a time"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/nudge/select"}},{"text": "[Settings...]","color":"dark_green","hoverEvent": {"action": "show_text","value": "Settings"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/settings"}}]
function worldtool:ui/anti_feedback_chat_message/load