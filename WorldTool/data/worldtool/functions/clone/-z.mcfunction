scoreboard players operation $pos2y worldtool = $pos1y worldtool
scoreboard players operation $pos1y worldtool = $drawingposY worldtool
scoreboard players operation $pos2x worldtool = $pos1x worldtool
scoreboard players operation $pos1x worldtool = $drawingposX worldtool

scoreboard players remove $drawingposZ worldtool 1
execute at @s run tp @s ~ ~ ~-1
execute as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~ ~ ~-1
function worldtool:clone/clone