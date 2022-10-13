# Called by various process setup functions

execute if score #success worldtool matches 1 if score $enableBackups worldtool matches 1 if score $playerdbAvailable worldtool matches 1 run function worldtool:technical/save_load/backup/setup_process
