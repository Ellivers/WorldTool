# Called by worldtool:pick_block/other/load
# Puts an arrow in the targetted block to attempt to get an id from it

scoreboard players operation @s wt.ID = #ID_temp worldtool
tag @s remove wt.temp

setblock ~ ~-1 ~ minecraft:glass
clone 0 245 13 0 245 13 ~ ~ ~ replace move

execute align xyz run summon minecraft:arrow ~.5 ~1 ~.5 {Motion:[0d,-1d,0d],Tags:["worldtool","wt.pick_block"]}

schedule function worldtool:pick_block/other/attempt1_scheduled 2t
