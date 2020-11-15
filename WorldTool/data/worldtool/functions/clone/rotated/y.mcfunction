scoreboard players operation $pos2z worldtool = $pos1z worldtool
scoreboard players operation $pos1z worldtool = $drawingposZ worldtool
scoreboard players operation $pos2x worldtool = $pos1x worldtool
scoreboard players operation $pos1x worldtool = $drawingposX worldtool

scoreboard players add $drawingposY worldtool 1
execute at @s run tp @s ~ ~1 ~
execute unless score @s wt_rotY matches 0 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp ~ ~1 ~

execute if score @s wt_rotZ matches 90 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp ~1 ~ ~
execute if score @s wt_rotZ matches 180 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp ~ ~-1 ~
execute if score @s wt_rotZ matches -90 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp ~-1 ~ ~

execute if score @s wt_rotX matches 90 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp ~ ~ ~1
execute if score @s wt_rotX matches 180 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp ~ ~-1 ~
execute if score @s wt_rotX matches -90 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp ~ ~ ~-1

execute if entity @s[tag=mirrorY] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp @s ~ ~-1 ~
execute unless entity @s[tag=!mirrorX,tag=!mirrorZ] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp @s ~ ~1 ~

function worldtool:clone/rotated