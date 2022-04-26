# Called by worldtool:process_start/start
# Sets position variables

# Positions 1 and 2
execute store result score #pos1x worldtool run data get storage worldtool:storage Processes[-1].Positions.1[0]
execute store result score #pos1y worldtool run data get storage worldtool:storage Processes[-1].Positions.1[1]
execute store result score #pos1z worldtool run data get storage worldtool:storage Processes[-1].Positions.1[2]

execute store result score #pos2x worldtool run data get storage worldtool:storage Processes[-1].Positions.2[0]
execute store result score #pos2y worldtool run data get storage worldtool:storage Processes[-1].Positions.2[1]
execute store result score #pos2z worldtool run data get storage worldtool:storage Processes[-1].Positions.2[2]

scoreboard players operation #writerPosX worldtool = #pos1x worldtool
scoreboard players operation #writerPosY worldtool = #pos1y worldtool
scoreboard players operation #writerPosZ worldtool = #pos1z worldtool
