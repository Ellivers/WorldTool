# Called by worldtool:process/shapes/cone_vertical/load
# Initiates a vertical cone

execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"up"} run tag @s add wt.orientation.up
execute if data storage worldtool:storage Processes[-1].Input.ShapeSettings{Orientation:"down"} run tag @s add wt.orientation.down

function worldtool:process/shapes/common_init

execute store result score #shapeDegrees worldtool run data get storage worldtool:storage Processes[-1].Input.ShapeSettings.Degrees

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
