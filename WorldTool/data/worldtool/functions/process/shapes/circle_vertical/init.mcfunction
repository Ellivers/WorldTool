# Called by worldtool:process/shapes/cylinder_horizontal, worldtool:process/shapes/cone_horizontal and worldtool:process/shapes/sphere

scoreboard players set #shapeGenStatus worldtool 1
scoreboard players set #circleRotations worldtool 0

execute store result entity @s Rotation[0] float 1 run scoreboard players get #shape_y_rotation worldtool

scoreboard players operation #baseRotation worldtool = #shape_x_rotation worldtool
scoreboard players operation #baseRotation worldtool *= #1000000 worldtool
execute store result entity @s Rotation[1] float 1 run scoreboard players get #shape_x_rotation worldtool

execute at @s run function worldtool:process/shapes/circle_vertical/rotate
