# Called by worldtool:process_start/variables
# Initiates a vertical cylinder process

execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"up"} run tag @s add wt.orientation.up
execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"down"} run tag @s add wt.orientation.down

execute store result score #shapeDegrees worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Degrees

scoreboard players set #lengthReached worldtool 0
execute store result score #fullLength worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Length

function worldtool:process_start/shapes/init/common

execute store result score #shapeRadius worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Diameter
scoreboard players operation #shapeRadius worldtool /= #2 worldtool

scoreboard players set #shapeRaycastType worldtool 1
