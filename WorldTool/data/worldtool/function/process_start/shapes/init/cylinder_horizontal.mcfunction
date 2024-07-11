# Called by worldtool:process_start/variables
# Initiates a horizontal cylinder

execute store result score #shapeDegrees worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Degrees

scoreboard players set #lengthReached worldtool 0
execute store result score #fullLength worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Length

function worldtool:process_start/shapes/init/common

execute store result score #shape_x_rotation worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.XRotation
execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"south"} run scoreboard players add #shape_y_rotation worldtool 90
execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"north"} run scoreboard players add #shape_y_rotation worldtool 270
execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"west"} run scoreboard players add #shape_y_rotation worldtool 180
execute store result entity @s Rotation[0] float 1 run scoreboard players get #shape_y_rotation worldtool

execute store result score #shapeRadius worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Diameter
scoreboard players operation #shapeRadius worldtool /= #2 worldtool

scoreboard players set #shapeRaycastType worldtool 1
