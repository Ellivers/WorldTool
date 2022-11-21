# Called by worldtool:process/load.tags

scoreboard players operation #processState_temp worldtool = #processState worldtool

execute if score #processState_temp worldtool matches 0 run function worldtool:process/shapes/sphere/loop
execute if score #processState_temp worldtool matches 1 run function worldtool:process/shapes/circle_vertical/rotate
execute if score #processState_temp worldtool matches 1 run function worldtool:process/shapes/sphere/rotate
execute if score #processState_temp worldtool matches 1 unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #sphereRotations worldtool >= #sphereMaxRotations worldtool at @s run function worldtool:process/shapes/sphere/loop

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/complete
