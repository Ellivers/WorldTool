# Called by worldtool:process_start/common/load, worldtool:process_start/common/continue1 and worldtool:process_start/common/continue2
# Starts the process

scoreboard players operation #ID_temp worldtool = @s wt.ID

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]

execute if data storage worldtool:storage Temp.Process{Id:"worldtool:clone"} run function worldtool:ui_general/clone/summon_reciever

function #worldtool:addon/process_start/common_start

function worldtool:process_start/common/start.input

function worldtool:process_start/start
execute if data storage worldtool:storage Temp.Process.Owner run function worldtool:ui/reopen_menu/after_starting
