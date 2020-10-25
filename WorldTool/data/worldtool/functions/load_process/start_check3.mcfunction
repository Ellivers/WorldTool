# Checks if there is another process running
execute if score $functionRunning worldtool matches 1 run function worldtool:wait/start_waiting
execute unless score $functionRunning worldtool matches 1 run function worldtool:load_process/global_start