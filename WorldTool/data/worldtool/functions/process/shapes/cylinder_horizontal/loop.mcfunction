# Called recursively and by worldtool:process/shapes/cylinder_vertical/load and worldtool:process/shapes/cylinder_vertical/init

tp ~ ~ ~

function worldtool:process/shapes/circle_vertical/init

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run scoreboard players set #shapeGenStatus worldtool 2
execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run scoreboard players add #lengthReached worldtool 1

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #lengthReached worldtool >= #length_temp worldtool positioned ^1 ^ ^ run function worldtool:process/shapes/cylinder_horizontal/loop
