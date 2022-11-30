# Called by various shape generation functions
# Starts drawing a line

scoreboard players operation #length_temp worldtool = #lengthReached worldtool
scoreboard players add #length_temp worldtool 1

scoreboard players set #temp worldtool -1

execute if score #shapeRaycastType worldtool matches 1 run function worldtool:process/shapes/line/loop_whole_block
execute if score #shapeRaycastType worldtool matches 2 run function worldtool:process/shapes/line/loop_half_block
execute if score #shapeRaycastType worldtool matches 3 run function worldtool:process/shapes/line/loop_sphere
function #worldtool:hooks/process/shape_line
