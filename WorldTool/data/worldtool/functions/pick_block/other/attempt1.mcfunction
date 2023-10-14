# Called by worldtool:pick_block/other/load
# Puts an arrow in the targetted block to attempt to get an id from it

summon minecraft:marker ~ ~ ~ {Tags:["worldtool","wt.pick_block_marker"]}
scoreboard players operation @e[type=minecraft:marker,tag=worldtool,tag=wt.pick_block_marker,sort=nearest,limit=1] wt.ID = #ID_temp worldtool

setblock ~ ~-1 ~ minecraft:glass
clone 27450 2 19 27450 2 19 ~ ~ ~ replace
clone 27449 2 19 27449 2 19 27450 2 19 replace

execute align xyz run summon minecraft:arrow ~.5 ~1 ~.5 {Motion:[0d,-1d,0d],Tags:["worldtool","wt.pick_block","smithed.strict"]}

schedule function worldtool:pick_block/other/attempt1_scheduled 2t

kill @s
