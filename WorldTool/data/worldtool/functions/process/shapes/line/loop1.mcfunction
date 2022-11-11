# Called by various shape generation functions
# Raycasts in a straight line and places blocks

scoreboard players add #temp worldtool 1

execute unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run scoreboard players add #lineBlocksPlaced worldtool 1

scoreboard players set #placeShapeBlock worldtool 1
execute if entity @s[tag=wt.process.shapes.hollow] if score #shapeDegrees worldtool matches 360.. unless score #lengthReached worldtool matches 0 unless score #length_temp worldtool >= #fullLength worldtool unless score #temp worldtool >= #shapeRadius worldtool run scoreboard players set #placeShapeBlock worldtool 0
execute if entity @s[tag=wt.process.shapes.hollow] unless score #shapeDegrees worldtool matches 360.. unless score #lengthReached worldtool matches 0 unless score #length_temp worldtool >= #fullLength worldtool unless score #temp worldtool >= #shapeRadius worldtool unless score #circleRotations worldtool matches 1 unless score #circleRotations worldtool >= #rotations worldtool run scoreboard players set #placeShapeBlock worldtool 0
execute if entity @s[tag=wt.process.shapes.hollow] if score #circleMode worldtool matches 1 if score #shapeDegrees worldtool matches 360.. unless score #temp worldtool >= #shapeRadius worldtool run scoreboard players set #placeShapeBlock worldtool 0
execute if entity @s[tag=wt.process.shapes.hollow] if score #circleMode worldtool matches 1 unless score #shapeDegrees worldtool matches 360.. unless score #temp worldtool >= #shapeRadius worldtool unless score #circleRotations worldtool matches 1 unless score #circleRotations worldtool >= #rotations worldtool run scoreboard players set #placeShapeBlock worldtool 0
execute if entity @s[tag=wt.process.shapes.replace.normal] unless blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all run scoreboard players set #placeShapeBlock worldtool 0
execute if entity @s[tag=wt.process.shapes.replace.exclude] if blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all run scoreboard players set #placeShapeBlock worldtool 0

execute if score #placeShapeBlock worldtool matches 1 run function worldtool:process/place_block.primary

execute unless score #temp worldtool >= #shapeRadius worldtool positioned ^ ^ ^1.00000000001 run function worldtool:process/shapes/line/loop1
