# Called by various shape generation functions
# Raycasts in a straight line and places blocks

scoreboard players add #temp worldtool 500000

execute unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run scoreboard players add #lineBlocksPlaced worldtool 1

scoreboard players set #placeShapeBlock worldtool 1
execute if score #shapeHollow worldtool matches 1 if score #shapeDegrees worldtool matches 360.. unless score #lengthReached worldtool matches 0 unless score #length_temp worldtool >= #fullLength worldtool unless score #temp worldtool >= #shapeRadius worldtool run scoreboard players set #placeShapeBlock worldtool 0
execute if score #shapeHollow worldtool matches 1 unless score #shapeDegrees worldtool matches 360.. unless score #lengthReached worldtool matches 0 unless score #length_temp worldtool >= #fullLength worldtool unless score #temp worldtool >= #shapeRadius worldtool unless score #circleRotations worldtool matches 1 unless score #circleRotations worldtool >= #rotations worldtool run scoreboard players set #placeShapeBlock worldtool 0
execute if score #replaceType worldtool matches 1 unless blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all run scoreboard players set #placeShapeBlock worldtool 0
execute if score #replaceType worldtool matches 2 if blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all run scoreboard players set #placeShapeBlock worldtool 0

execute if score #placeShapeBlock worldtool matches 1 run function worldtool:process/place_block.primary

execute unless score #temp worldtool >= #shapeRadius worldtool positioned ^ ^ ^.500000000001 run function worldtool:process/shapes/line/loop2
