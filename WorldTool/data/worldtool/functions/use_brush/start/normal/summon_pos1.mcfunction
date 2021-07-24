# Called by worldtool:use_brush/start/load
# Summons position 1 for the brush process

summon minecraft:marker ~ ~ ~ {Tags:["worldtool","wt.brush_pos1","wt.temp"]}

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.brush_pos1,tag=wt.temp] run function worldtool:use_brush/start/normal/pos1.position
