# Called by worldtool:process/load.tags

scoreboard players operation #shapeGenStatus_temp worldtool = #shapeGenStatus worldtool

execute if score #shapeGenStatus_temp worldtool matches 0 run function worldtool:process/shapes/sphere/init
execute if score #shapeGenStatus_temp worldtool matches 1 run function worldtool:process/shapes/sphere/rotate

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/shapes/complete
