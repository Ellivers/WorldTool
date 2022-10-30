# Called by worldtool:drop_tool/tools/brush and various other functions
# The main brush menu

function worldtool:ui_brush/remove_tags

function worldtool:ui_brush/check_tool

function worldtool:ui/open_tool

# Add brush tags
execute if predicate worldtool:brush_tool/brushes/none run tag @s add wt.brush.none
execute if predicate worldtool:brush_tool/brushes/paint run tag @s add wt.brush.paint
execute if predicate worldtool:brush_tool/brushes/place run tag @s add wt.brush.place
execute if predicate worldtool:brush_tool/brushes/replace run tag @s add wt.brush.replace
execute if predicate worldtool:brush_tool/brushes/circle run tag @s add wt.brush.circle
execute if predicate worldtool:brush_tool/brushes/sphere run tag @s add wt.brush.sphere
execute if predicate worldtool:brush_tool/brushes/structure run tag @s add wt.brush.structure
execute if predicate worldtool:brush_tool/brushes/greenery run tag @s add wt.brush.greenery

# Set the brush size to valid values
execute store result score #temp worldtool run data get entity @s SelectedItem.tag.WorldTool.BrushSettings.MaxSize
execute store result score #temp2 worldtool run data get entity @s SelectedItem.tag.WorldTool.BrushSettings.MinSize

execute store result score #brushSize_temp worldtool run data get entity @s SelectedItem.tag.WorldTool.BrushSettings.Size

execute unless score #temp worldtool matches 0 unless score #temp2 worldtool matches 0 if score #brushSize_temp worldtool > #temp worldtool store result storage worldtool:storage Temp.BrushSize int 1 run scoreboard players get #temp worldtool
execute unless score #temp worldtool matches 0 unless score #temp2 worldtool matches 0 if score #brushSize_temp worldtool > #temp worldtool run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/set_size
execute unless score #temp worldtool matches 0 unless score #temp2 worldtool matches 0 if score #brushSize_temp worldtool < #temp2 worldtool store result storage worldtool:storage Temp.BrushSize int 1 run scoreboard players get #temp2 worldtool
execute unless score #temp worldtool matches 0 unless score #temp2 worldtool matches 0 if score #brushSize_temp worldtool < #temp2 worldtool run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/set_size

# Add tags that decide whether something is displayed or not
execute if entity @s[tag=!wt.brush.structure] run tag @s add wt.setting.brush_size
execute if entity @s[tag=wt.brush.sphere] run tag @s add wt.setting.hollow
execute if entity @s[tag=wt.brush.place] run tag @s add wt.setting.overwrite
execute if entity @s[tag=wt.brush.structure] run tag @s add wt.setting.structure
execute unless entity @s[tag=!wt.brush.circle,tag=!wt.brush.place,tag=!wt.brush.sphere,tag=!wt.brush.structure] run tag @s add wt.setting.before_block
execute if entity @s[tag=wt.brush.structure] run tag @s add wt.setting.structure_rotation
execute if entity @s[tag=wt.brush.structure] run tag @s add wt.setting.structure_mirror
execute if entity @s[tag=wt.brush.structure] run tag @s add wt.setting.structure_offset
execute if entity @s[tag=wt.brush.greenery] run tag @s add wt.setting.greenery_rate
execute if entity @s[tag=wt.brush.greenery] run tag @s add wt.setting.remove_current_greenery
execute unless entity @s[tag=!wt.brush.place,tag=!wt.brush.paint,tag=!wt.brush.replace] run tag @s add wt.setting.flat
execute unless entity @s[tag=!wt.brush.circle,predicate=!worldtool:brush_tool/settings/flat] run tag @s add wt.setting.axis
execute if entity @s[tag=!wt.brush.structure,tag=!wt.brush.greenery] run tag @s add wt.setting.update_block

tag @s[tag=!wt.brush.structure,tag=!wt.brush.replace,tag=!wt.brush.greenery] add wt.brush_selections.normal

