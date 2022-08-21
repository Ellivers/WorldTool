# Called by INSERT_FUNCTION

scoreboard players set #shapeGenStatus worldtool 1
scoreboard players set #circleRotations worldtool 0

scoreboard players set #baseRotation worldtool 1000000
scoreboard players operation #baseRotation worldtool *= #shape_y_rotation worldtool
execute store result entity @s Rotation[0] float 1 run scoreboard players get #shape_y_rotation worldtool

function worldtool:process/shapes/circle_horizontal/rotate
