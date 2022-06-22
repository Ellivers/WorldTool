# Called by worldtool:process_start/common/load, worldtool:process_start/common/continue/1 and worldtool:process_start/common/continue/2
# Starts the process

scoreboard players operation #ID_temp worldtool = @s wt.ID

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]
execute if data storage worldtool:storage Temp.Process{ID:"worldtool:clone"} run function worldtool:ui_general/clone/summon_reciever

function #worldtool:addon/process_start/common_start

function worldtool:process_start/common/start.input

function worldtool:process_start/start

execute if data storage worldtool:storage Temp.Process{Tags:["wt.dont_reopen_menu"]} run tag @s add wt.dont_reopen_menu
execute unless entity @s[tag=wt.dont_reopen_menu] if data storage worldtool:storage Temp.Process.Owner run function worldtool:ui/reopen_menu/after_starting
tag @s remove wt.dont_reopen_menu
execute if score $progressBar worldtool matches 1 if data storage worldtool:storage Temp.Process.Owner run function worldtool:process_start/common/setup_progress_bar
