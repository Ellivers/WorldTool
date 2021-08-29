# Scheduled by worldtool:use_tool/update_block/load

execute as @a[tag=wt.update_block.scheduled,limit=1] at @s at @e[type=minecraft:marker,tag=worldtool,tag=wt.block_location,limit=1] run function worldtool:use_tool/update_block/finish
