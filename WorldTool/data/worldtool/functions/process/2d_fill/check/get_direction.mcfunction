
data modify storage worldtool:storage Temp.Directions set value []

execute if score #processFacing worldtool matches 0 run function worldtool:process/2d_fill/check/in_direction/-z
execute if score #processFacing worldtool matches 90 run function worldtool:process/2d_fill/check/in_direction/x
execute if score #processFacing worldtool matches 180 run function worldtool:process/2d_fill/check/in_direction/z
execute if score #processFacing worldtool matches 270 run function worldtool:process/2d_fill/check/in_direction/-x
execute if data storage worldtool:storage Temp{Directions:[10]} run data modify storage worldtool:storage Temp.Directions[-1] set value 1
execute if score #processFacing worldtool matches 0 run function worldtool:process/2d_fill/check/in_direction/x
execute if score #processFacing worldtool matches 90 run function worldtool:process/2d_fill/check/in_direction/z
execute if score #processFacing worldtool matches 180 run function worldtool:process/2d_fill/check/in_direction/-x
execute if score #processFacing worldtool matches 270 run function worldtool:process/2d_fill/check/in_direction/-z
execute if data storage worldtool:storage Temp{Directions:[10]} run data modify storage worldtool:storage Temp.Directions[-1] set value 2
execute if score #processFacing worldtool matches 0 run function worldtool:process/2d_fill/check/in_direction/z
execute if score #processFacing worldtool matches 90 run function worldtool:process/2d_fill/check/in_direction/-x
execute if score #processFacing worldtool matches 180 run function worldtool:process/2d_fill/check/in_direction/-z
execute if score #processFacing worldtool matches 270 run function worldtool:process/2d_fill/check/in_direction/x
execute if data storage worldtool:storage Temp{Directions:[10]} run data modify storage worldtool:storage Temp.Directions[-1] set value 3
execute if score #processFacing worldtool matches 0 run function worldtool:process/2d_fill/check/in_direction/-x
execute if score #processFacing worldtool matches 90 run function worldtool:process/2d_fill/check/in_direction/-z
execute if score #processFacing worldtool matches 180 run function worldtool:process/2d_fill/check/in_direction/x
execute if score #processFacing worldtool matches 270 run function worldtool:process/2d_fill/check/in_direction/z
execute if data storage worldtool:storage Temp{Directions:[10]} run data modify storage worldtool:storage Temp.Directions[-1] set value 4

scoreboard players set #temp2 worldtool 0
execute store result score #temp2 worldtool run data get storage worldtool:storage Temp.Directions[0]
execute if score #temp2 worldtool = #reverseDirection worldtool if data storage worldtool:storage Temp.Directions[1] store result score #temp2 worldtool run data get storage worldtool:storage Temp.Directions[1]
#tellraw @a {"nbt":"Temp.Directions","storage": "worldtool:storage"}

execute if entity @s[tag=wt.process.2d_fill.special_mode] if block ^-1 ^ ^ #worldtool:air run scoreboard players set #temp2 worldtool 4
execute if entity @s[tag=wt.process.2d_fill.special_mode] if block ^ ^ ^1 #worldtool:air run scoreboard players set #temp2 worldtool 3
execute if entity @s[tag=wt.process.2d_fill.special_mode] if block ^1 ^ ^ #worldtool:air run scoreboard players set #temp2 worldtool 2
execute if entity @s[tag=wt.process.2d_fill.special_mode] if block ^ ^ ^-1 #worldtool:air run scoreboard players set #temp2 worldtool 1

scoreboard players set #temp worldtool 1
execute if score #temp2 worldtool matches 0 if score #processFacing worldtool matches 0 positioned ^ ^ ^-1 run function worldtool:process/2d_fill/check/is_wall
execute if score #temp2 worldtool matches 0 if score #processFacing worldtool matches 90 positioned ^1 ^ ^ run function worldtool:process/2d_fill/check/is_wall
execute if score #temp2 worldtool matches 0 if score #processFacing worldtool matches 180 positioned ^ ^ ^1 run function worldtool:process/2d_fill/check/is_wall
execute if score #temp2 worldtool matches 0 if score #processFacing worldtool matches 270 positioned ^-1 ^ ^ run function worldtool:process/2d_fill/check/is_wall
execute if score #temp2 worldtool matches 0 if score #temp worldtool matches 0 run scoreboard players set #temp2 worldtool 1
