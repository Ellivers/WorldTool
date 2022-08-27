# Called by various functions
# Here, you choose normal mode or exclude mode

tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude
tag @s remove wt.menu.two_block_query.2
tag @s remove wt.menu.two_block_query.3
tag @s add wt.menu.two_block_query.1

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
function worldtool:ui/return.back_button

tellraw @s ["",{"nbt":"Translation.\"button.normal.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.normal.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/two_block_query/display/selected.normal"}}," ",{"nbt":"Translation.\"button.exclude.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.exclude.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/two_block_query/display/selected.exclude"}}]
function worldtool:ui/close_button

function worldtool:ui/anti_feedback_chat_message/load
