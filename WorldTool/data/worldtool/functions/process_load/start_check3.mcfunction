# Checks if there is another process running
tag @s remove wt_waiting_in_menu
execute if score $functionRunning worldtool matches 1 run function worldtool:wait/start_waiting
execute unless score $functionRunning worldtool matches 1 run function worldtool:process_load/global_start
