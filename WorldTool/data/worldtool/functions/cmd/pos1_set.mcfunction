execute as @e[type=minecraft:area_effect_cloud,tag=cmdpos1] at @s run function worldtool:ray/del_pos
kill @s
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["cmdpos1"]}
execute if score $forceLoadCmdPositions worldtool matches 1.. store success score @e[type=minecraft:area_effect_cloud,tag=cmdpos1,sort=nearest,limit=1] worldtool run forceload add ~ ~