# Called by worldtool:process/shapes/cone_vertical/load
# Initiates a vertical cone

scoreboard players set #writerPosX worldtool 0
scoreboard players set #writerPosY worldtool 0
scoreboard players set #writerPosZ worldtool 0
scoreboard players set #pos2x worldtool 1
scoreboard players set #pos2y worldtool 1
scoreboard players set #pos2z worldtool 1

execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"up"} run tag @s add wt.orientation.up
execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"down"} run tag @s add wt.orientation.down

execute store result score #precision_temp worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Precision
execute store result score #shapeDegrees worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Degrees

execute store result score #shape_y_rotation worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.YRotation

scoreboard players set #degreesPerRotation worldtool 360000000
execute if score #precision_temp worldtool matches 1.. run scoreboard players operation #degreesPerRotation worldtool /= #precision_temp worldtool
execute if score #precision_temp worldtool matches ..-1 run scoreboard players operation #degreesPerRotation worldtool *= #precision_temp worldtool

scoreboard players operation #rotations worldtool = #shapeDegrees worldtool
execute if score #precision_temp worldtool matches 1.. run scoreboard players operation #rotations worldtool *= #precision_temp worldtool
execute if score #precision_temp worldtool matches ..-1 run scoreboard players operation #rotations worldtool /= #precision_temp worldtool

scoreboard players set #lengthReached worldtool 0
execute store result score #fullLength worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Length

execute store result score #currentRadius worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Diameter
scoreboard players operation #currentRadius worldtool /= #2 worldtool
scoreboard players operation #currentRadius worldtool *= #1000000 worldtool
scoreboard players set #shrinkPerCircle worldtool -1
scoreboard players operation #shrinkPerCircle worldtool *= #currentRadius worldtool
scoreboard players operation #length_temp worldtool = #fullLength worldtool
scoreboard players operation #shrinkPerCircle worldtool /= #length_temp worldtool
scoreboard players operation #shrinkPerCircle worldtool *= #-1 worldtool

scoreboard players set #shapeRaycastType worldtool 2

function worldtool:process/shapes/cone_vertical/loop