execute if entity @s[tag=wt.setting.structure_rotation,predicate=worldtool:brush_tool/settings/structure_rotation/none] run scoreboard players set #structureRotation worldtool 0
execute if entity @s[tag=wt.setting.structure_rotation,predicate=worldtool:brush_tool/settings/structure_rotation/-90] run scoreboard players set #structureRotation worldtool -90
execute if entity @s[tag=wt.setting.structure_rotation,predicate=worldtool:brush_tool/settings/structure_rotation/180] run scoreboard players set #structureRotation worldtool 180
execute if entity @s[tag=wt.setting.structure_rotation,predicate=worldtool:brush_tool/settings/structure_rotation/90] run scoreboard players set #structureRotation worldtool 90

execute if entity @s[tag=wt.setting.structure_mirror,predicate=worldtool:brush_tool/settings/structure_mirror/none] run data modify storage worldtool:storage Temp.StructureMirror set value '{"nbt":"Translation.\\"structure_mirror.none\\"","storage":"worldtool:storage"}'
execute if entity @s[tag=wt.setting.structure_mirror,predicate=worldtool:brush_tool/settings/structure_mirror/front_back] run data modify storage worldtool:storage Temp.StructureMirror set value '{"nbt":"Translation.\\"structure_mirror.front_back\\"","storage":"worldtool:storage"}'
execute if entity @s[tag=wt.setting.structure_mirror,predicate=worldtool:brush_tool/settings/structure_mirror/left_right] run data modify storage worldtool:storage Temp.StructureMirror set value '{"nbt":"Translation.\\"structure_mirror.left_right\\"","storage":"worldtool:storage"}'

execute if entity @s[tag=wt.setting.axis,predicate=worldtool:brush_tool/settings/axis/auto] run data modify storage worldtool:storage Temp.Axis set value '{"nbt":"Translation.\\"axis.brush.auto\\"","storage":"worldtool:storage"}'
execute if entity @s[tag=wt.setting.axis,predicate=worldtool:brush_tool/settings/axis/x] run data modify storage worldtool:storage Temp.Axis set value '{"nbt":"Translation.\\"axis.x\\"","storage":"worldtool:storage"}'
execute if entity @s[tag=wt.setting.axis,predicate=worldtool:brush_tool/settings/axis/y] run data modify storage worldtool:storage Temp.Axis set value '{"nbt":"Translation.\\"axis.y\\"","storage":"worldtool:storage"}'
execute if entity @s[tag=wt.setting.axis,predicate=worldtool:brush_tool/settings/axis/z] run data modify storage worldtool:storage Temp.Axis set value '{"nbt":"Translation.\\"axis.z\\"","storage":"worldtool:storage"}'

function #worldtool:addon/ui_brush/menu/add_tags

# Display the selected brush
execute if entity @s[tag=wt.brush.none] run tellraw @s ["\n\n",{"nbt":"Translation.\"info.selected_brush.none\"","storage": "worldtool:storage","color":"yellow","bold":true}]
execute if entity @s[tag=wt.brush.paint] run tellraw @s ["\n\n",{"nbt":"Translation.\"info.selected_brush.paint\"","storage": "worldtool:storage","color":"yellow","bold":true}]
execute if entity @s[tag=wt.brush.place] run tellraw @s ["\n\n",{"nbt":"Translation.\"info.selected_brush.place\"","storage": "worldtool:storage","color":"yellow","bold":true}]
execute if entity @s[tag=wt.brush.replace] run tellraw @s ["\n\n",{"nbt":"Translation.\"info.selected_brush.replace\"","storage": "worldtool:storage","color":"yellow","bold":true}]
execute if entity @s[tag=wt.brush.sphere] run tellraw @s ["\n\n",{"nbt":"Translation.\"info.selected_brush.sphere\"","storage": "worldtool:storage","color":"yellow","bold":true}]
execute if entity @s[tag=wt.brush.circle] run tellraw @s ["\n\n",{"nbt":"Translation.\"info.selected_brush.circle\"","storage": "worldtool:storage","color":"yellow","bold":true}]
execute if entity @s[tag=wt.brush.structure] run tellraw @s ["\n\n",{"nbt":"Translation.\"info.selected_brush.structure\"","storage": "worldtool:storage","color":"yellow","bold":true}]
execute if entity @s[tag=wt.brush.greenery] run tellraw @s ["\n\n",{"nbt":"Translation.\"info.selected_brush.greenery\"","storage": "worldtool:storage","color":"yellow","bold":true}]
function #worldtool:addon/ui_brush/menu/display_brush

