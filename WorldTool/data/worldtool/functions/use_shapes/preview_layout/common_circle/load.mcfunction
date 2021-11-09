# Called by various functions
# Places a circle preview

function worldtool:use_shapes/preview_layout/recenter_pos
execute if score #temp.orientation worldtool matches 5..6 store result storage worldtool:storage Temp.OffsetPos[2] double 1 run scoreboard players get #temp.radius worldtool
execute if score #temp.orientation worldtool matches 1..4 store result storage worldtool:storage Temp.OffsetPos[0] double 1 run scoreboard players get #temp.radius worldtool
data modify storage worldtool:storage Temp.PointNumber set from storage worldtool:storage Temp.PointNumbers[0]
function worldtool:use_shapes/preview_layout/set_point

execute if score #temp.orientation worldtool matches 5..6 store result storage worldtool:storage Temp.OffsetPos[2] double -1 run scoreboard players get #temp.radius worldtool
execute if score #temp.orientation worldtool matches 1..4 store result storage worldtool:storage Temp.OffsetPos[0] double -1 run scoreboard players get #temp.radius worldtool
data modify storage worldtool:storage Temp.PointNumber set from storage worldtool:storage Temp.PointNumbers[1]
function worldtool:use_shapes/preview_layout/set_point

function worldtool:use_shapes/preview_layout/recenter_pos
execute if score #temp.orientation worldtool matches 1..2 store result storage worldtool:storage Temp.OffsetPos[2] double 1 run scoreboard players get #temp.radius worldtool
execute if score #temp.orientation worldtool matches 3..6 store result storage worldtool:storage Temp.OffsetPos[1] double 1 run scoreboard players get #temp.radius worldtool
data modify storage worldtool:storage Temp.PointNumber set from storage worldtool:storage Temp.PointNumbers[2]
function worldtool:use_shapes/preview_layout/set_point

execute if score #temp.orientation worldtool matches 1..2 store result storage worldtool:storage Temp.OffsetPos[2] double -1 run scoreboard players get #temp.radius worldtool
execute if score #temp.orientation worldtool matches 3..6 store result storage worldtool:storage Temp.OffsetPos[1] double -1 run scoreboard players get #temp.radius worldtool
data modify storage worldtool:storage Temp.PointNumber set from storage worldtool:storage Temp.PointNumbers[3]
function worldtool:use_shapes/preview_layout/set_point
