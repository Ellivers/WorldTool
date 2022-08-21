# Called by worldtool:process/shapes/cylinder_vertical/load
# Initiates a vertical cylinder

scoreboard players set #writerPosX worldtool 0
scoreboard players set #writerPosY worldtool 0
scoreboard players set #writerPosZ worldtool 0
scoreboard players set #pos2x worldtool 1
scoreboard players set #pos2y worldtool 1
scoreboard players set #pos2z worldtool 1

execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"up"} run tag @s add wt.orientation.up
execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"down"} run tag @s add wt.orientation.down

execute store result score #precision_temp worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Precision
execute store result score #degrees_temp worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Degrees

execute store result score #shape_y_rotation worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.YRotation

scoreboard players set #degreesPerRotation worldtool 360000000
execute if score #precision_temp worldtool matches 1.. run scoreboard players operation #degreesPerRotation worldtool /= #precision_temp worldtool
execute if score #precision_temp worldtool matches ..-1 run scoreboard players operation #degreesPerRotation worldtool *= #precision_temp worldtool

scoreboard players operation #rotations worldtool = #degrees_temp worldtool
execute if score #precision_temp worldtool matches 1.. run scoreboard players operation #rotations worldtool *= #precision_temp worldtool
execute if score #precision_temp worldtool matches ..-1 run scoreboard players operation #rotations worldtool /= #precision_temp worldtool

scoreboard players set #lengthReached worldtool 0
execute store result score #length_temp worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Length

function worldtool:process/shapes/cylinder_vertical/loop
