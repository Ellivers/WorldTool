# Called by various (shape preview) functions
# Gets the middle position of the shape, and sets it to scores

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool run data modify storage worldtool:storage Temp.Pos set from entity @s Pos

execute store result score #temp.centerX worldtool run data get storage worldtool:storage Temp.Pos[0]
execute store result score #temp.centerY worldtool run data get storage worldtool:storage Temp.Pos[1]
execute store result score #temp.centerZ worldtool run data get storage worldtool:storage Temp.Pos[2]
