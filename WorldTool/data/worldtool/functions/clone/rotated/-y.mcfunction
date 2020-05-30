scoreboard players operation $pos2x worldtool = $pos1x worldtool
scoreboard players operation $pos1x worldtool = $drawingposX worldtool

scoreboard players remove $drawingposY worldtool 1
execute at @s run tp @s ~ ~-1 ~
execute unless score @s rotY matches 0 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~ ~-1 ~

execute if score @s rotZ matches 90 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~-1 ~ ~
execute if score @s rotZ matches 180 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~ ~1 ~
execute if score @s rotZ matches -90 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~1 ~ ~

execute if score @s rotX matches 90 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~ ~ ~-1
execute if score @s rotX matches 180 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~ ~1 ~
execute if score @s rotX matches -90 as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~ ~ ~1

execute if entity @s[tag=mirrorY] as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~ ~1 ~
execute unless entity @s[tag=!mirrorX,tag=!mirrorZ] as @e[type=minecraft:area_effect_cloud,tag=clonepos] at @s run tp @s ~ ~-1 ~

function worldtool:clone/rotated