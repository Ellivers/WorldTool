# Called by worldtool:ui_brush/main
# Here, you choose normal mode or exclude mode

tag @s remove wt.allow_input
tag @s remove wt.brush.replace.normal
tag @s remove wt.brush.replace.exclude

function worldtool:ui/clear_chat
function worldtool:ui_brush/back_button

tellraw @s[predicate=worldtool:brush_tool/settings/replace/normal] [{"nbt":"Translation.\"info.selected_replace_block.normal\"","storage": "worldtool:storage"},{"nbt":"SelectedItem.tag.WorldTool.SecondaryBlock.State.Name","entity": "@s","color": "green"}]
tellraw @s[predicate=worldtool:brush_tool/settings/replace/exclude] [{"nbt":"Translation.\"info.selected_replace_block.exclude\"","storage": "worldtool:storage"},{"nbt":"SelectedItem.tag.WorldTool.SecondaryBlock.State.Name","entity": "@s","color": "green"}]

tellraw @s ["\n",{"nbt":"Translation.\"button.normal.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.normal.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/select_block/replace/selected.normal"}}," ",{"nbt":"Translation.\"button.exclude.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.exclude.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/select_block/replace/selected.exclude"}}]
function worldtool:ui/close_button

function worldtool:ui/anti_feedback_chat_message/load
