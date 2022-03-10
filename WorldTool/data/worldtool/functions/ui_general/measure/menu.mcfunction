# Called by worldtool:ui_general/page1.display

function worldtool:ui/clear_chat
function worldtool:ui/back_button

tag @s add wt.menu.measure

tellraw @s ["",{"nbt":"Translation.\"button.measure.all.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.measure.all.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:measure/load"}}," ",{"nbt":"Translation.\"button.measure.filter.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.measure.filter.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/measure/filter_menu"}}]

function worldtool:ui/anti_feedback_chat_message/load
