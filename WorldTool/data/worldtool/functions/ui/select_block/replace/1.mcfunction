# Called by worldtool:ui_brush/main and worldtool:ui_shapes/main
# Here, you choose normal mode or exclude mode

function worldtool:ui_brush/check_tool

tag @s remove wt.allow_input
tag @s remove wt.select_block.other
tag @s remove wt.select_block.other.replace
tag @s remove wt.replace.normal
tag @s remove wt.replace.exclude

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
function worldtool:ui/return.back_button

execute unless entity @s[predicate=!worldtool:brush_tool/settings/replace/normal,predicate=!worldtool:shape_tool/settings/replace/normal] run tellraw @s [{"nbt":"Translation.\"info.selected_replace_block.normal\"","storage": "worldtool:storage"},{"nbt":"SelectedItem.tag.WorldTool.SecondaryBlock.State.Name","entity": "@s","color": "green"}]
execute unless entity @s[predicate=!worldtool:brush_tool/settings/replace/exclude,predicate=!worldtool:shape_tool/settings/replace/exclude] run tellraw @s [{"nbt":"Translation.\"info.selected_replace_block.exclude\"","storage": "worldtool:storage"},{"nbt":"SelectedItem.tag.WorldTool.SecondaryBlock.State.Name","entity": "@s","color": "green"}]

tellraw @s ["\n",{"nbt":"Translation.\"button.normal.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.normal.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/select_block/replace/selected.normal"}}," ",{"nbt":"Translation.\"button.exclude.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.exclude.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/select_block/replace/selected.exclude"}}]
function worldtool:ui/close_button

function worldtool:ui/anti_feedback_chat_message/load
