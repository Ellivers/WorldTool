# Called by worldtool:ui_general/click/load

tellraw @s ["",{"nbt":"Translation.\"button.use.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.no_positions.description\"","storage": "worldtool:storage"}}},"",{"nbt":"Translation.\"button.options.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.options.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/menu"}},"  ",{"nbt":"Translation.\"button.help.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.help.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "open_url","value": "https://ellivers.github.io/worldtool-docs"}}]
