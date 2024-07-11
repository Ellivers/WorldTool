# Called by worldtool:ui/wait
# Cancels the running process and goes back to the main randomize menu

tag @s remove wt.menu.randomize.set_source.wait

function worldtool:technical/common/is_my_process_running

execute if score #success worldtool matches 1 run tag @s add wt.no_message
execute if score #success worldtool matches 1 run function worldtool:ui_general/options/kill_process

function worldtool:ui_general/randomize/menu
