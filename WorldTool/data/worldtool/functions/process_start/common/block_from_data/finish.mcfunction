# Called by worldtool:process_start/common/block_from_data/scheduled

kill @e[type=minecraft:marker,tag=worldtool,tag=wt.block_location]

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]
execute if entity @s[predicate=worldtool:tools/brush,predicate=worldtool:brush_tool/settings/requires/area] run function worldtool:process_start/brush/area/load
execute if entity @s[predicate=worldtool:tools/brush,predicate=!worldtool:brush_tool/settings/requires/area] run function worldtool:process_start/brush/start/load
execute if data storage worldtool:storage Temp.Process{StartType:"worldtool:shape"} run function worldtool:process_start/shapes/block_updated
execute if data storage worldtool:storage Temp.Process{StartType:"worldtool:common"} run function worldtool:process_start/start

function #worldtool:hooks/process_start/block_from_data/finish
