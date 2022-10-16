# Called by various process setup functions

execute if score $enableBackups worldtool matches 1 if score $playerdbAvailable worldtool matches 1 if entity @s[tag=!wt.no_backup] run function worldtool:technical/save_load/backup/setup_processes
tag @s remove wt.no_backup
