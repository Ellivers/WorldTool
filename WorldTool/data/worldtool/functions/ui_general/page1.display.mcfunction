# Called by worldtool:ui_general/page1
# Displays the dynamic parts of page 1 of the general tool's menu

function worldtool:ui/remove_process_tags
tellraw @p ["",{"nbt":"Translation.\"button.replace.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/replace/menu"}}," ",{"nbt":"Translation.\"button.measure.name\"","storage": "worldtool:storage","color": "#264fff","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.measure.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": ""}}]
