# Called by worldtool:ui_brush/menu
# Displays the options menu for the Brush Tool

function worldtool:ui_brush/check_tool

function worldtool:ui/clear_chat
function worldtool:ui_brush/back_button

tellraw @s [{"nbt":"Translation.\"button.selection_options.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.selection_options.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/options/selection/menu"}},"\n"]

execute if predicate worldtool:brush_tool/settings/update_block run tellraw @s {"nbt":"Translation.\"button.brush.update_block.on\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.update_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/settings/update_block_toggle"}}
execute unless predicate worldtool:brush_tool/settings/update_block run tellraw @s {"nbt":"Translation.\"button.brush.update_block.off\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.update_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/settings/update_block_toggle"}}

function worldtool:ui/anti_feedback_chat_message/load
