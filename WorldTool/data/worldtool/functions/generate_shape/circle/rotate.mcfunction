# Rotate a specified amount (precision) after every line has been drawn

#tellraw @a ["current height: ",{"score": {"name": "#currentHeight","objective": "worldtool"}}," max height: ",{"score": {"name":"#maxHeight","objective": "worldtool"}}]
#tellraw @a {"score": {"name": "#generationRay","objective": "worldtool"}}
scoreboard players set #generationRay worldtool 0
scoreboard players add #genFunctionsRun worldtool 1
scoreboard players operation #blockschecked worldtool += $blocksplaced worldtool
scoreboard players set $blocksplaced worldtool 0

execute unless score #axisTemp worldtool matches 1..2 store result score #currentRotX worldtool run data get entity @s Rotation[1] 100
execute unless score #axisTemp worldtool matches 3..6 store result score #currentRotY worldtool run data get entity @s Rotation[0] 100
#tellraw @a ["Current rotation from circle 1: ",{"score": {"name": "#currentRotY","objective": "worldtool"}}]
#tellraw @a ["x: ",{"score": {"name": "#currentRotX","objective": "worldtool"}}," y: ",{"score": {"name": "#currentRotY","objective": "worldtool"}}]

execute unless score #axisTemp worldtool matches 1..2 run scoreboard players operation #currentRotX worldtool += #shapePrecision worldtool
execute unless score #axisTemp worldtool matches 3..6 run scoreboard players operation #currentRotY worldtool += #shapePrecision worldtool
execute unless score #axisTemp worldtool matches 1..2 store result entity @s Rotation[1] float 0.01 run scoreboard players get #currentRotX worldtool
execute unless score #axisTemp worldtool matches 3..6 store result entity @s Rotation[0] float 0.01 run scoreboard players get #currentRotY worldtool
scoreboard players operation #totalRotation worldtool += #shapePrecision worldtool
#tellraw @a {"score": {"name": "#totalRotationY","objective": "worldtool"}}

execute unless score #axisTemp worldtool matches 1..2 if score #totalRotation worldtool > #maxDegrees worldtool if score #currentRotX worldtool > #maxRotation worldtool run scoreboard players set #stopGenerating worldtool 1
execute unless score #axisTemp worldtool matches 3..6 if score #totalRotation worldtool > #maxDegrees worldtool if score #currentRotY worldtool > #maxRotation worldtool run scoreboard players set #stopGenerating worldtool 1

#scoreboard players operation #currentRotX worldtool /= #100 worldtool
#scoreboard players operation #currentRotY worldtool /= #100 worldtool
#tellraw @a ["Current rotation from circle 2: ",{"score": {"name": "#currentRotY","objective": "worldtool"}}]

execute if score #stopGenerating worldtool matches 1 run function worldtool:generate_shape/circle/stop
execute unless score #genFunctionsRun worldtool >= $circleBlocksPerTick worldtool unless score #stopGenerating worldtool matches 1 at @s run function worldtool:generate_shape/circle/raycast
#execute if score #genFunctionsRun worldtool >= $circleBlocksPerTick worldtool run schedule function worldtool:load_process/load2_fill 1t
