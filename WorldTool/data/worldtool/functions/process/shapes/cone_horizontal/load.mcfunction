# Called by worldtool:process/load.tags

function worldtool:process/shapes/circle_vertical/rotate
execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #lengthReached worldtool >= #fullLength worldtool run scoreboard players operation #currentRadius worldtool = #shapeRadius worldtool
execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #lengthReached worldtool >= #fullLength worldtool run scoreboard players add #lengthReached worldtool 1
execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #lengthReached worldtool >= #fullLength worldtool at @s positioned ^1 ^ ^ run function worldtool:process/shapes/cone_horizontal/loop

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/complete
