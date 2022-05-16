# Called by worldtool:ui_brush/main
# Menu for selecting a brush block

function worldtool:ui/clear_chat
function worldtool:ui_brush/back_button

tag @s add wt.select_block
tag @s add wt.select_block.brush

tellraw @s ["\n",{"nbt":"Translation.\"button.select_block.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.select_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon falling_block ~ ~ ~ {Tags:[worldtool,wt.selected_block],BlockState:{Name:\"NAME_HERE\"}}"}},"  ",{"nbt":"Translation.\"button.air.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.air.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/select_block/selected.air"}},"  ",{"nbt":"Translation.\"button.pick_block.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.pick_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/select_block/pick_block"}}]
function worldtool:ui/anti_feedback_chat_message/load
