# Called by worldtool:ui_brush/select_block/replace/1
# Menu for selecting a secondary brush block

function worldtool:ui/clear_chat
function worldtool:ui/back_button

function worldtool:pick_block/other/remove_tags

tag @s add wt.allow_input
tag @s add wt.select_block.brush
tag @s add wt.select_block.brush.replace

tellraw @s[tag=wt.brush.replace.normal] ["",{"nbt":"Translation.\"button.to_replace.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.to_replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon falling_block ~ ~ ~ {Tags:[worldtool,wt.selected_block],BlockState:{Name:\"NAME_HERE\"}}"}},"  ",{"nbt":"Translation.\"button.air.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.air.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/select_block/selected.air"}},"  ",{"nbt":"Translation.\"button.pick_block.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.pick_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/select_block/replace/pick_block"}}]
tellraw @s[tag=wt.brush.replace.secondary] ["",{"nbt":"Translation.\"button.to_not_replace.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.to_not_replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon falling_block ~ ~ ~ {Tags:[worldtool,wt.selected_block],BlockState:{Name:\"NAME_HERE\"}}"}},"  ",{"nbt":"Translation.\"button.air.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.air.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/select_block/selected.air"}},"  ",{"nbt":"Translation.\"button.pick_block.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.pick_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/select_block/replace/pick_block"}}]
function worldtool:ui/anti_feedback_chat_message/load
