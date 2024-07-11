# Called by worldtool:ui/settings/list1 and worldtool:ui/settings/list2
# Displays a button that resets all settings

tellraw @s {"nbt":"Translation.\"button.reset_all.name\"","storage": "worldtool:storage","color": "#5a20e3","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset_all.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/settings/reset_all"}}
