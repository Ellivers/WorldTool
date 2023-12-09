
scoreboard players set #temp2 worldtool 0
execute positioned ^ ^ ^-1 run function worldtool:process/2d_fill/check/wall_adjacent
execute if score #temp2 worldtool matches 10 run scoreboard players set #temp2 worldtool 1
execute if score #temp2 worldtool = #prevDirection worldtool run scoreboard players set #temp2 worldtool 0
execute if score #temp2 worldtool matches 0 positioned ^1 ^ ^ run function worldtool:process/2d_fill/check/wall_adjacent
execute if score #temp2 worldtool matches 10 run scoreboard players set #temp2 worldtool 2
execute if score #temp2 worldtool = #prevDirection worldtool run scoreboard players set #temp2 worldtool 0
execute if score #temp2 worldtool matches 0 positioned ^ ^ ^1 run function worldtool:process/2d_fill/check/wall_adjacent
execute if score #temp2 worldtool matches 10 run scoreboard players set #temp2 worldtool 3
execute if score #temp2 worldtool = #prevDirection worldtool run scoreboard players set #temp2 worldtool 0
execute if score #temp2 worldtool matches 0 positioned ^-1 ^ ^ run function worldtool:process/2d_fill/check/wall_adjacent
execute if score #temp2 worldtool matches 10 run scoreboard players set #temp2 worldtool 4
execute if score #temp2 worldtool = #prevDirection worldtool run scoreboard players set #temp2 worldtool 0

execute if entity @s[tag=wt.process.2d_fill.special_mode] if score #temp2 worldtool matches 0 run scoreboard players set #temp2 worldtool 1
#execute if score #temp2 worldtool matches 0 run scoreboard players set #temp2 worldtool 1

execute if entity @s[tag=wt.process.2d_fill.special_mode] if block ^-1 ^ ^ #worldtool:air run scoreboard players set #temp2 worldtool 4
execute if entity @s[tag=wt.process.2d_fill.special_mode] if block ^ ^ ^1 #worldtool:air run scoreboard players set #temp2 worldtool 3
execute if entity @s[tag=wt.process.2d_fill.special_mode] if block ^1 ^ ^ #worldtool:air run scoreboard players set #temp2 worldtool 2
execute if entity @s[tag=wt.process.2d_fill.special_mode] if block ^ ^ ^-1 #worldtool:air run scoreboard players set #temp2 worldtool 1
