# Called by worldtool:drop_tool/tools/shapes and various other functions
# The main menu for the shape generation tool

function worldtool:ui_shapes/remove_tags

function worldtool:ui_shapes/check_tool

function worldtool:ui/open_tool

data remove storage worldtool:storage Temp.ShapeTool
data modify storage worldtool:storage Temp.ShapeTool set from entity @s SelectedItem.tag.WorldTool

execute if predicate worldtool:shape_tool/shapes/cone run tag @s add wt.shape.cone
execute if predicate worldtool:shape_tool/shapes/cylinder run tag @s add wt.shape.cylinder
execute if predicate worldtool:shape_tool/shapes/sphere run tag @s add wt.shape.sphere

tag @s add wt.setting.diameter
tag @s add wt.setting.precision
tag @s[predicate=worldtool:shape_tool/settings/orientation/down] add wt.setting.orientation.down
tag @s[predicate=worldtool:shape_tool/settings/orientation/up] add wt.setting.orientation.up
tag @s[predicate=worldtool:shape_tool/settings/orientation/south] add wt.setting.orientation.south
tag @s[predicate=worldtool:shape_tool/settings/orientation/north] add wt.setting.orientation.north
tag @s[predicate=worldtool:shape_tool/settings/orientation/west] add wt.setting.orientation.west
tag @s[predicate=worldtool:shape_tool/settings/orientation/east] add wt.setting.orientation.east
execute if entity @s[tag=!wt.shape.sphere] run tag @s add wt.setting.orientation
tag @s add wt.setting.degrees
execute unless entity @s[tag=!wt.shape.cone,tag=!wt.shape.cylinder] run tag @s add wt.setting.length
tag @s add wt.setting.y_rotation
execute unless entity @s[tag=!wt.setting.orientation.north,tag=!wt.setting.orientation.south] run tag @s[tag=!wt.shape.sphere] add wt.setting.z_rotation
execute unless entity @s[tag=!wt.setting.orientation.east,tag=!wt.setting.orientation.west,tag=!wt.shape.sphere] run tag @s add wt.setting.x_rotation
tag @s add wt.setting.hollow
tag @s add wt.setting.keep
tag @s add wt.setting.continuous
tag @s[tag=wt.shape.sphere] add wt.setting.degrees2

function #worldtool:addon/ui_shapes/menu/add_tags

scoreboard players set #positions_temp worldtool 0
function worldtool:ui_shapes/update_preview/load

execute if entity @s[tag=wt.shape.cone] run tellraw @s [{"nbt":"Translation.\"info.selected_shape.cone\"","storage": "worldtool:storage","color": "yellow"}," ",{"nbt":"Translation.\"button.change_shape.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.change_shape.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/select_shape/menu"}}]
execute if entity @s[tag=wt.shape.cylinder] run tellraw @s [{"nbt":"Translation.\"info.selected_shape.cylinder\"","storage": "worldtool:storage","color": "yellow"}," ",{"nbt":"Translation.\"button.change_shape.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.change_shape.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/select_shape/menu"}}]
execute if entity @s[tag=wt.shape.sphere] run tellraw @s [{"nbt":"Translation.\"info.selected_shape.sphere\"","storage": "worldtool:storage","color": "yellow"}," ",{"nbt":"Translation.\"button.change_shape.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.change_shape.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/select_shape/menu"}}]
function #worldtool:addon/ui_shapes/menu/display_shape

execute if entity @s[tag=wt.setting.precision] store result score #precision_temp worldtool run data get storage worldtool:storage Temp.ShapeTool.ShapeSettings.Precision
execute if entity @s[tag=wt.setting.precision] if score #precision_temp worldtool matches ..-1 run scoreboard players operation #temp worldtool = #precision_temp worldtool
execute if entity @s[tag=wt.setting.precision] if score #precision_temp worldtool matches ..-1 run scoreboard players operation #temp worldtool *= #-1 worldtool

