# Called by worldtool:ui_brush/main and worldtool:ui_shapes/main
# Menu for selecting a secondary block

function worldtool:pick_block/other/remove_tags

tag @s add wt.allow_input
tag @s add wt.select_block.other
tag @s add wt.select_block.other.replace
tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
function worldtool:ui/return.back_button

tag @s[tag=!wt.replace.first_time] remove wt.replace.normal
tag @s[tag=!wt.replace.first_time] remove wt.replace.exclude

execute unless entity @s[predicate=!worldtool:brush_tool/settings/replace/normal,predicate=!worldtool:shape_tool/settings/replace/normal] run tag @s add wt.replace.normal
execute unless entity @s[predicate=!worldtool:brush_tool/settings/replace/exclude,predicate=!worldtool:shape_tool/settings/replace/exclude] run tag @s add wt.replace.exclude
function #worldtool:hooks/ui/replace/get_mode

tellraw @s[tag=wt.replace.normal,tag=!wt.replace.first_time] [{"nbt":"Translation.\"info.selected_replace_block.normal\"","color": "gray","storage": "worldtool:storage"},{"nbt":"SelectedItem.tag.WorldTool.SecondaryBlock.State.Name","entity": "@s","color": "green"},"\n"]
tellraw @s[tag=wt.replace.exclude,tag=!wt.replace.first_time] [{"nbt":"Translation.\"info.selected_replace_block.exclude\"","color": "gray","storage": "worldtool:storage"},{"nbt":"SelectedItem.tag.WorldTool.SecondaryBlock.State.Name","entity": "@s","color": "green"},"\n"]

tag @s[tag=!wt.replace.normal,tag=!wt.replace.exclude] add wt.replace.first_time
tag @s[tag=!wt.replace.normal,tag=!wt.replace.exclude] add wt.replace.normal

tellraw @s[tag=wt.replace.normal] [{"nbt":"Translation.\"label.replace_mode\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.replace_mode.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/select_block/replace/toggle_mode"}},{"nbt":"Translation.\"replace_mode.normal\"","storage": "worldtool:storage","color": "green"},"\n"]
tellraw @s[tag=wt.replace.exclude] [{"nbt":"Translation.\"label.replace_mode\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.replace_mode.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/select_block/replace/toggle_mode"}},{"nbt":"Translation.\"replace_mode.exclude\"","storage": "worldtool:storage","color": "gold"},"\n"]

tellraw @s[tag=wt.replace.normal] ["",{"nbt":"Translation.\"button.to_replace.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.to_replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon falling_block ~ ~ ~ {Tags:[worldtool,wt.selected_block],BlockState:{Name:\"NAME_HERE\"}}"}}," ",{"nbt":"Translation.\"button.pick_block.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.pick_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/select_block/replace/pick_block"}}," ",{"nbt":"Translation.\"button.air.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.air.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/select_block/selected/air"}}]
tellraw @s[tag=wt.replace.exclude] ["",{"nbt":"Translation.\"button.to_not_replace.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.to_not_replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon falling_block ~ ~ ~ {Tags:[worldtool,wt.selected_block],BlockState:{Name:\"NAME_HERE\"}}"}}," ",{"nbt":"Translation.\"button.pick_block.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.pick_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/select_block/replace/pick_block"}}," ",{"nbt":"Translation.\"button.air.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.air.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/select_block/selected/air"}}]

function worldtool:ui/close_button
function worldtool:ui/anti_feedback_chat_message/load
