
scoreboard players set #temp.X worldtool 0
scoreboard players set #temp.Y worldtool 0
scoreboard players set #temp.Z worldtool 0

execute store success score #temp3 worldtool if entity @s[predicate=!worldtool:shape_tool/settings/accepted_orientation/none,predicate=worldtool:shape_tool/settings/orientation/auto]
execute if score #temp3 worldtool matches 1 if predicate worldtool:common_settings/before_block positioned ^ ^ ^.5 run function worldtool:technical/common/get_direction/load
execute if score #temp3 worldtool matches 1 unless predicate worldtool:common_settings/before_block run function worldtool:technical/common/get_direction/load

function worldtool:ui_shapes/auto_orientation/remove_tags

execute if score #temp3 worldtool matches 1 if score #temp.X worldtool matches 1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run tag @s add wt.shapes.auto_orientation.east
execute if score #temp3 worldtool matches 1 if score #temp.X worldtool matches -1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run tag @s add wt.shapes.auto_orientation.east.west
execute if score #temp3 worldtool matches 1 if score #temp.Y worldtool matches 1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run tag @s add wt.shapes.auto_orientation.east.up
execute if score #temp3 worldtool matches 1 if score #temp.Y worldtool matches -1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run tag @s add wt.shapes.auto_orientation.east.down
execute if score #temp3 worldtool matches 1 if score #temp.Z worldtool matches 1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run tag @s add wt.shapes.auto_orientation.east.south
execute if score #temp3 worldtool matches 1 if score #temp.Z worldtool matches -1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run tag @s add wt.shapes.auto_orientation.east.north

execute if score #temp3 worldtool matches 1 unless score #temp.X worldtool matches 0 if predicate worldtool:shape_tool/settings/accepted_orientation/axis run tag @s add wt.shapes.auto_orientation.east.x
execute if score #temp3 worldtool matches 1 unless score #temp.Y worldtool matches 0 if predicate worldtool:shape_tool/settings/accepted_orientation/axis run tag @s add wt.shapes.auto_orientation.east.y
execute if score #temp3 worldtool matches 1 unless score #temp.Z worldtool matches 0 if predicate worldtool:shape_tool/settings/accepted_orientation/axis run tag @s add wt.shapes.auto_orientation.east.z
