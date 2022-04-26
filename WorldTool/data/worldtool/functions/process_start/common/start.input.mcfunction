# Called by worldtool:process_start/common/start
# Gives the process the selected blocks

summon minecraft:marker ~ ~ ~ {Tags:["worldtool","wt.fetch_blocks"],UUID:[I;-734294480,1372343712,-1853202267,1471047535]}

execute as d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:process_start/common/start.input.entity
