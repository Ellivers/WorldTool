# Called by worldtool:use_brush/start/load
# Summons position 2 for the brush process

summon minecraft:marker ~ ~ ~ {Tags:["worldtool","wt.brush_pos2","wt.temp"]}

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.brush_pos2,tag=wt.temp] run function worldtool:use_brush/start/normal/pos2.position
