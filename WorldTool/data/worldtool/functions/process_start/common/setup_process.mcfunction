# Called by worldtool:process_start/common/load and worldtool:process_start/common/continue/1
# Sets up the process data

scoreboard players set #success worldtool 0

execute if entity @s[tag=wt.setup.fill] run function worldtool:ui_general/fill/setup_process
execute if entity @s[tag=wt.setup.replace] run function worldtool:ui_general/replace/setup_process
execute if entity @s[tag=wt.setup.filter_measure] run function worldtool:ui_general/measure/filter_setup_process
execute if entity @s[tag=wt.setup.clone] run function worldtool:ui_general/clone/setup_process
execute if entity @s[tag=wt.setup.randomization_source] run function worldtool:ui_general/randomize/set_source/setup_process
execute if entity @s[tag=wt.setup.randomize] run function worldtool:ui_general/randomize/setup_process
execute if entity @s[tag=wt.setup.save_area] run function worldtool:technical/save_load/setup_save_process
execute if entity @s[tag=wt.setup.load_area] run function worldtool:technical/save_load/setup_load_process
execute if entity @s[tag=wt.setup.checkered] run function worldtool:ui_general/checkered/setup_process

function #worldtool:addon/process_start/setup_process

execute if score #success worldtool matches 1 run data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[0]
execute if score #success worldtool matches 1 if score $enableBackups worldtool matches 1 if score $playerdbAvailable worldtool matches 1 unless data storage worldtool:storage Temp.Process{Tags:["wt.read_only"]} run function worldtool:technical/save_load/backup/setup_process

execute if score #success worldtool matches 0 run function worldtool:ui/error/no_process_selected
