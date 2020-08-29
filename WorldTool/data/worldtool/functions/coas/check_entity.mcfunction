scoreboard players reset @s wt_drop_coas
execute as @e[type=minecraft:item,nbt={Age:0s,Item:{tag:{worldTool:1b}}},sort=nearest,limit=1] at @s run function worldtool:coas/dropped_coas