execute if entity @s[tag=wt.setting.diameter] run tellraw @s ["",{"nbt":"Translation.\"label.shapes.diameter.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.diameter.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/diameter_decrease"}},{"nbt":"Temp.ShapeTool.ShapeSettings.Diameter","storage": "worldtool:storage"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/diameter_increase"}},"  ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "dark_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/diameter_reset"}}]
execute if entity @s[tag=wt.setting.length] run tellraw @s ["",{"nbt":"Translation.\"label.shapes.length.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.length.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/length_decrease"}},{"nbt":"Temp.ShapeTool.ShapeSettings.Length","storage": "worldtool:storage"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/length_increase"}},"  ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "dark_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/length_reset"}}]
execute if entity @s[tag=wt.setting.precision] if score #precision_temp worldtool matches 0.. run tellraw @s ["",{"nbt":"Translation.\"label.shapes.precision.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.precision.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.help.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.precision.description\"","storage": "worldtool:storage"}}}," ",{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/precision_decrease"}},{"score":{"name": "#precision_temp","objective": "worldtool"}},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/precision_increase"}},"  ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "dark_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/precision_reset"}}]
execute if entity @s[tag=wt.setting.precision] if score #precision_temp worldtool matches ..-1 run tellraw @s ["",{"nbt":"Translation.\"label.shapes.precision.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.precision.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.help.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.precision.description\"","storage": "worldtool:storage"}}}," ",{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/precision_decrease"}},{"nbt":"Translation.\"prefix.fraction\"","storage": "worldtool:storage"},{"score":{"name": "#temp","objective": "worldtool"}},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/precision_increase"}},"  ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "dark_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/precision_reset"}}]
execute if entity @s[tag=wt.setting.orientation,tag=wt.setting.orientation.down] run tellraw @s ["",{"nbt":"Translation.\"label.shapes.orientation.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.orientation.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.left.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/orientation_cycle_left"}},{"nbt":"Translation.\"orientation.down\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.right.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/orientation_cycle_right"}}]
execute if entity @s[tag=wt.setting.orientation,tag=wt.setting.orientation.up] run tellraw @s ["",{"nbt":"Translation.\"label.shapes.orientation.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.orientation.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.left.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/orientation_cycle_left"}},{"nbt":"Translation.\"orientation.up\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.right.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/orientation_cycle_right"}}]
execute if entity @s[tag=wt.setting.orientation,tag=wt.setting.orientation.south] run tellraw @s ["",{"nbt":"Translation.\"label.shapes.orientation.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.orientation.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.left.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/orientation_cycle_left"}},{"nbt":"Translation.\"orientation.south\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.right.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/orientation_cycle_right"}}]
execute if entity @s[tag=wt.setting.orientation,tag=wt.setting.orientation.north] run tellraw @s ["",{"nbt":"Translation.\"label.shapes.orientation.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.orientation.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.left.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/orientation_cycle_left"}},{"nbt":"Translation.\"orientation.north\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.right.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/orientation_cycle_right"}}]
execute if entity @s[tag=wt.setting.orientation,tag=wt.setting.orientation.west] run tellraw @s ["",{"nbt":"Translation.\"label.shapes.orientation.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.orientation.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.left.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/orientation_cycle_left"}},{"nbt":"Translation.\"orientation.west\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.right.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/orientation_cycle_right"}}]
execute if entity @s[tag=wt.setting.orientation,tag=wt.setting.orientation.east] run tellraw @s ["",{"nbt":"Translation.\"label.shapes.orientation.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.orientation.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.left.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/orientation_cycle_left"}},{"nbt":"Translation.\"orientation.east\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.right.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/orientation_cycle_right"}}]
function #worldtool:addon/ui_shapes/menu/display_orientation
execute if entity @s[tag=wt.setting.degrees] run tellraw @s ["",{"nbt":"Translation.\"label.shapes.degrees.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.degrees.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.help.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.degrees.description\"","storage": "worldtool:storage"}}}," ",{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/degrees_decrease"}},{"nbt":"Temp.ShapeTool.ShapeSettings.Degrees","storage": "worldtool:storage"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/degrees_increase"}},"  ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "dark_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/degrees_reset"}}]
execute if entity @s[tag=wt.setting.degrees2] run tellraw @s ["",{"nbt":"Translation.\"label.shapes.degrees2.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.degrees2.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.help.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.degrees2.description\"","storage": "worldtool:storage"}}}," ",{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/degrees2_decrease"}},{"nbt":"Temp.ShapeTool.ShapeSettings.Degrees2","storage": "worldtool:storage"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/degrees2_increase"}},"  ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "dark_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/degrees2_reset"}}]
execute if entity @s[tag=wt.setting.x_rotation] run tellraw @s ["",{"nbt":"Translation.\"label.shapes.x_rotation.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.x_rotation.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/x_rotation_decrease"}},{"nbt":"SelectedItem.tag.WorldTool.ShapeSettings.XRotation","entity": "@s"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/x_rotation_increase"}},"  ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "dark_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/x_rotation_reset"}}]
execute if entity @s[tag=wt.setting.y_rotation] run tellraw @s ["",{"nbt":"Translation.\"label.shapes.y_rotation.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.y_rotation.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/y_rotation_decrease"}},{"nbt":"SelectedItem.tag.WorldTool.ShapeSettings.YRotation","entity": "@s"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/y_rotation_increase"}},"  ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "dark_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/y_rotation_reset"}}]
execute if entity @s[tag=wt.setting.z_rotation] run tellraw @s ["",{"nbt":"Translation.\"label.shapes.z_rotation.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.shapes.z_rotation.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/x_rotation_decrease"}},{"nbt":"SelectedItem.tag.WorldTool.ShapeSettings.XRotation","entity": "@s"},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color": "light_purple","bold": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/x_rotation_increase"}},"  ",{"nbt":"Translation.\"button.reset.name\"","storage": "worldtool:storage","color": "dark_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.reset.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/x_rotation_reset"}}]

