# Called by various process setup functions
# Makes sure the process starts from the northwest corner of the area

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[0].Positions.1[0]
execute store result score #pos2xt worldtool run data get storage worldtool:storage Processes[0].Positions.2[0]

scoreboard players set #temp worldtool 2147483647
scoreboard players operation #temp worldtool < #pos1xt worldtool
scoreboard players operation #temp worldtool < #pos2xt worldtool

execute store result storage worldtool:storage Processes[0].Positions.1[0] double 1 run scoreboard players get #temp worldtool

scoreboard players set #temp worldtool -2147483648
scoreboard players operation #temp worldtool > #pos1xt worldtool
scoreboard players operation #temp worldtool > #pos2xt worldtool

execute store result storage worldtool:storage Processes[0].Positions.2[0] double 1 run scoreboard players get #temp worldtool
