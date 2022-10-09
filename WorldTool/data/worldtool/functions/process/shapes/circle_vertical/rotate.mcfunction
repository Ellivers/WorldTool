# Called recursively and by worldtool:process/shapes/circle_vertical/init
# Rotates after each line has been drawn

scoreboard players operation #blocksChecked worldtool += #lineBlocksPlaced worldtool
scoreboard players set #lineBlocksPlaced worldtool 0

scoreboard players add #circleRotations worldtool 1

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function worldtool:process/shapes/line/init

scoreboard players operation #temp worldtool = #circleRotations worldtool
scoreboard players operation #temp worldtool *= #degreesPerRotation worldtool
scoreboard players operation #temp worldtool += #degreesPerRotation worldtool
scoreboard players operation #temp worldtool += #baseRotation worldtool
execute store result entity @s Rotation[1] float 0.000001 run scoreboard players get #temp worldtool

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #circleRotations worldtool >= #rotations worldtool run function worldtool:process/shapes/circle_vertical/rotate
