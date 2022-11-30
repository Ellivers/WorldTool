# Called by various shape generation functions
# Raycasts in a straight line and places blocks

scoreboard players add #temp worldtool 1

execute unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run scoreboard players add #lineBlocksPlaced worldtool 1

scoreboard players set #placeShapeBlock worldtool 1
execute if entity @s[tag=wt.process.shapes.hollow] if score #shapeDegreesSphere worldtool matches 360.. unless score #temp worldtool >= #shapeRadius worldtool run scoreboard players set #placeShapeBlock worldtool 0
execute if entity @s[tag=wt.process.shapes.hollow] unless score #shapeDegreesSphere worldtool matches 360.. unless score #temp worldtool >= #shapeRadius worldtool unless score #sphereRotations worldtool matches 1 unless score #sphereRotations worldtool >= #sphereMaxRotations worldtool run scoreboard players set #placeShapeBlock worldtool 0
execute if entity @s[tag=wt.process.shapes.replace.normal] unless blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all run scoreboard players set #placeShapeBlock worldtool 0
execute if entity @s[tag=wt.process.shapes.replace.exclude] if blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all run scoreboard players set #placeShapeBlock worldtool 0

execute if score #placeShapeBlock worldtool matches 1 unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/place_block.primary

execute unless score #temp worldtool >= #shapeRadius worldtool positioned ^ ^ ^1.00000000001 run function worldtool:process/shapes/line/loop_sphere
