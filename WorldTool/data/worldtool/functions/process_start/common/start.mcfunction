# Called by worldtool:process_start/general/load, worldtool:process_start/common/continue/1 and worldtool:process_start/common/continue/2
# Starts the process

scoreboard players operation #ID_temp worldtool = @s wt.ID

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]
function #worldtool:hooks/process_start/common/start

scoreboard players set #success worldtool 1
execute if data storage worldtool:storage Processes[-1].BlockPositions run function worldtool:process_start/common/start.input
execute if data storage worldtool:storage Processes[-1].Blocks run function worldtool:process_start/common/block_from_data/from_process

execute if score #success worldtool matches 1 run function worldtool:process_start/start

execute if data storage worldtool:storage Temp.Process{Tags:["wt.dont_reopen_menu"]} run tag @s add wt.dont_reopen_menu
execute unless entity @s[tag=wt.dont_reopen_menu] if data storage worldtool:storage Temp.Process.Owner run function worldtool:ui/reopen_menu/after_starting
tag @s remove wt.dont_reopen_menu
execute if score $progressBar worldtool matches 1 if data storage worldtool:storage Temp.Process.Owner unless data storage worldtool:storage Temp.Process{Tags:["wt.no_progress_bar"]} run function worldtool:process_start/common/setup_progress_bar
