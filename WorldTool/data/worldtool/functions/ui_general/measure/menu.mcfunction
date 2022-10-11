# Called by worldtool:ui_general/page1.display
# Displays the measure menu

function worldtool:ui/clear_chat
function worldtool:ui_general/back_button

tag @s add wt.menu.measure

tellraw @s ["",{"nbt":"Translation.\"button.measure.all.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.measure.all.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:measure/area/load"}}," ",{"nbt":"Translation.\"button.measure.distance.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.measure.distance.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:measure/distance/load"}}," ",{"nbt":"Translation.\"button.measure.positions.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.measure.positions.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:measure/positions"}}," ",{"nbt":"Translation.\"button.measure.filter.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.measure.filter.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/measure/filter_menu"}}]

function worldtool:ui/anti_feedback_chat_message/load
