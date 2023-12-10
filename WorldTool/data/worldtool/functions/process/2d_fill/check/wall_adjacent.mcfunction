
# Check if the current block is empty, and has some sort of walls around it

function worldtool:process/2d_fill/check/is_wall
#execute store result score #temp worldtool unless block ~ ~ ~ #worldtool:air
#execute if score #temp worldtool matches 1 if entity @s[tag=wt.process.2d_fill.special_mode] if block ~ ~ ~ minecraft:structure_block{author:"worldtool:2d_fill"} run scoreboard players set #temp worldtool 0

scoreboard players set #temp2 worldtool 0
execute if entity @s[tag=wt.process.2d_fill.heading.-z]

execute if score #temp worldtool matches 1 run scoreboard players set #temp worldtool -1

execute if score #temp worldtool matches 0 positioned ^ ^ ^-1 run function worldtool:process/2d_fill/check/is_wall
execute if score #temp worldtool matches 0 positioned ^1 ^ ^-1 run function worldtool:process/2d_fill/check/is_wall
execute if score #temp worldtool matches 0 positioned ^1 ^ ^ run function worldtool:process/2d_fill/check/is_wall
execute if score #temp worldtool matches 0 positioned ^1 ^ ^1 run function worldtool:process/2d_fill/check/is_wall
execute if score #temp worldtool matches 0 positioned ^ ^ ^1 run function worldtool:process/2d_fill/check/is_wall
execute if score #temp worldtool matches 0 positioned ^-1 ^ ^1 run function worldtool:process/2d_fill/check/is_wall
execute if score #temp worldtool matches 0 positioned ^-1 ^ ^ run function worldtool:process/2d_fill/check/is_wall
execute if score #temp worldtool matches 0 positioned ^-1 ^ ^-1 run function worldtool:process/2d_fill/check/is_wall

execute if score #temp worldtool matches 1 run data modify storage worldtool:storage Temp.Directions append value 10
