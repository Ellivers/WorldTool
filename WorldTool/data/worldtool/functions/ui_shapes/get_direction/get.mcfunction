# Called by worldtool:use_tool/click/ray_hit/shape_tool_pos and worldtool:process_start/shapes/setup_process/continuous
# Automatically gets a fitting orientation

scoreboard players set #temp.X worldtool 0
scoreboard players set #temp.Y worldtool 0
scoreboard players set #temp.Z worldtool 0

execute if predicate worldtool:common_settings/before_block positioned ^ ^ ^.5 run function worldtool:technical/common/get_direction/load
execute unless predicate worldtool:common_settings/before_block run function worldtool:technical/common/get_direction/load

data remove storage worldtool:storage Temp.InitialOrientation

# Directions are backwards compared to the result
execute if score #temp.X worldtool matches -1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run data modify storage worldtool:storage Temp.InitialOrientation set value "east"
execute if score #temp.X worldtool matches 1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run data modify storage worldtool:storage Temp.InitialOrientation set value "west"
execute if score #temp.Y worldtool matches -1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run data modify storage worldtool:storage Temp.InitialOrientation set value "up"
execute if score #temp.Y worldtool matches 1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run data modify storage worldtool:storage Temp.InitialOrientation set value "down"
execute if score #temp.Z worldtool matches -1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run data modify storage worldtool:storage Temp.InitialOrientation set value "south"
execute if score #temp.Z worldtool matches 1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run data modify storage worldtool:storage Temp.InitialOrientation set value "north"

execute unless score #temp.X worldtool matches 0 if predicate worldtool:shape_tool/settings/accepted_orientation/axis run data modify storage worldtool:storage Temp.InitialOrientation set value "x"
execute unless score #temp.Y worldtool matches 0 if predicate worldtool:shape_tool/settings/accepted_orientation/axis run data modify storage worldtool:storage Temp.InitialOrientation set value "y"
execute unless score #temp.Z worldtool matches 0 if predicate worldtool:shape_tool/settings/accepted_orientation/axis run data modify storage worldtool:storage Temp.InitialOrientation set value "z"
