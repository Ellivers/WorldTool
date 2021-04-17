execute store result score $pos1x worldtool run data get entity @s Pos[0]
execute store result score $pos1y worldtool run data get entity @s Pos[1]
execute store result score $pos1z worldtool run data get entity @s Pos[2]
execute unless score $blocksPerTick worldtool matches 2.. run scoreboard players set $blocksPerTick worldtool 4000

execute store result score $pos2x worldtool run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdrnd2,limit=1] Pos[0]
execute store result score $pos2y worldtool run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdrnd2,limit=1] Pos[1]
execute store result score $pos2z worldtool run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdrnd2,limit=1] Pos[2]

scoreboard players operation $drawingposY worldtool = $pos1y worldtool
scoreboard players operation $drawingposZ worldtool = $pos1z worldtool
scoreboard players operation $drawingposX worldtool = $pos1x worldtool

scoreboard players set $blocksplaced worldtool 0
scoreboard players set #blockschecked worldtool 0

kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randompointcmd]
kill 35c1ab68-9d4c-11eb-a8b3-0242ac130003
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["random1","from_cmd","worldtool"], UUID:[I; 901884776, -1655959061, -1464663486, -1408040957]}

execute as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 at @s run function worldtool:cmd/random/1