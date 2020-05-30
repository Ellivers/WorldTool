execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID run kill @s
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add hollow
tag @s remove in_menu
tag @s remove hollowing
execute unless block ~ ~ ~ minecraft:water run setblock 0 1 13 air
execute if block ~ ~ ~ minecraft:water run setblock 0 1 13 water
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID at @s[distance=..200] run function worldtool:load_fill