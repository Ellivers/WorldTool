# Called recursively and by worldtool:process/shapes/cone_horizontal/load and worldtool:process/shapes/cone_horizontal/init

tp ~ ~ ~

scoreboard players operation #shapeRadius worldtool = #currentRadius worldtool
scoreboard players operation #shapeRadius worldtool -= #shrinkPerCircle worldtool

execute store result entity @s Rotation[0] float 1 run scoreboard players get #shape_y_rotation worldtool
function worldtool:process/shapes/circle_vertical/init

scoreboard players operation #currentRadius worldtool = #shapeRadius worldtool

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run scoreboard players set #shapeGenStatus worldtool 1
execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run scoreboard players add #lengthReached worldtool 1

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #lengthReached worldtool >= #fullLength worldtool positioned ^1 ^ ^ run function worldtool:process/shapes/cone_horizontal/loop
