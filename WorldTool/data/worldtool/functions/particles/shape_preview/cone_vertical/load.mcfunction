# Called by worldtool:particles/shape_preview/load
# Checks if the cone is whole or only partial

data modify storage worldtool:storage Temp.ShapeSettings set from entity @s data.WorldTool.ShapeSettings

particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ 0 .3 0 2 3 force @a[tag=wt.shape_preview_temp]

execute store result score #degrees_temp worldtool run data get storage worldtool:storage Temp.ShapeSettings.Degrees
execute store result score #length_temp worldtool run data get storage worldtool:storage Temp.ShapeSettings.Length
execute store result score #radius_temp worldtool run data get storage worldtool:storage Temp.ShapeSettings.Diameter
scoreboard players operation #radius_temp worldtool /= #2 worldtool

function worldtool:technical/common/temp_entity
scoreboard players operation #offsetY worldtool = #length_temp worldtool
scoreboard players remove #offsetY worldtool 1
execute if entity @s[tag=wt.shape.cone.down] run scoreboard players operation #offsetY worldtool *= #-1 worldtool
execute as d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:technical/common/temp_pos1
scoreboard players operation #pos2xt worldtool = #pos1xt worldtool
scoreboard players operation #pos2yt worldtool = #pos1yt worldtool
scoreboard players operation #pos2yt worldtool += #offsetY worldtool
scoreboard players operation #pos2zt worldtool = #pos1zt worldtool

scoreboard players operation #pos1xt worldtool += #radius_temp worldtool
function worldtool:measure/distance/measure

scoreboard players operation #pos2yt worldtool *= #10 worldtool
scoreboard players add #pos2yt worldtool 5

execute store result entity d43b8e30-51cc-4da0-918a-60a557ae676f Pos[1] double .1 run scoreboard players get #pos2yt worldtool

scoreboard players operation #halfStepDistance worldtool = #scaledDistance worldtool
scoreboard players operation #halfStepDistance worldtool /= #5 worldtool

execute if score #degrees_temp worldtool matches 360.. run function worldtool:particles/shape_preview/cone_vertical/full/main
execute unless score #degrees_temp worldtool matches 360.. run function worldtool:particles/shape_preview/cone_vertical/partial/main

execute at d43b8e30-51cc-4da0-918a-60a557ae676f run particle minecraft:dust 0.671 0.161 0.875 1.5 ~ ~ ~ 0 .3 0 2 3 force @a[tag=wt.shape_preview_temp]
kill d43b8e30-51cc-4da0-918a-60a557ae676f
