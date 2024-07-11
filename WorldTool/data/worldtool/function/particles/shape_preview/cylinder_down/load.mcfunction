# Called by worldtool:particles/shape_preview/load
# Checks if the cylinder is whole or only partial

data modify storage worldtool:storage Temp.ShapeSettings set from entity @s data.WorldTool.ShapeSettings

function worldtool:particles/colors/shape

execute store result score #degrees_temp worldtool run data get storage worldtool:storage Temp.ShapeSettings.Degrees
execute store result score #length_temp worldtool run data get storage worldtool:storage Temp.ShapeSettings.Length
execute store result score #radius_temp worldtool run data get storage worldtool:storage Temp.ShapeSettings.Diameter
scoreboard players operation #radius_temp worldtool /= #2 worldtool

execute if score #degrees_temp worldtool matches 360.. run function worldtool:particles/shape_preview/cylinder_down/full/main
execute unless score #degrees_temp worldtool matches 360.. run function worldtool:particles/shape_preview/cylinder_down/partial/main
