# Scheduled by worldtool:process_start/start
# Starts/continues a process

execute if score $progressBar worldtool matches 1 run function worldtool:process/update_progress_bar

execute as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 at @s run function worldtool:process/load.tags
