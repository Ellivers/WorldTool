scoreboard players remove $drawingposX worldtool 1
execute at @s run tp @s ~-1 ~ ~
execute if score @s wt_rotY matches 90 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp @s ~ ~ ~-1
execute if score @s wt_rotY matches 180 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp @s ~1 ~ ~
execute if score @s wt_rotY matches -90 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp @s ~ ~ ~1

execute if score @s wt_rotZ matches 90 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp @s ~ ~1 ~
execute if score @s wt_rotZ matches 180 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp @s ~1 ~ ~
execute if score @s wt_rotZ matches -90 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp @s ~ ~-1 ~

execute if entity @s[tag=mirrorX] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp @s ~1 ~ ~
execute unless entity @s[tag=!mirrorY,tag=!mirrorZ] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp @s ~-1 ~ ~

execute unless score @s wt_rotX matches 0 as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos] at @s run tp @s ~-1 ~ ~
function worldtool:processes/clone/rotated