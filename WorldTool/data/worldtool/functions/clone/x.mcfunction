scoreboard players add $drawingposX worldtool 1
execute at @s run tp @s ~1 ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp @s ~1 ~ ~
function worldtool:clone/clone