# Called recursively and by worldtool:process/shapes/cylinder_horizontal/load and worldtool:process/shapes/cylinder_horizontal/init

tp ~ ~ ~

execute store result entity @s Rotation[0] float 1 run scoreboard players get #shape_y_rotation worldtool
function worldtool:process/shapes/circle_vertical/init

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run scoreboard players set #shapeGenStatus worldtool 2
execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run scoreboard players add #lengthReached worldtool 1

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #lengthReached worldtool >= #fullLength worldtool positioned ^1 ^ ^ run function worldtool:process/shapes/cylinder_horizontal/loop
