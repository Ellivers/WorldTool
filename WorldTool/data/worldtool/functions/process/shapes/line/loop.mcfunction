# Called by various shape generation functions
# Raycasts in a straight line and places blocks

scoreboard players add #temp worldtool 1

execute unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run scoreboard players add #lineBlocksPlaced worldtool 1
execute unless score #shapeHollow worldtool matches 1 run clone 27451 1 19 27451 1 19 ~ ~ ~
execute if score #shapeHollow worldtool matches 1 if score #temp worldtool >= #radius_temp worldtool run function worldtool:process/place_block.primary

execute unless score #temp worldtool >= #radius_temp worldtool positioned ^ ^ ^1 run function worldtool:process/shapes/line/loop
