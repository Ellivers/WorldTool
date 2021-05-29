# Called by worldtool:ui_general/click/load

tellraw @s [{"nbt":"Translation.\"button.use.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.use.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/load"}},{"nbt":"Translation.\"button.options.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.options.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/select"}}]
tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load
