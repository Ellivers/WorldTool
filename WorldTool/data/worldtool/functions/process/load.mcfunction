# Called by worldtool:technical/tick
# Starts/continues a process

execute if score $progressBar worldtool matches 1 run function worldtool:process/update_progress_bar

execute unless entity 35c1ab68-9d4c-11eb-a8b3-0242ac130003 unless score #processEntityNotFound worldtool matches 1 run function worldtool:process/process_entity_not_found

execute as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 at @s run function worldtool:process/load.tags