execute if entity @s[tag=wt.setting.brush_size] run tellraw @s ["",{"nbt":"Translation.\"label.brush_size\"","storage": "worldtool:storage","color":"dark_aqua"},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.brush_size.decrease.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/settings/brush_size_decrease"}},{"nbt":"SelectedItem.tag.WorldTool.BrushSettings.Size","entity": "@s"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.brush_size.increase.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/settings/brush_size_increase"}}]

# Display settings
execute if entity @s[tag=wt.setting.hollow] if predicate worldtool:brush_tool/settings/hollow run tellraw @s {"nbt":"Translation.\"button.brush.hollow.on\"","storage": "worldtool:storage","color":"dark_aqua","hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.brush.hollow.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/settings/hollow_toggle"}}
execute if entity @s[tag=wt.setting.hollow] unless predicate worldtool:brush_tool/settings/hollow run tellraw @s {"nbt":"Translation.\"button.brush.hollow.off\"","storage": "worldtool:storage","color":"dark_aqua","hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.brush.hollow.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/settings/hollow_toggle"}}
execute if entity @s[tag=wt.setting.overwrite] if predicate worldtool:brush_tool/settings/overwrite_blocks run tellraw @s [{"nbt":"Translation.\"button.brush.overwrite_blocks.on\"","storage": "worldtool:storage","color":"dark_aqua","hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.brush.overwrite_blocks.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/settings/overwrite_blocks_toggle"}}]
execute if entity @s[tag=wt.setting.overwrite] unless predicate worldtool:brush_tool/settings/overwrite_blocks run tellraw @s [{"nbt":"Translation.\"button.brush.overwrite_blocks.off\"","storage": "worldtool:storage","color":"dark_aqua","hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.brush.overwrite_blocks.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/settings/overwrite_blocks_toggle"}}]
execute if entity @s[tag=wt.setting.before_block] if predicate worldtool:brush_tool/settings/before_block run tellraw @s {"nbt":"Translation.\"button.brush.before_block.on\"","storage": "worldtool:storage","color":"blue","hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.brush.before_block.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/settings/before_block_toggle"}}
execute if entity @s[tag=wt.setting.before_block] unless predicate worldtool:brush_tool/settings/before_block run tellraw @s {"nbt":"Translation.\"button.brush.before_block.off\"","storage": "worldtool:storage","color":"blue","hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.brush.before_block.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/settings/before_block_toggle"}}
execute if entity @s[tag=wt.setting.remove_current_greenery] if predicate worldtool:brush_tool/settings/remove_current_greenery run tellraw @s {"nbt":"Translation.\"button.greenery.remove_current.on\"","storage": "worldtool:storage","color":"light_purple","hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.greenery.remove_current.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/settings/remove_current_greenery_toggle"}}
execute if entity @s[tag=wt.setting.remove_current_greenery] unless predicate worldtool:brush_tool/settings/remove_current_greenery run tellraw @s {"nbt":"Translation.\"button.greenery.remove_current.off\"","storage": "worldtool:storage","color":"light_purple","hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.greenery.remove_current.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/settings/remove_current_greenery_toggle"}}
execute if entity @s[tag=wt.setting.structure_rotation] run tellraw @s ["",{"nbt":"Translation.\"label.brush.structure_rotation.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.brush.structure_rotation.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.left.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_brush/settings/structure_rot_cycle_left"}},{"nbt":"Translation.\"info.brush.structure_rotation\"","storage": "worldtool:storage","interpret": true},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.right.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_brush/settings/structure_rot_cycle_right"}}]
execute if entity @s[tag=wt.setting.structure_mirror] run tellraw @s ["",{"nbt":"Translation.\"label.brush.structure_mirror.name\"","storage": "worldtool:storage","color": "dark_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.brush.structure_mirror.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.left.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_brush/settings/structure_mirror_cycle_left"}},{"nbt":"Temp.StructureMirror","storage": "worldtool:storage","color":"green","interpret": true},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.right.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_brush/settings/structure_mirror_cycle_right"}}]
execute if entity @s[tag=wt.setting.structure_offset] run tellraw @s {"nbt":"Translation.\"button.brush.structure_offset.name\"","storage": "worldtool:storage","color": "dark_green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.structure_offset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/structure_offset/menu"}}
execute if entity @s[tag=wt.setting.greenery_rate] run tellraw @s ["\n",{"nbt":"Translation.\"label.greenery.rate\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.greenery.rate.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt": "Translation.\"button.greenery.rate.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/settings/greenery_rate_decrease"}},{"nbt":"SelectedItem.tag.WorldTool.BrushSettings.GreeneryRate","entity": "@s","color": "gold"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt": "Translation.\"button.greenery.rate.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/settings/greenery_rate_increase"}}]
execute if entity @s[tag=wt.setting.flat] if predicate worldtool:brush_tool/settings/flat run tellraw @s {"nbt":"Translation.\"button.brush.flat.on\"","storage": "worldtool:storage","color": "dark_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.flat.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/settings/flat_toggle"}}
execute if entity @s[tag=wt.setting.flat] unless predicate worldtool:brush_tool/settings/flat run tellraw @s {"nbt":"Translation.\"button.brush.flat.off\"","storage": "worldtool:storage","color": "dark_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.flat.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/settings/flat_toggle"}}
execute if entity @s[tag=wt.setting.axis] run tellraw @s ["",{"nbt": "Translation.\"label.brush.axis.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.brush.axis.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.left.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_brush/settings/axis_cycle_left"}},{"nbt": "Temp.Axis","storage": "worldtool:storage","interpret": true,"color":"green"},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.right.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_brush/settings/axis_cycle_right"}}]
execute if entity @s[tag=wt.setting.update_block] if predicate worldtool:brush_tool/settings/update_block run tellraw @s {"nbt":"Translation.\"button.brush.update_block.on\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.update_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/settings/update_block_toggle"}}
execute if entity @s[tag=wt.setting.update_block] unless predicate worldtool:brush_tool/settings/update_block run tellraw @s {"nbt":"Translation.\"button.brush.update_block.off\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.update_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/settings/update_block_toggle"}}
function #worldtool:addon/ui_brush/menu/display_settings

