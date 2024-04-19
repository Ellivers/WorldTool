# Called by worldtool:process_start/shapes/load and worldtool:technical/queue/done

execute if entity @s[predicate=!worldtool:shape_tool/settings/continuous_place] run function worldtool:ui_shapes/menu

function worldtool:process_start/common/block_from_data/from_process