function #worldtool:addon/ui_shapes/menu/display_settings

tellraw @s ""
tellraw @s[predicate=worldtool:shape_tool/settings/replace/none,predicate=!worldtool:shape_tool/settings/keep] [{"nbt":"Translation.\"button.replace.off\"","storage": "worldtool:storage","color": "#d20aff","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/select_block/replace"}}," ",{"nbt":"Translation.\"button.keep.off\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.keep.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/keep_on"}}]
tellraw @s[predicate=worldtool:shape_tool/settings/replace/none,predicate=worldtool:shape_tool/settings/keep] [{"nbt":"Translation.\"button.replace.off\"","storage": "worldtool:storage","color": "#d20aff","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/select_block/replace"}}," ",{"nbt":"Translation.\"button.keep.on\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.keep.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/keep_off"}}]
tellraw @s[predicate=!worldtool:shape_tool/settings/replace/none,predicate=worldtool:shape_tool/settings/keep] [{"nbt":"Translation.\"button.replace.on\"","storage": "worldtool:storage","color": "#d20aff","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/replace_off"}}," ",{"nbt":"Translation.\"button.keep.on\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.keep.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/keep_off"}}]
tellraw @s[predicate=!worldtool:shape_tool/settings/replace/none,predicate=!worldtool:shape_tool/settings/keep] [{"nbt":"Translation.\"button.replace.on\"","storage": "worldtool:storage","color": "#d20aff","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/replace_off"}}," ",{"nbt":"Translation.\"button.keep.off\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.keep.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/keep_on"}}]
tellraw @s[predicate=worldtool:shape_tool/settings/hollow] [{"nbt":"Translation.\"button.select_new_block.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.select_new_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/select_block/normal"}},{"nbt":"Translation.\"button.shapes.hollow.on\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shapes.hollow.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/hollow_off"}}," ",{"nbt":"Translation.\"button.adjust_position.name\"","storage": "worldtool:storage","color": "#3430ff","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.adjust_position.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/adjust_position/menu"}}]
tellraw @s[predicate=!worldtool:shape_tool/settings/hollow] [{"nbt":"Translation.\"button.select_new_block.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.select_new_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/select_block/normal"}},{"nbt":"Translation.\"button.shapes.hollow.off\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shapes.hollow.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/hollow_on"}}," ",{"nbt":"Translation.\"button.adjust_position.name\"","storage": "worldtool:storage","color": "#3430ff","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.adjust_position.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/adjust_position/menu"}}]

execute if score #positions_temp worldtool matches 1 run tellraw @s ["\n",{"nbt":"Translation.\"button.run.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.generate_shape.enabled.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/start"}}," ",{"nbt":"Translation.\"button.options.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.options.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/options/menu"}}," ",{"nbt":"Translation.\"button.cancel.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.cancel.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/close"}}]
execute if score #positions_temp worldtool matches 0 run tellraw @s ["\n",{"nbt":"Translation.\"button.run.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.generate_shape.disabled.description\"","storage": "worldtool:storage"}}}," ",{"nbt":"Translation.\"button.options.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.options.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/options/menu"}}," ",{"nbt":"Translation.\"button.cancel.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.cancel.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/close"}}]
execute if score #positions_temp worldtool matches 2.. run function worldtool:ui/error/shape_position_duplicates

tellraw @s[predicate=!worldtool:shape_tool/settings/continuous_place] {"nbt":"Translation.\"button.shapes.continuous_place.off\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shapes.continuous_place.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/continuous_place_on"}}
tellraw @s[predicate=worldtool:shape_tool/settings/continuous_place] {"nbt":"Translation.\"button.shapes.continuous_place.on\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shapes.continuous_place.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/settings/continuous_place_off"}}

function worldtool:ui_shapes/remove_tags

function worldtool:ui/anti_feedback_chat_message/load