execute if entity @s[tag=wt.brush.none] run tellraw @s ["\n\n",{"nbt":"Translation.\"info.no_brush_selected\"","storage": "worldtool:storage","color":"gold","italic":true}]

# Display selection buttons
tellraw @s "\n\n"
execute if entity @s[tag=wt.brush_selections.normal] run tellraw @s ["",{"nbt":"Translation.\"button.select_new_block.name\"","storage": "worldtool:storage","color":"aqua","hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.select_new_block.description\"","storage":"worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_block/normal"}},{"nbt":"Translation.\"button.brush.select_brush.name\"","storage": "worldtool:storage","color":"light_purple","hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.brush.select_brush.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_brush/menu"}}]
execute if entity @s[tag=wt.brush.structure] if data entity @s SelectedItem.tag.WorldTool.BrushSettings.Structure run tellraw @s ["",{"nbt":"Translation.\"info.selected_structure\"","storage": "worldtool:storage"},{"nbt":"SelectedItem.tag.WorldTool.BrushSettings.Structure","entity": "@s","color": "green"}]
execute if entity @s[tag=wt.brush.structure] run tellraw @s ["",{"nbt":"Translation.\"button.brush.select_structure.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.select_structure.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/select_structure/select"}},{"nbt":"Translation.\"button.brush.select_brush.name\"","storage": "worldtool:storage","color":"light_purple","hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.brush.select_brush.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_brush/menu"}}]
execute if entity @s[tag=wt.brush.replace] run tellraw @s ["",{"nbt":"Translation.\"button.select_new_block.name\"","storage": "worldtool:storage","color":"aqua","hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.select_new_block.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_block/normal"}},{"nbt":"Translation.\"button.brush.replace_block.name\"","storage": "worldtool:storage","color":"gold","hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.brush.replace_block.description\"","storage":"worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_block/replace"}},{"nbt":"Translation.\"button.brush.select_brush.name\"","storage": "worldtool:storage","color":"light_purple","hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.brush.select_brush.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_brush/menu"}}]

