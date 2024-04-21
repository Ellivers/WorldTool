# Called by worldtool:ui_general/page2
# Displays the stucture corners menu

function worldtool:ui/clear_chat
tag @s add wt.menu.structure_corners
tag @s add wt.allow_input

function worldtool:ui_general/back_button

function worldtool:database/get

function worldtool:input_data/message/structure_corners_name

tellraw @s {"nbt":"Translation.\"button.run.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.structure_corners.run.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/structure_corners/run"}}
function worldtool:ui/close_button

function worldtool:ui/anti_feedback_chat_message/load
