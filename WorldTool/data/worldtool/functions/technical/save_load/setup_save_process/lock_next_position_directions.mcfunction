# Called recursively and by worldtool:technical/save_load/setup_save_process/setup
# Locks the directions of the next positions data

scoreboard players add #temp2 worldtool 1

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[0].NextPositions[0].1[0]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[0].NextPositions[0].1[2]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].NextPositions[0].1[1]
execute store result score #pos2yt worldtool run data get storage worldtool:storage Processes[0].NextPositions[0].2[1]
execute store result score #pos2xt worldtool run data get storage worldtool:storage Processes[0].NextPositions[0].2[0]
execute store result score #pos2zt worldtool run data get storage worldtool:storage Processes[0].NextPositions[0].2[2]

scoreboard players set #temp worldtool 2147483647
scoreboard players operation #temp worldtool < #pos1xt worldtool
scoreboard players operation #temp worldtool < #pos2xt worldtool

execute store result storage worldtool:storage Processes[0].NextPositions[0].1[0] double 1 run scoreboard players get #temp worldtool

scoreboard players set #temp worldtool -2147483648
scoreboard players operation #temp worldtool > #pos1xt worldtool
scoreboard players operation #temp worldtool > #pos2xt worldtool

execute store result storage worldtool:storage Processes[0].NextPositions[0].2[0] double 1 run scoreboard players get #temp worldtool

scoreboard players set #temp worldtool 2147483647
scoreboard players operation #temp worldtool < #pos1yt worldtool
scoreboard players operation #temp worldtool < #pos2yt worldtool

execute store result storage worldtool:storage Processes[0].NextPositions[0].1[1] double 1 run scoreboard players get #temp worldtool

scoreboard players set #temp worldtool -2147483648
scoreboard players operation #temp worldtool > #pos1yt worldtool
scoreboard players operation #temp worldtool > #pos2yt worldtool

execute store result storage worldtool:storage Processes[0].NextPositions[0].2[1] double 1 run scoreboard players get #temp worldtool

scoreboard players set #temp worldtool 2147483647
scoreboard players operation #temp worldtool < #pos1zt worldtool
scoreboard players operation #temp worldtool < #pos2zt worldtool

execute store result storage worldtool:storage Processes[0].NextPositions[0].1[2] double 1 run scoreboard players get #temp worldtool

scoreboard players set #temp worldtool -2147483648
scoreboard players operation #temp worldtool > #pos1zt worldtool
scoreboard players operation #temp worldtool > #pos2zt worldtool

execute store result storage worldtool:storage Processes[0].NextPositions[0].2[2] double 1 run scoreboard players get #temp worldtool

execute unless score #temp2 worldtool >= #temp worldtool run function worldtool:technical/save_load/setup_save_process/lock_next_position_directions
