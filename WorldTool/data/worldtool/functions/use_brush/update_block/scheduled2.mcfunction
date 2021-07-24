# Called by worldtool:use_brush/update_block/scheduled

tag @s remove wt.brush.scheduled
kill @e[type=minecraft:marker,tag=worldtool,tag=wt.brush_location]

function worldtool:use_brush/area/load
