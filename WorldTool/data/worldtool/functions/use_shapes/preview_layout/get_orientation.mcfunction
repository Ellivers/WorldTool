# Called by various (shape preview) functions
# Sets the orientation to scores

# Not found = 0
# Up = 1
# Down = 2
# North = 3
# South = 4
# East = 5
# West = 6

scoreboard players set #temp.orientation worldtool 0

execute if predicate worldtool:shape_tool/settings/orientations/up run scoreboard players set #temp.orientation worldtool 1
execute if predicate worldtool:shape_tool/settings/orientations/down run scoreboard players set #temp.orientation worldtool 2
execute if predicate worldtool:shape_tool/settings/orientations/north run scoreboard players set #temp.orientation worldtool 3
execute if predicate worldtool:shape_tool/settings/orientations/south run scoreboard players set #temp.orientation worldtool 4
execute if predicate worldtool:shape_tool/settings/orientations/east run scoreboard players set #temp.orientation worldtool 5
execute if predicate worldtool:shape_tool/settings/orientations/west run scoreboard players set #temp.orientation worldtool 6

function #worldtool:addon/shape_preview/get_orientation
