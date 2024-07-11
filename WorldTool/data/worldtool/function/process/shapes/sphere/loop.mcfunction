# Called recursively and by worldtool:process/shapes/sphere/load
# Draws a circle and then rotates one step

function worldtool:process/shapes/circle_vertical/init
scoreboard players set #processState worldtool 0
function worldtool:process/shapes/sphere/rotate

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #sphereRotations worldtool >= #sphereMaxRotations worldtool at @s run function worldtool:process/shapes/sphere/loop
