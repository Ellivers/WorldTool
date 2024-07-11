# Called recursively and by worldtool:technical/save_load/setup_save_process/setup
# Gets the amount of slots necessary for saving the specified area(s)

scoreboard players add #temp2 worldtool 1

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[0].Input.NextPositions.1[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Input.NextPositions.1[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[0].Input.NextPositions.1[2]
execute store result score #pos2xt worldtool run data get storage worldtool:storage Processes[0].Input.NextPositions.2[0]
execute store result score #pos2yt worldtool run data get storage worldtool:storage Processes[0].Input.NextPositions.2[1]
execute store result score #pos2zt worldtool run data get storage worldtool:storage Processes[0].Input.NextPositions.2[2]

function worldtool:technical/save_load/setup_save_process/get_slot_amount

execute unless score #temp2 worldtool >= #temp worldtool run function worldtool:technical/save_load/setup_save_process/get_slot_amounts
