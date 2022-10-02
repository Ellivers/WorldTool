# Called by worldtool:process/shapes/cylinder_horizontal/load
# Initiates a horizontal cylinder

function worldtool:process/shapes/common_init

execute store result score #shapeDegrees worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Degrees

execute store result score #shape_x_rotation worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.XRotation
execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"south"} run scoreboard players add #shape_y_rotation worldtool 90
execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"north"} run scoreboard players add #shape_y_rotation worldtool 270
execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"west"} run scoreboard players add #shape_y_rotation worldtool 180
execute store result entity @s Rotation[0] float 1 run scoreboard players get #shape_y_rotation worldtool

execute store result score #shapeRadius worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Diameter
scoreboard players operation #shapeRadius worldtool /= #2 worldtool

scoreboard players set #lengthReached worldtool 0
execute store result score #fullLength worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Length

scoreboard players set #shapeRaycastType worldtool 1

execute at @s run function worldtool:process/shapes/cylinder_horizontal/loop
