# Called by worldtool:pick_block/other/load_brush and worldtool:pick_block/other/load_shapes
# Picks a block

scoreboard players operation #ID_temp worldtool = @s wt.ID

clone ~ ~ ~ ~ ~ ~ 0 245 13

summon minecraft:marker ~ 255 ~ {Tags:["worldtool","wt.pick_block_marker","wt.temp"]}

execute positioned ~ 255 ~ as @e[type=minecraft:marker,tag=worldtool,tag=wt.pick_block_marker,tag=wt.temp,sort=nearest,limit=1] at @s run function worldtool:pick_block/other/attempt1
