
data remove storage worldtool:storage Temp.InitialOrientation

execute if score #temp.X worldtool matches 1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run data modify storage worldtool:storage Temp.InitialOrientation set value "east"
execute if score #temp.X worldtool matches -1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run data modify storage worldtool:storage Temp.InitialOrientation set value "west"
execute if score #temp.Y worldtool matches 1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run data modify storage worldtool:storage Temp.InitialOrientation set value "up"
execute if score #temp.Y worldtool matches -1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run data modify storage worldtool:storage Temp.InitialOrientation set value "down"
execute if score #temp.Z worldtool matches 1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run data modify storage worldtool:storage Temp.InitialOrientation set value "south"
execute if score #temp.Z worldtool matches -1 if predicate worldtool:shape_tool/settings/accepted_orientation/standard run data modify storage worldtool:storage Temp.InitialOrientation set value "north"

execute unless score #temp.X worldtool matches 0 if predicate worldtool:shape_tool/settings/accepted_orientation/axis run data modify storage worldtool:storage Temp.InitialOrientation set value "x"
execute unless score #temp.Y worldtool matches 0 if predicate worldtool:shape_tool/settings/accepted_orientation/axis run data modify storage worldtool:storage Temp.InitialOrientation set value "y"
execute unless score #temp.Z worldtool matches 0 if predicate worldtool:shape_tool/settings/accepted_orientation/axis run data modify storage worldtool:storage Temp.InitialOrientation set value "z"
