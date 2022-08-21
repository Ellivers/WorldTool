# Called by worldtool:use_tool/update_block/scheduled

tag @s remove wt.update_block.scheduled
kill @e[type=minecraft:marker,tag=worldtool,tag=wt.block_location]

execute if entity @s[predicate=worldtool:tools/brush,predicate=worldtool:brush_tool/settings/requires/area] run function worldtool:use_brush/area/load
execute if entity @s[predicate=worldtool:tools/brush,predicate=!worldtool:brush_tool/settings/requires/area] run function worldtool:use_brush/start/load
execute if entity @s[tag=wt.update_block.shape_tool] run function worldtool:use_shapes/block_updated

function #worldtool:addon/use_tool/update_block/finish
