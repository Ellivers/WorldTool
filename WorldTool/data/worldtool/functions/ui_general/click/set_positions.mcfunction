# Called by worldtool:ui_general/click/load

tellraw @s ["",{"nbt":"Translation.\"button.set_pos1.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.set_pos1.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:use_tool/ray_hit/general/pos1"}}," ",{"nbt":"Translation.\"button.set_pos2.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.set_pos2.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:use_tool/ray_hit/general/pos2"}}]
