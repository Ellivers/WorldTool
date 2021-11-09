# Recursive function called by various functions
# Rotates after each line has been drawn

# Set scores
scoreboard players set #generationRay worldtool 0
scoreboard players operation #blockschecked worldtool += $blocksplaced worldtool
scoreboard players set $blocksplaced worldtool 0

# Get the current rotation
execute unless score #axisTemp worldtool matches 1..2 store result score #currentRotX worldtool run data get entity @s Rotation[1] 100
execute unless score #axisTemp worldtool matches 3..6 store result score #currentRotY worldtool run data get entity @s Rotation[0] 100

# Move with the selected precision
execute unless score #axisTemp worldtool matches 1..2 run scoreboard players operation #currentRotX worldtool += #shapePrecision worldtool
execute unless score #axisTemp worldtool matches 3..6 run scoreboard players operation #currentRotY worldtool += #shapePrecision worldtool
execute unless score #axisTemp worldtool matches 1..2 store result entity @s Rotation[1] float 0.01 run scoreboard players get #currentRotX worldtool
execute unless score #axisTemp worldtool matches 3..6 store result entity @s Rotation[0] float 0.01 run scoreboard players get #currentRotY worldtool
scoreboard players operation #totalRotation worldtool += #shapePrecision worldtool

# Make sure it hasn't rotated too far
execute unless score #axisTemp worldtool matches 1..2 if score #totalRotation worldtool > #maxDegrees worldtool if score #currentRotX worldtool > #maxRotation worldtool run scoreboard players set #stopGenerating worldtool 1
execute unless score #axisTemp worldtool matches 3..6 if score #totalRotation worldtool > #maxDegrees worldtool if score #currentRotY worldtool > #maxRotation worldtool run scoreboard players set #stopGenerating worldtool 1

execute if score #stopGenerating worldtool matches 1 run function worldtool:process/shapes/circle/stop
execute unless score #stopGenerating worldtool matches 1 at @s run function worldtool:process/shapes/circle/raycast
