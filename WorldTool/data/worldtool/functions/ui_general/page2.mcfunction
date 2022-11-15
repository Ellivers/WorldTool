# Called by worldtool:ui_general/page1
# Page 2 of the General Tool's menu

function worldtool:ui/clear_chat
tag @s add wt.menu.general.page2

function worldtool:ui/back_button

function worldtool:ui_general/keep/button

tellraw @s ["",{"nbt":"Translation.\"button.smooth.name\"","storage": "worldtool:storage","color": "#fc8003","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/load"}}," ",{"nbt":"Translation.\"button.checkered.name\"","storage": "worldtool:storage","color": "#fc03cf","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/load"}}," ",{"nbt":"Translation.\"button.greenery.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.greenery.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/greenery/load"}}," ",{"nbt":"Translation.\"button.shatter.name\"","storage": "worldtool:storage","color": "red","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shatter.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shatter/menu"}},"\n",{"nbt":"Translation.\"button.command_list.name\"","storage": "worldtool:storage","color": "blue","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.command_list.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/command_list/start"}}]

execute if score $generalToolPlugins worldtool matches 1..

tellraw @s ["\n",{"nbt":"Translation.\"label.page\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","bold": true,"color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.previous_page.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/page1"}},"2","    ",{"nbt":"Translation.\"button.close.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.close.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/close"}}]

function worldtool:ui/anti_feedback_chat_message/load
