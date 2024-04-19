# Called by worldtool:particles/shape_preview/load
# Checks if the cylinder is whole or only partial

data modify storage worldtool:storage Temp.ShapeSettings set from entity @s data.WorldTool.ShapeSettings

function worldtool:particles/colors/shape

scoreboard players set #degrees_temp worldtool 360
#execute store result score #degrees_temp worldtool run data get storage worldtool:storage Temp.ShapeSettings.Degrees
execute store result score #radius_temp worldtool run data get storage worldtool:storage Temp.ShapeSettings.Diameter
scoreboard players operation #radius_temp worldtool /= #2 worldtool

function worldtool:particles/shape_preview/sphere/preview
