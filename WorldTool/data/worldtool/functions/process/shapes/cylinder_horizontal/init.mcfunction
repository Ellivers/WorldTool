# Called by worldtool:process/shapes/cylinder_horizontal/load
# Initiates a horizontal cylinder

scoreboard players set #writerPosX worldtool 0
scoreboard players set #writerPosY worldtool 0
scoreboard players set #writerPosZ worldtool 0
scoreboard players set #pos2x worldtool 1
scoreboard players set #pos2y worldtool 1
scoreboard players set #pos2z worldtool 1

execute store result score #precision_temp worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Precision
execute store result score #shapeDegrees worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Degrees

execute store result score #shape_x_rotation worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.XRotation
execute store result score #shape_y_rotation worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.YRotation
execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"south"} run scoreboard players add #shape_y_rotation worldtool 90
execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"north"} run scoreboard players add #shape_y_rotation worldtool 270
execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"west"} run scoreboard players add #shape_y_rotation worldtool 180
execute store result entity @s Rotation[0] float 1 run scoreboard players get #shape_y_rotation worldtool

scoreboard players set #degreesPerRotation worldtool 360000000
execute if score #precision_temp worldtool matches 1.. run scoreboard players operation #degreesPerRotation worldtool /= #precision_temp worldtool
execute if score #precision_temp worldtool matches ..-1 run scoreboard players operation #degreesPerRotation worldtool *= #precision_temp worldtool

scoreboard players operation #rotations worldtool = #shapeDegrees worldtool
execute if score #precision_temp worldtool matches 1.. run scoreboard players operation #rotations worldtool *= #precision_temp worldtool
execute if score #precision_temp worldtool matches ..-1 run scoreboard players operation #rotations worldtool /= #precision_temp worldtool

execute store result score #shapeRadius worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Diameter
scoreboard players operation #shapeRadius worldtool /= #2 worldtool

scoreboard players set #lengthReached worldtool 0
execute store result score #fullLength worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Length

scoreboard players set #shapeRaycastType worldtool 1

execute at @s run function worldtool:process/shapes/cylinder_horizontal/loop
