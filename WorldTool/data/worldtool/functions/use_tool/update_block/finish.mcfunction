# Called by worldtool:use_tool/update_block/scheduled

tag @s remove wt.update_block.scheduled
kill @e[type=minecraft:marker,tag=worldtool,tag=wt.block_location]

execute if predicate worldtool:tools/brush run function worldtool:use_brush/area/load

function #worldtool:addon/use_tool/update_block/finish
