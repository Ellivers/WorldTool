# Rotate a specified amount (precision) after every line has been drawn

scoreboard players set #generationRay worldtool 0
scoreboard players add #genFunctionsRun worldtool 1
scoreboard players operation #blockschecked worldtool += $blocksplaced worldtool
scoreboard players set $blocksplaced worldtool 0

execute unless score #axisTemp worldtool matches 1..2 store result score #currentRotX worldtool run data get entity @s Rotation[1] 10000
execute unless score #axisTemp worldtool matches 3..6 store result score #currentRotY worldtool run data get entity @s Rotation[0] 10000

execute unless score #axisTemp worldtool matches 1..2 run scoreboard players operation #currentRotX worldtool += #shapePrecision worldtool
execute unless score #axisTemp worldtool matches 3..6 run scoreboard players operation #currentRotY worldtool += #shapePrecision worldtool
execute unless score #axisTemp worldtool matches 1..2 store result entity @s Rotation[1] float 0.0001 run scoreboard players get #currentRotX worldtool
execute unless score #axisTemp worldtool matches 3..6 store result entity @s Rotation[0] float 0.0001 run scoreboard players get #currentRotY worldtool
scoreboard players operation #totalRotation worldtool += #shapePrecision worldtool

#tellraw @a ["Degrees total: ",{"score": {"name": "#totalRotation","objective": "worldtool"}}, " Actual rotation: ",{"score": {"name": "#currentRotY","objective": "worldtool"}}]

execute unless score #axisTemp worldtool matches 1..2 if score #totalRotation worldtool > #maxDegrees worldtool if score #currentRotX worldtool > #maxRotation worldtool run scoreboard players set #stopGenerating worldtool 1
execute unless score #axisTemp worldtool matches 3..6 if score #totalRotation worldtool > #maxDegrees worldtool if score #currentRotY worldtool > #maxRotation worldtool run scoreboard players set #stopGenerating worldtool 1

execute if score #stopGenerating worldtool matches 1 run function worldtool:processes/generate_shape/circle/stop
execute unless score #genFunctionsRun worldtool >= $circleBlocksPerTick worldtool unless score #stopGenerating worldtool matches 1 at @s run function worldtool:processes/generate_shape/circle/raycast
