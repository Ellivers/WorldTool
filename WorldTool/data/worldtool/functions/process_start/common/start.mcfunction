# Called by worldtool:process_start/common/load
# Starts the process

scoreboard players operation #ID_temp worldtool = @s wt.ID

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]

execute unless data storage worldtool:storage Temp.Process{FromCommand:1b} run function worldtool:process_start/common/get_player_data
execute if data storage worldtool:storage Temp.Process{Id:"worldtool:clone"} run function worldtool:ui_general/clone/summon_reciever

function #worldtool:addon/process_start/common_start

function worldtool:process_start/common/start.input

function worldtool:process_start/start
execute unless data storage worldtool:storage Temp.Process{FromCommand:1b} run function worldtool:ui/reopen_menu/after_starting
