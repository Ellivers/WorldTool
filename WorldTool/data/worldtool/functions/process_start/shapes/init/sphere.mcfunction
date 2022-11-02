# Called by worldtool:process_start/variables
# Initiates a sphere

execute store result score #shapeDegreesSphere worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Degrees
execute store result score #shapeDegrees worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.SecondaryDegrees

scoreboard players set #lengthReached worldtool 0
scoreboard players set #fullLength worldtool 1

function worldtool:process_start/shapes/init/common

execute store result score #shape_x_rotation worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.XRotation
scoreboard players remove #shape_x_rotation worldtool 90

scoreboard players operation #sphereMaxRotations worldtool = #shapeDegreesSphere worldtool
execute if score #precision_temp worldtool matches 1.. run scoreboard players operation #sphereMaxRotations worldtool *= #precision_positive_temp worldtool
execute if score #precision_temp worldtool matches ..-1 run scoreboard players operation #sphereMaxRotations worldtool /= #precision_positive_temp worldtool

execute store result score #shapeRadius worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Diameter
scoreboard players operation #shapeRadius worldtool /= #2 worldtool


scoreboard players set #shapeRaycastType worldtool 1

scoreboard players set #sphereRotations worldtool 0

scoreboard players operation #baseSphereRotation worldtool = #shape_y_rotation worldtool
scoreboard players operation #baseSphereRotation worldtool *= #1000000 worldtool
execute store result entity @s Rotation[0] float 1 run scoreboard players get #shape_y_rotation worldtool
