tag @s remove in_menu
tag @s remove menu_nudge

function worldtool:ui/clear_chat
tellraw @s ["",{"text": "Options","bold": true,"color":"gold"},{"text": "\n\n\n[Nudge Selection...]  ","color":"light_purple","hoverEvent": {"action": "show_text","value": "Move the entire selection one block at a time"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/nudge/select"}},{"text": "[Settings...]","color":"dark_green","hoverEvent": {"action": "show_text","value": "Settings"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/settings"}}]
function worldtool:ui/anti_feedback_chat_message/load