# Called by worldtool:technical/common/get_dim_bottom/load

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
tellraw @s {"nbt":"Translation.\"error.outside_world\"","storage": "worldtool:storage","color": "red"}
tellraw @s ["",{"nbt":"Translation.\"button.retry.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.retry.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/retry_menu"}}," ",{"nbt":"Translation.\"button.close.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.close.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/close"}}]
function worldtool:ui/anti_feedback_chat_message/load
