scoreboard players operation $pos2y worldtool = $pos1y worldtool
scoreboard players operation $pos1y worldtool = $drawingposY worldtool
scoreboard players operation $pos2x worldtool = $pos1x worldtool
scoreboard players operation $pos1x worldtool = $drawingposX worldtool

scoreboard players remove $drawingposZ worldtool 1
execute at @s run tp @s ~ ~ ~-1
execute if score @s rotY matches 90 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~1 ~ ~
execute if score @s rotY matches 180 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~ ~ ~1
execute if score @s rotY matches -90 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~-1 ~ ~

execute unless score @s rotZ matches 0 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~ ~ ~-1

execute if score @s rotX matches 90 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~ ~1 ~
execute if score @s rotX matches 180 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~ ~ ~1
execute if score @s rotX matches -90 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~ ~-1 ~
function worldtool:clone/rotated