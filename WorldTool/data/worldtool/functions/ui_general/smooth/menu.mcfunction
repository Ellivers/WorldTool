# Called by worldtool:ui_general/smooth/load
# Displays the smooth menu 😏

function worldtool:ui/clear_chat
tag @s add wt.menu.smooth
execute if score $keepMenuOptions worldtool matches 1 run tag @s add wt.visited_menu.smooth

function worldtool:ui_general/back_button

tellraw @s[tag=!wt.two_block_query.normal,tag=!wt.two_block_query.exclude] ["",{"nbt":"Translation.\"button.run.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.run.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/start"}}," ",{"nbt":"Translation.\"button.filter.off_more\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.filter.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/filter_on"}}," ",{"nbt":"Translation.\"button.smooth.settings.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.settings.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings"}}]
execute unless entity @s[tag=!wt.two_block_query.normal,tag=!wt.two_block_query.exclude] run tellraw @s ["",{"nbt":"Translation.\"button.run.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.run.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/start"}}," ",{"nbt":"Translation.\"button.filter.on\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.filter.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings/filter_off"}}," ",{"nbt":"Translation.\"button.smooth.settings.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.smooth.settings.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/smooth/settings"}}]

function worldtool:ui/close_button

function worldtool:ui/anti_feedback_chat_message/load
