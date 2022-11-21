# Called by worldtool:process/load.tags

scoreboard players operation #processState_temp worldtool = #processState worldtool

execute if score #processState_temp worldtool matches 0 run function worldtool:process/shapes/cone_vertical/loop
execute if score #processState_temp worldtool matches 1 run function worldtool:process/shapes/circle_horizontal/rotate
execute if score #processState_temp worldtool matches 1 unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #lengthReached worldtool >= #fullLength worldtool run scoreboard players operation #currentRadius worldtool = #shapeRadius worldtool
execute if score #processState_temp worldtool matches 1 unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #lengthReached worldtool >= #fullLength worldtool run scoreboard players add #lengthReached worldtool 1
execute if score #processState_temp worldtool matches 1 unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #lengthReached worldtool >= #fullLength worldtool if entity @s[tag=wt.orientation.up] positioned ^ ^1 ^ run function worldtool:process/shapes/cone_vertical/loop
execute if score #processState_temp worldtool matches 1 unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #lengthReached worldtool >= #fullLength worldtool if entity @s[tag=wt.orientation.down] positioned ^ ^-1 ^ run function worldtool:process/shapes/cone_vertical/loop

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/complete
