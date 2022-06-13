# Called by worldtool:ui_general/page1
# Code for page 2 of the general tool's menu

tellraw @s ["\n",{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","bold": true,"color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.previous_page.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/page1"}},{"nbt":"Translation.\"label.page\"","storage": "worldtool:storage"},"2"]
