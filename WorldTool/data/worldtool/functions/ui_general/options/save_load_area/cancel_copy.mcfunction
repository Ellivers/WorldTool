# Called by worldtool:ui/wait
# Cancels the copying process and goes back to the options menu

function worldtool:technical/common/is_my_process_running

execute if score #success worldtool matches 1 run tag @s add wt.no_message
execute if score #success worldtool matches 1 run function worldtool:ui_general/options/kill_process

tag @s remove wt.save_area.copy

function worldtool:ui_general/options/menu
