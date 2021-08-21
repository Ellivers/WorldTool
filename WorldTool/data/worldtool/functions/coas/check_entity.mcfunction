scoreboard players reset @s wt_drop_coas
execute store success score #sneakingTemp worldtool if predicate worldtool:sneaking
execute as @e[type=minecraft:item,nbt={OnGround:0b,Item:{tag:{worldTool:1b}}},sort=nearest,limit=1] at @s run function worldtool:coas/dropped_coas
