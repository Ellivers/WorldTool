# Called by worldtool:process_start/shapes/load and worldtool:technical/queue/done

execute if entity @s[tag=wt.menu.queue] run function worldtool:ui_shapes/menu

function worldtool:process_start/common/block_from_data/from_process
