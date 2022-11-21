# Called recursively and by worldtool:process/shapes/cone_vertical/load and worldtool:process/shapes/cone_vertical/init

tp ~ ~ ~

scoreboard players operation #shapeRadius worldtool = #currentRadius worldtool
scoreboard players operation #shapeRadius worldtool -= #shrinkPerCircle worldtool

function worldtool:process/shapes/circle_horizontal/init

scoreboard players operation #currentRadius worldtool = #shapeRadius worldtool

scoreboard players set #processState worldtool 0
execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run scoreboard players add #lengthReached worldtool 1

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #lengthReached worldtool >= #fullLength worldtool if entity @s[tag=wt.orientation.up] positioned ^ ^1 ^ run function worldtool:process/shapes/cone_vertical/loop
execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #lengthReached worldtool >= #fullLength worldtool if entity @s[tag=wt.orientation.down] positioned ^ ^-1 ^ run function worldtool:process/shapes/cone_vertical/loop
