execute unless entity @s[tag=!wt.process.2d_fill.axis.x,tag=!wt.process.2d_fill.axis.z] run scoreboard players remove #processPosY worldtool 1
execute if entity @s[tag=wt.process.2d_fill.axis.y] run scoreboard players remove #processPosZ worldtool 1

scoreboard players set #processFacing worldtool 270

tp ^ ^ ^-1
execute positioned ^ ^ ^-1 run function worldtool:process/2d_fill/main