execute if entity @s[tag=wt.brush.greenery,predicate=worldtool:brush_tool/settings/plant_source/plains] run tellraw @s ["",{"nbt":"Translation.\"info.greenery.current_plant_source\"","storage": "worldtool:storage"},{"nbt":"Translation.\"plant_source.plains\"","storage": "worldtool:storage","color": "#13c4d1"}]
execute if entity @s[tag=wt.brush.greenery,predicate=worldtool:brush_tool/settings/plant_source/sunflower_plains] run tellraw @s ["",{"nbt":"Translation.\"info.greenery.current_plant_source\"","storage": "worldtool:storage"},{"nbt":"Translation.\"plant_source.sunflower_plains\"","storage": "worldtool:storage","color": "#13c4d1"}]
execute if entity @s[tag=wt.brush.greenery,predicate=worldtool:brush_tool/settings/plant_source/flower_forest] run tellraw @s ["",{"nbt":"Translation.\"info.greenery.current_plant_source\"","storage": "worldtool:storage"},{"nbt":"Translation.\"plant_source.flower_forest\"","storage": "worldtool:storage","color": "#13c4d1"}]
execute if entity @s[tag=wt.brush.greenery,predicate=worldtool:brush_tool/settings/plant_source/taiga] run tellraw @s ["",{"nbt":"Translation.\"info.greenery.current_plant_source\"","storage": "worldtool:storage"},{"nbt":"Translation.\"plant_source.taiga\"","storage": "worldtool:storage","color": "#13c4d1"}]
execute if entity @s[tag=wt.brush.greenery,predicate=worldtool:brush_tool/settings/plant_source/desert] run tellraw @s ["",{"nbt":"Translation.\"info.greenery.current_plant_source\"","storage": "worldtool:storage"},{"nbt":"Translation.\"plant_source.desert\"","storage": "worldtool:storage","color": "#13c4d1"}]
execute if entity @s[tag=wt.brush.greenery,predicate=worldtool:brush_tool/settings/plant_source/ocean] run tellraw @s ["",{"nbt":"Translation.\"info.greenery.current_plant_source\"","storage": "worldtool:storage"},{"nbt":"Translation.\"plant_source.ocean\"","storage": "worldtool:storage","color": "#13c4d1"}]
execute if entity @s[tag=wt.brush.greenery,predicate=worldtool:brush_tool/settings/plant_source/warm_ocean] run tellraw @s ["",{"nbt":"Translation.\"info.greenery.current_plant_source\"","storage": "worldtool:storage"},{"nbt":"Translation.\"plant_source.warm_ocean\"","storage": "worldtool:storage","color": "#13c4d1"}]
execute if entity @s[tag=wt.brush.greenery] run function #worldtool:addon/greenery/brush/display_current_source

execute if entity @s[tag=wt.brush.greenery] run tellraw @s ["",{"nbt":"Translation.\"button.brush.select_plant_source.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.select_plant_source.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/select_plant_source/select"}},{"nbt":"Translation.\"button.brush.select_brush.name\"","storage": "worldtool:storage","color":"light_purple","hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.brush.select_brush.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_brush/menu"}}]


# Remove tags

function #worldtool:addon/ui_brush/menu/remove_tags

tag @s remove wt.brush.none
tag @s remove wt.brush.paint
tag @s remove wt.brush.place
tag @s remove wt.brush.replace
tag @s remove wt.brush.circle
tag @s remove wt.brush.sphere
tag @s remove wt.brush.structure
tag @s remove wt.brush.greenery

tag @s remove wt.setting.brush_size
tag @s remove wt.setting.hollow
tag @s remove wt.setting.overwrite
tag @s remove wt.setting.structure
tag @s remove wt.setting.before_block
tag @s remove wt.setting.structure_rotation
tag @s remove wt.setting.structure_mirror
tag @s remove wt.setting.structure_offset
tag @s remove wt.setting.greenery_rate
tag @s remove wt.setting.remove_current_greenery
tag @s remove wt.setting.flat
tag @s remove wt.setting.axis
tag @s remove wt.setting.update_block

tag @s remove wt.brush_selections.normal

function worldtool:ui/anti_feedback_chat_message/load
