execute if score $progressBar worldtool matches 1.. run function worldtool:load_process/load_fill.wtd_pb
execute if score #axisTemp worldtool matches 3..4 run scoreboard players add #yRot worldtool 90
execute store result entity @s Rotation[0] float 1 run scoreboard players get #yRot worldtool
execute if score #axisTemp worldtool matches 3..6 store result entity @s Rotation[1] float 1 run scoreboard players get #xRot worldtool
scoreboard players operation #currentRotX worldtool = #xRot worldtool
scoreboard players operation #currentRotY worldtool = #yRot worldtool
execute at @s align xyz positioned ~.5 ~.5 ~.5 run function worldtool:generate_shape/circle/raycast
