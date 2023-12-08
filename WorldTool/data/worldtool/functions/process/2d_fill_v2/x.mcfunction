execute unless entity @s[tag=!wt.process.2d_fill.axis.y,tag=!wt.process.2d_fill.axis.z] run scoreboard players add #processPosX worldtool 1
execute if entity @s[tag=wt.process.2d_fill.axis.x] run scoreboard players add #processPosZ worldtool 1

execute positioned ^1 ^ ^ if block ~ ~ ~ minecraft:structure_block{author:"worldtool:2d_fill"} run function worldtool:process/2d_fill/main
execute positioned ^1 ^ ^ if block ~ ~ ~ #worldtool:air run function worldtool:process/2d_fill/main
