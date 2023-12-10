
execute store result score #temp worldtool unless block ~ ~ ~ #worldtool:air
execute if score #temp worldtool matches 1 if entity @s[tag=wt.process.2d_fill.special_mode] if block ~ ~ ~ minecraft:structure_block{author:"worldtool:2d_fill"} run scoreboard players set #temp worldtool 0
