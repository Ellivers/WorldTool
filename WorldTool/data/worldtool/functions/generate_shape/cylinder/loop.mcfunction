# Go one in the direction the player has chosen until it reaches the desired length

scoreboard players add #genFunctionsRun worldtool 1

execute store result entity @s Rotation[0] float 1 run scoreboard players get #yRot worldtool
execute if score #axisTemp worldtool matches 3..6 store result entity @s Rotation[1] float 1 run scoreboard players get #xRot worldtool
scoreboard players set #totalRotation worldtool 0
scoreboard players set #stopGenerating worldtool 0
scoreboard players set #blockschecked worldtool 0
scoreboard players set #generationRay worldtool 0
execute if score #axisTemp worldtool matches 1 at @s run tp ~ ~1 ~
execute if score #axisTemp worldtool matches 2 at @s run tp ~ ~-1 ~
execute if score #axisTemp worldtool matches 3 at @s run tp ^-1 ^ ^
execute if score #axisTemp worldtool matches 4 at @s run tp ^1 ^ ^
execute if score #axisTemp worldtool matches 5 at @s run tp ^1 ^ ^
execute if score #axisTemp worldtool matches 6 at @s run tp ^-1 ^ ^
execute if score #shapeRotated worldtool matches 1 if score #axisTemp worldtool matches 3 at @s run tp ^-.2 ^ ^
execute if score #shapeRotated worldtool matches 1 if score #axisTemp worldtool matches 4 at @s run tp ^.2 ^ ^
execute if score #shapeRotated worldtool matches 1 if score #axisTemp worldtool matches 5 at @s run tp ^.2 ^ ^
execute if score #shapeRotated worldtool matches 1 if score #axisTemp worldtool matches 6 at @s run tp ^-.2 ^ ^
scoreboard players add #currentHeight worldtool 1
#tellraw @a ["current height: ",{"score": {"name": "#currentHeight","objective": "worldtool"}}," max height: ",{"score": {"name":"#maxHeight","objective": "worldtool"}}]

execute if score #currentHeight worldtool >= #maxHeight worldtool run function worldtool:generate_shape/circle/stop.stop
execute unless score #genFunctionsRun worldtool >= $circleBlocksPerTick worldtool unless score #currentHeight worldtool >= #maxHeight worldtool at @s run function worldtool:generate_shape/circle/raycast
#execute if score #genFunctionsRun worldtool >= $circleBlocksPerTick worldtool run schedule function worldtool:load_process/load2_fill 1t
