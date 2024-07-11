# Called by worldtool:process/load.tags
# Loads the command block chain list process

scoreboard players operation #processState_temp worldtool = #processState worldtool
execute if score #processState_temp worldtool matches 0 run function worldtool:process/command_list/search/main
execute if score #processState_temp worldtool matches 1 run function worldtool:process/command_list/follow/main
