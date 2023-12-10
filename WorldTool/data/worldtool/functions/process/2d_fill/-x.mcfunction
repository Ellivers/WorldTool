execute unless entity @s[tag=!wt.process.2d_fill.axis.y,tag=!wt.process.2d_fill.axis.z] run scoreboard players remove #processPosX worldtool 1
execute if entity @s[tag=wt.process.2d_fill.axis.x] run scoreboard players remove #processPosZ worldtool 1

scoreboard players set #processFacing worldtool 180

tp ^-1 ^ ^
execute positioned ^-1 ^ ^ run function worldtool:process/2d_fill/main
