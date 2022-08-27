# Called by worldtool:ui/select_block/replace/1
# Menu for selecting a secondary block

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
function worldtool:ui/back_button

function worldtool:pick_block/other/remove_tags

tag @s add wt.allow_input
tag @s add wt.select_block.other
tag @s add wt.select_block.other.replace

tellraw @s[tag=wt.replace.normal] ["",{"nbt":"Translation.\"button.to_replace.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.to_replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon falling_block ~ ~ ~ {Tags:[worldtool,wt.selected_block],BlockState:{Name:\"NAME_HERE\"}}"}},"  ",{"nbt":"Translation.\"button.air.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.air.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/select_block/selected.air"}},"  ",{"nbt":"Translation.\"button.pick_block.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.pick_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/select_block/replace/pick_block"}}]
tellraw @s[tag=wt.replace.secondary] ["",{"nbt":"Translation.\"button.to_not_replace.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.to_not_replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon falling_block ~ ~ ~ {Tags:[worldtool,wt.selected_block],BlockState:{Name:\"NAME_HERE\"}}"}},"  ",{"nbt":"Translation.\"button.air.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.air.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/select_block/selected.air"}},"  ",{"nbt":"Translation.\"button.pick_block.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.pick_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/select_block/replace/pick_block"}}]
function worldtool:ui/anti_feedback_chat_message/load
