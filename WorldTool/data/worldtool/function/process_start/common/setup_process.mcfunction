# Called by worldtool:process_start/common/setup_process, worldtool:process_start/general/load, and worldtool:process_start/common/continue/1
# Sets up the process data

scoreboard players set #success worldtool 0
scoreboard players set #amount worldtool 0

execute if entity @s[tag=wt.setup.fill] run function worldtool:process_start/general/setup_process/fill
execute if entity @s[tag=wt.setup.replace] run function worldtool:process_start/general/setup_process/replace
execute if entity @s[tag=wt.setup.filter_measure] run function worldtool:process_start/general/setup_process/filter_measure
execute if entity @s[tag=wt.setup.clone] run function worldtool:process_start/general/setup_process/clone/load
execute if entity @s[tag=wt.setup.randomization_source] run function worldtool:process_start/general/setup_process/randomization_source
execute if entity @s[tag=wt.setup.randomize] run function worldtool:process_start/general/setup_process/randomize/process
execute if entity @s[tag=wt.setup.save_area] run function worldtool:technical/save_load/setup_save_process/setup
execute if entity @s[tag=wt.setup.load_area] run function worldtool:technical/save_load/setup_load_process
execute if entity @s[tag=wt.setup.checkered] run function worldtool:process_start/general/setup_process/checkered
execute if entity @s[tag=wt.setup.shell] run function worldtool:process_start/general/setup_process/shell/process
execute if entity @s[tag=wt.setup.outline] run function worldtool:process_start/general/setup_process/outline/process
execute if entity @s[tag=wt.setup.greenery] run function worldtool:process_start/general/setup_process/greenery
execute if entity @s[tag=wt.setup.shatter] run function worldtool:process_start/general/setup_process/shatter
execute if entity @s[tag=wt.setup.repeat] run function worldtool:process_start/general/setup_process/repeat/process
execute if entity @s[tag=wt.setup.smooth] run function worldtool:process_start/general/setup_process/smooth/process
execute if entity @s[tag=wt.setup.command_list] run function worldtool:process_start/general/setup_process/command_list

function #worldtool:hooks/process_start/common/setup_process

execute if score #success worldtool matches 0 run function worldtool:ui/error/no_process_selected

execute if score #success worldtool matches 1 if score $enableBackups worldtool matches 1 if score $playerdbAvailable worldtool matches 1 run function worldtool:process_start/common/check/backup_slots
