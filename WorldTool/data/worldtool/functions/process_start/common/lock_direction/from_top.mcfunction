# Called by various process setup functions
# Makes sure the process starts at the top of the area

execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Positions.1[1]
execute store result score #pos2yt worldtool run data get storage worldtool:storage Processes[0].Positions.2[1]

scoreboard players set #temp worldtool -2147483648
scoreboard players operation #temp worldtool > #pos1yt worldtool
scoreboard players operation #temp worldtool > #pos2yt worldtool

execute store result storage worldtool:storage Processes[0].Positions.1[1] double 1 run scoreboard players get #temp worldtool

scoreboard players set #temp worldtool 2147483647
scoreboard players operation #temp worldtool < #pos1yt worldtool
scoreboard players operation #temp worldtool < #pos2yt worldtool

execute store result storage worldtool:storage Processes[0].Positions.2[1] double 1 run scoreboard players get #temp worldtool
