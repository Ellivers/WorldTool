# Called by worldtool:process_start/common/load_process

execute if entity @s[tag=wt.clone.mode.standard] run function worldtool:ui_general/clone/setup_process/standard
execute if entity @s[tag=wt.clone.mode.template] run function worldtool:ui_general/clone/setup_process/template

tag @s remove wt.setup.clone
