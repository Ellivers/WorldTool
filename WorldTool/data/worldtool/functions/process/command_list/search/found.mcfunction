# Called by worldtool:process/command_list/search/main
# Commands to run when an impulse or repeating command block is found

data modify storage worldtool:storage Processes[-1].Output.CommandLists append value []
scoreboard players set #processState worldtool 1
function worldtool:process/command_list/follow/main
