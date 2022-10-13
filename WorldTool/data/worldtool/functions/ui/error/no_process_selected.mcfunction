# Called by worldtool:process_start/common/setup_process
# Displays an error



tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
tellraw @s {"nbt":"Translation.\"error.no_process_selected\"","storage": "worldtool:storage","color": "red"}
tellraw @s ["",{"nbt":"Translation.\"button.reopen_menu.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reopen_menu.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/reopen_menu/after_starting"}}," ",{"nbt":"Translation.\"button.close.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.close.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/close"}}]
function worldtool:ui/anti_feedback_chat_message/load
