kill @e[type=minecraft:area_effect_cloud,tag=check_block]
tag @s add hollow
tag @s remove in_menu
tag @s remove hollowing
setblock 0 1 13 air
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] at @s[distance=..200] run function worldtool:load_fill