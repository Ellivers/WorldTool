# Called recursively and by worldtool:process/shapes/sphere/init and worldtool:process/shapes/sphere/load
# Draws a circle and then rotates one step

function worldtool:process/shapes/circle_vertical/init

scoreboard players add #sphereRotations worldtool 1

scoreboard players operation #temp worldtool = #sphereRotations worldtool
scoreboard players operation #temp worldtool *= #degreesPerRotation worldtool
scoreboard players operation #temp worldtool += #degreesPerRotation worldtool
scoreboard players operation #temp worldtool += #baseSphereRotation worldtool
execute store result entity @s Rotation[0] float 0.000001 run scoreboard players get #temp worldtool

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool unless score #sphereRotations worldtool >= #sphereMaxRotations worldtool at @s run function worldtool:process/shapes/sphere/rotate
