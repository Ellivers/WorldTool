scoreboard players remove $drawingposX worldtool 1
execute at @s run tp @s ~-1 ~ ~
execute if score @s rotY matches 90 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~ ~ ~-1
execute if score @s rotY matches 180 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~1 ~ ~
execute if score @s rotY matches -90 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~ ~ ~1

execute if score @s rotZ matches 90 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~ ~1 ~
execute if score @s rotZ matches 180 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~1 ~ ~
execute if score @s rotZ matches -90 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~ ~-1 ~

execute unless score @s rotX matches 0 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~-1 ~ ~
function worldtool:clone/rotated