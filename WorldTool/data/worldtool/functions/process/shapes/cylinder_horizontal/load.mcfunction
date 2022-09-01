# Called by worldtool:process/load.tags

scoreboard players operation #shapeGenStatus_temp worldtool = #shapeGenStatus worldtool

execute if score #shapeGenStatus_temp worldtool matches 0 run function worldtool:process/shapes/cylinder_horizontal/init
execute if score #shapeGenStatus_temp worldtool matches 1 run function worldtool:process/shapes/circle_vertical/rotate
execute if score #shapeGenStatus_temp worldtool matches 1 unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #lengthReached worldtool >= #fullLength worldtool run scoreboard players add #lengthReached worldtool 1
execute if score #shapeGenStatus_temp worldtool matches 1 unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #lengthReached worldtool >= #fullLength worldtool at @s positioned ^1 ^ ^ run function worldtool:process/shapes/cylinder_horizontal/loop
execute if score #shapeGenStatus_temp worldtool matches 2 run function worldtool:process/shapes/cylinder_horizontal/loop

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/shapes/complete
