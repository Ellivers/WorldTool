# Called by worldtool:process_start/start
# Sets position variables

# Positions 1 and 2
data modify storage worldtool:storage Temp.Pos set from entity @s Pos
execute store result score #pos1x worldtool run data get storage worldtool:storage Temp.Pos[0]
execute store result score #pos1y worldtool run data get storage worldtool:storage Temp.Pos[1]
execute store result score #pos1z worldtool run data get storage worldtool:storage Temp.Pos[2]

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run data modify storage worldtool:storage Temp.Pos set from entity @s Pos
execute store result score #pos2x worldtool run data get storage worldtool:storage Temp.Pos[0]
execute store result score #pos2y worldtool run data get storage worldtool:storage Temp.Pos[1]
execute store result score #pos2z worldtool run data get storage worldtool:storage Temp.Pos[2]