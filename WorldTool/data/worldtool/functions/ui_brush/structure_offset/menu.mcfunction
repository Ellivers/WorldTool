# Called by worldtool:ui_brush/menu and various other functions
# Displays the structure offset menu

function worldtool:ui_brush/check_tool

function worldtool:ui/clear_chat
function worldtool:ui_brush/back_button

tag @s add wt.allow_input
tag @s add wt.brush.select_structure_offset

execute store result score #offsetX worldtool run data get entity @s SelectedItem.tag.WorldTool.BrushSettings.StructureOffset.posX
execute store result score #offsetY worldtool run data get entity @s SelectedItem.tag.WorldTool.BrushSettings.StructureOffset.posY
execute store result score #offsetZ worldtool run data get entity @s SelectedItem.tag.WorldTool.BrushSettings.StructureOffset.posZ

tellraw @s [{"nbt":"Translation.\"info.brush.structure_offset\"","storage": "worldtool:storage","interpret": true},"\n"]

tellraw @s [{"nbt":"Translation.\"button.negative_x.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.brush.structure_offset.negative_x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/structure_offset/minus_x"}}," ",{"nbt":"Translation.\"button.positive_x.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.brush.structure_offset.positive_x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/structure_offset/plus_x"}}]
tellraw @s [{"nbt":"Translation.\"button.negative_y.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.brush.structure_offset.negative_y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/structure_offset/minus_y"}}," ",{"nbt":"Translation.\"button.positive_y.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.brush.structure_offset.positive_y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/structure_offset/plus_y"}}]
tellraw @s [{"nbt":"Translation.\"button.negative_z.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.brush.structure_offset.negative_z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/structure_offset/minus_z"}}," ",{"nbt":"Translation.\"button.positive_z.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.brush.structure_offset.positive_z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/structure_offset/plus_z"}}]

tellraw @s ["\n",{"nbt":"Translation.\"button.brush.structure_offset.set_offset.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.brush.structure_offset.set_offset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon item ~ ~ ~ {Tags:[worldtool,wt.selected_data],PickupDelay:32767s,Item:{id:\"minecraft:stick\",Count:1b,tag:{WorldTool:{ posX:0, posY:0, posZ:0 }}}}"}}]
tellraw @s {"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.brush.structure_offset.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/structure_offset/reset"}}

function worldtool:ui/anti_feedback_chat_message/load
