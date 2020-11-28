# Go one in the direction the player has chosen until it reaches the desired length

execute store result entity @s Rotation[0] float 1 run scoreboard players get #yRot worldtool
execute if score #axisTemp worldtool matches 3..6 store result entity @s Rotation[1] float 1 run scoreboard players get #xRot worldtool
scoreboard players set #totalRotationX worldtool 0
scoreboard players set #totalRotationY worldtool 0
scoreboard players set #stopGenerating worldtool 0
scoreboard players set #genFunctionsRun worldtool 0
scoreboard players set #blockschecked worldtool 0
scoreboard players set #generationRay worldtool 0
execute if score #axisTemp worldtool matches 1 at @s run tp ~ ~1 ~
execute if score #axisTemp worldtool matches 2 at @s run tp ~ ~-1 ~
execute if score #axisTemp worldtool matches 3 at @s run tp ^-1 ^ ^
execute if score #axisTemp worldtool matches 4 at @s run tp ^1 ^ ^
execute if score #axisTemp worldtool matches 5 at @s run tp ^1 ^ ^
execute if score #axisTemp worldtool matches 6 at @s run tp ^-1 ^ ^
scoreboard players add #currentHeight worldtool 1
execute if score #currentHeight worldtool >= #maxHeight worldtool run function worldtool:generate_shape/circle/stop.stop
execute unless score #currentHeight worldtool >= #maxHeight worldtool at @s run function worldtool:generate_shape/circle/raycast
