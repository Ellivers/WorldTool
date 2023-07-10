# Called by worldtool:ui_brush/options/menu
# Displays the menu for selection and control changes

function worldtool:ui_brush/check_tool

function worldtool:ui/clear_chat
function worldtool:ui/back_button
tag @s add wt.menu.brush.selection

execute unless data entity @s SelectedItem.tag.WorldTool.Controls run item modify entity @s weapon.mainhand worldtool:brush_tool/control_scheme/normal
execute unless data entity @s SelectedItem.tag.WorldTool.StopAtBlock run item modify entity @s weapon.mainhand worldtool:settings/stop_at_block/on

execute if predicate worldtool:tools/settings/control_scheme/normal run tellraw @s ["",{"nbt":"Translation.\"label.control_scheme\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.control_scheme.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.left.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/options/selection/change/controls_toggle"}},{"nbt":"Translation.\"control_scheme.normal\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": [{"nbt":"Translation.\"lore.brush.normal.1\"","storage": "worldtool:storage","interpret": true,"color": "dark_purple"},"\n",{"nbt":"Translation.\"lore.brush.normal.2\"","storage": "worldtool:storage","interpret": true}]}},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.right.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/options/selection/change/controls_toggle"}}]
execute if predicate worldtool:tools/settings/control_scheme/limited run tellraw @s ["",{"nbt":"Translation.\"label.control_scheme\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.control_scheme.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.left.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/options/selection/change/controls_toggle"}},{"nbt":"Translation.\"control_scheme.limited\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": [{"nbt":"Translation.\"lore.brush.limited.1\"","storage": "worldtool:storage","interpret": true,"color": "dark_purple"},"\n",{"nbt":"Translation.\"lore.brush.limited.2\"","storage": "worldtool:storage","interpret": true},"\n",{"nbt":"Translation.\"lore.brush.limited.3\"","storage": "worldtool:storage","interpret": true}]}},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.right.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/options/selection/change/controls_toggle"}}]
tellraw @s ""

execute if entity @s[predicate=worldtool:tools/settings/control_scheme/limited,predicate=worldtool:tools/settings/stop_at_block] run tellraw @s {"nbt":"Translation.\"button.stop_at_block.on\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.stop_at_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/options/selection/change/stop_at_block_toggle"}}
execute if entity @s[predicate=worldtool:tools/settings/control_scheme/limited,predicate=!worldtool:tools/settings/stop_at_block] run tellraw @s {"nbt":"Translation.\"button.stop_at_block.off\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.stop_at_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/options/selection/change/stop_at_block_toggle"}}

execute if entity @s[predicate=worldtool:tools/settings/control_scheme/normal,predicate=worldtool:tools/settings/highlight] run tellraw @s {"nbt":"Translation.\"button.highlight_block.on\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.highlight_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/options/selection/change/highlight_toggle"}}
execute if entity @s[predicate=worldtool:tools/settings/control_scheme/normal,predicate=!worldtool:tools/settings/highlight] run tellraw @s {"nbt":"Translation.\"button.highlight_block.off\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.highlight_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/options/selection/change/highlight_toggle"}}
execute if entity @s[predicate=worldtool:tools/settings/control_scheme/limited] run tellraw @s {"nbt":"Translation.\"button.highlight_block.on\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.setting_locked.description\"","storage": "worldtool:storage"}}}

function worldtool:ui/anti_feedback_chat_message/load
