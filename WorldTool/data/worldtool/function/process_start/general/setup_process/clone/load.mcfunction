# Called by worldtool:process_start/common/setup_process

execute if entity @s[tag=wt.clone.mode.standard] run function worldtool:process_start/general/setup_process/clone/standard
execute if entity @s[tag=wt.clone.mode.template] run function worldtool:process_start/general/setup_process/clone/template

tag @s remove wt.setup.clone
