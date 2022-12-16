# Called by worldtool:process_start/common/block_from_data/finish
# Called as the user when the process block has been set

execute if entity @s[predicate=worldtool:tools/brush,predicate=worldtool:brush_tool/settings/requires/area] run function worldtool:process_start/brush/area/load
execute if entity @s[predicate=worldtool:tools/brush,predicate=!worldtool:brush_tool/settings/requires/area] run function worldtool:process_start/brush/start/load

function #worldtool:hooks/process_start/block_from_data/finish.user
