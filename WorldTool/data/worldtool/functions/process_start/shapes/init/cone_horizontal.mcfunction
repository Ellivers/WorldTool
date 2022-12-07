# Called by worldtool:process_start/variables
# Initiates a horizontal cone

execute store result score #shapeDegrees worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Degrees

scoreboard players set #lengthReached worldtool 0
execute store result score #fullLength worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Length

function worldtool:process_start/shapes/init/common

execute store result score #shape_x_rotation worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.XRotation
execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"south"} run scoreboard players add #shape_y_rotation worldtool 90
execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"north"} run scoreboard players add #shape_y_rotation worldtool 270
execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"west"} run scoreboard players add #shape_y_rotation worldtool 180
execute store result entity @s Rotation[0] float 1 run scoreboard players get #shape_y_rotation worldtool

execute store result score #currentRadius worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Diameter
scoreboard players operation #currentRadius worldtool /= #2 worldtool
scoreboard players operation #currentRadius worldtool *= #1000000 worldtool
scoreboard players operation #shapeRadius worldtool = #currentRadius worldtool

scoreboard players set #shrinkPerCircle worldtool -1
scoreboard players operation #shrinkPerCircle worldtool *= #currentRadius worldtool
scoreboard players operation #length_temp worldtool = #fullLength worldtool
scoreboard players operation #shrinkPerCircle worldtool /= #length_temp worldtool
scoreboard players operation #shrinkPerCircle worldtool *= #-1 worldtool

scoreboard players set #shapeRaycastType worldtool 2
