# Called by worldtool:ui_general/smooth/load
# Displays the smooth menu 😏

function worldtool:ui/clear_chat
tag @s add wt.menu.smooth
tag @s add wt.allow_input

function worldtool:ui_general/back_button

tellraw @s ["",{"nbt":"Translation.\"button.run.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.run.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/start"}}]

function worldtool:ui/close_button

function worldtool:ui/anti_feedback_chat_message/load
