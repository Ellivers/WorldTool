tag @s remove hollowing
tag @s remove in_menu
execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run clone ~ ~ ~ ~ ~ ~ 0 1 13 replace move
execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID run kill @s

execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add hollow
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s[distance=..200] wt_ID = @p wt_ID at @s run function worldtool:load_fill