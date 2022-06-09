# Called by worldtool:process_start/common/load and worldtool:process_start/common/continue1
# Sets up the process data

scoreboard players set #success worldtool 0

execute if entity @s[tag=wt.setup.fill] run function worldtool:ui_general/fill_setup_process
execute if entity @s[tag=wt.setup.replace] run function worldtool:ui_general/replace/setup_process
execute if entity @s[tag=wt.setup.filter_measure] run function worldtool:ui_general/measure/filter_setup_process
execute if entity @s[tag=wt.setup.clone] run function worldtool:ui_general/clone/setup_process
execute if entity @s[tag=wt.setup.randomization_source] run function worldtool:ui_general/randomize/set_source/setup_process
execute if entity @s[tag=wt.setup.randomize] run function worldtool:ui_general/randomize/setup_process

function #worldtool:addon/process_start/setup_process

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute if score #success worldtool matches 1 store result storage worldtool:storage Processes[0].Owner int 1 run scoreboard players get #ID_temp worldtool
execute if score #success worldtool matches 1 as @e[type=minecraft:marker,tag=worldtool] if score @s wt.ID = #ID_temp worldtool run function worldtool:process_start/common/setup_process.entity
execute if score #success worldtool matches 0 run function worldtool:ui/error/no_process_selected
