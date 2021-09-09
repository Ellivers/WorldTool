# Called by worldtool:drop_tool/tools/shapes and various other functions
# The main menu for the shape generation tool

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool run tag @s add wt.temp

function worldtool:ui_shapes/remove_tags

function worldtool:ui/open_tool

execute unless score @s wt.diameter matches 3..999 run scoreboard players set @s wt.diameter 3
execute unless score @s wt.precision matches 10..300 run scoreboard players set @s wt.precision 100
execute unless score @s wt.degrees matches 1..360 run scoreboard players set @s wt.degrees 360
execute unless score @s wt.rotY matches 0..359 run scoreboard players set @s wt.rotY 0
execute unless score @s wt.rotX matches 0..359 run scoreboard players set @s wt.rotX 0
execute unless score @s wt.length matches 1.. run scoreboard players set @s wt.length 1

execute if predicate worldtool:shape_tool/shapes/circle run function worldtool:ui_shapes/select_shape/circle/convert_orientation

execute if predicate worldtool:shape_tool/shapes/circle run tag @s add wt.shape.circle
execute if predicate worldtool:shape_tool/shapes/cone run tag @s add wt.shape.cone
execute if predicate worldtool:shape_tool/shapes/cylinder run tag @s add wt.shape.cylinder
execute if predicate worldtool:shape_tool/shapes/sphere run tag @s add wt.shape.sphere

tag @s add wt.setting.diameter
tag @s add wt.setting.precision
tag @s[predicate=worldtool:shape_tool/settings/orientations/down] add wt.setting.orientation.down
tag @s[predicate=worldtool:shape_tool/settings/orientations/up] add wt.setting.orientation.up
tag @s[predicate=worldtool:shape_tool/settings/orientations/south] add wt.setting.orientation.south
tag @s[predicate=worldtool:shape_tool/settings/orientations/north] add wt.setting.orientation.north
tag @s[predicate=worldtool:shape_tool/settings/orientations/west] add wt.setting.orientation.west
tag @s[predicate=worldtool:shape_tool/settings/orientations/east] add wt.setting.orientation.east
tag @s add wt.setting.degrees
execute unless entity @s[tag=!wt.shape.cone,tag=!wt.shape.cylinder] run tag @s add wt.setting.length
tag @s add wt.setting.y_rotation
execute unless entity @s[tag=!wt.setting.orientation.north,tag=!wt.setting.orientation.south] run tag @s[tag=!wt.shape.sphere] add wt.setting.z_rotation
execute unless entity @s[tag=!wt.setting.orientation.east,tag=!wt.setting.orientation.west,tag=!wt.shape.sphere] run tag @s add wt.setting.x_rotation
tag @s add wt.setting.hollow
tag @s add wt.setting.keep
tag @s add wt.setting.continuous
function #worldtool:addon/ui_shapes/main/add_tags

execute if entity @s[tag=wt.shape.circle] run tellraw @s [{"nbt":"Translation.\"info.selected_shape.circle\"","storage": "worldtool:storage","color": "yellow"}," ",{"nbt":"Translation.\"button.change_shape.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.change_shape.description\""}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/select_shape/select"}}]
execute if entity @s[tag=wt.shape.cone] run tellraw @s [{"nbt":"Translation.\"info.selected_shape.cone\"","storage": "worldtool:storage","color": "yellow"}," ",{"nbt":"Translation.\"button.change_shape.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.change_shape.description\""}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/select_shape/select"}}]
execute if entity @s[tag=wt.shape.cylinder] run tellraw @s [{"nbt":"Translation.\"info.selected_shape.cylinder\"","storage": "worldtool:storage","color": "yellow"}," ",{"nbt":"Translation.\"button.change_shape.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.change_shape.description\""}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/select_shape/select"}}]
execute if entity @s[tag=wt.shape.sphere] run tellraw @s [{"nbt":"Translation.\"info.selected_shape.sphere\"","storage": "worldtool:storage","color": "yellow"}," ",{"nbt":"Translation.\"button.change_shape.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.change_shape.description\""}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/select_shape/select"}}]
function #worldtool:addon/ui_shapes/main/display_shape

execute if entity @s[tag=wt.setting.diameter] run tellraw @s []
function #worldtool:addon/ui_shapes/main/display_settings
