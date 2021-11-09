# Called by worldtool:use_shapes/preview_layout/set_point
# Sets the data

tag @s remove wt.temp
scoreboard players operation @s wt.ID = #ID_temp worldtool

data modify entity @s Tags append from storage worldtool:storage Temp.PointNumber
data modify entity @s Tags append from storage worldtool:storage Temp.PointType
data modify entity @s Tags append from storage worldtool:storage Temp.Orientation

scoreboard players operation #temp worldtool = #temp.centerX worldtool
scoreboard players operation #temp2 worldtool = #temp.centerY worldtool
scoreboard players operation #temp3 worldtool = #temp.centerZ worldtool

scoreboard players operation #temp worldtool *= #10 worldtool
scoreboard players operation #temp2 worldtool *= #10 worldtool
scoreboard players operation #temp3 worldtool *= #10 worldtool

execute store result score #temp4 worldtool run data get storage worldtool:storage Temp.OffsetPos[0] 10
execute store result score #temp5 worldtool run data get storage worldtool:storage Temp.OffsetPos[1] 10
execute store result score #temp6 worldtool run data get storage worldtool:storage Temp.OffsetPos[2] 10

scoreboard players operation #temp worldtool += #temp4 worldtool
scoreboard players operation #temp2 worldtool += #temp5 worldtool
scoreboard players operation #temp3 worldtool += #temp6 worldtool

# Center it
scoreboard players add #temp worldtool 5
scoreboard players add #temp2 worldtool 5
scoreboard players add #temp3 worldtool 5

execute store result entity @s Pos[0] double 0.1 run scoreboard players get #temp worldtool
execute store result entity @s Pos[1] double 0.1 run scoreboard players get #temp2 worldtool
execute store result entity @s Pos[2] double 0.1 run scoreboard players get #temp3 worldtool
