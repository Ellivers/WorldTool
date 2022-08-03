# Called by worldtool:particles/shape_preview/load
# Checks if the cylinder is whole or only partial

data modify storage worldtool:storage Temp.ShapeSettings set from entity @s data.WorldTool.ShapeSettings

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @a if score @s wt.ID = #ID_temp worldtool run tag @s add wt.shape_preview_temp

particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ 0 .3 0 2 3 force @a[tag=wt.shape_preview_temp]

execute store result score #degrees_temp worldtool run data get storage worldtool:storage Temp.ShapeSettings.Degrees
execute store result score #length_temp worldtool run data get storage worldtool:storage Temp.ShapeSettings.Length
execute store result score #radius_temp worldtool run data get storage worldtool:storage Temp.ShapeSettings.Diameter
scoreboard players operation #radius_temp worldtool /= #2 worldtool

execute if score #degrees_temp worldtool matches 360.. run function worldtool:particles/shape_preview/cylinder_vertical/full/main
