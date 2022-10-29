# Called by worldtool:ui_general/page1
# Page 2 of the general tool's menu

function worldtool:ui/clear_chat
tag @s add wt.menu.general.page2

function worldtool:ui/back_button

function worldtool:ui_general/keep/button

tellraw @s ["",{"nbt":"Translation.\"button.checkered.name\"","storage": "worldtool:storage","color": "#fc03cf","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/load"}}," ",{"nbt":"Translation.\"button.greenery.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.greenery.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/greenery/load"}}]

function worldtool:ui/close_button

tellraw @s ["\n",{"nbt":"Translation.\"label.page\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","bold": true,"color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.previous_page.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/page1"}},"2"]

function worldtool:ui/anti_feedback_chat_message/load
