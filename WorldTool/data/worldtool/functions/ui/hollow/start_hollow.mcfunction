tag @s remove hollowing
tag @s remove in_menu
execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run clone ~ ~ ~ ~ ~ ~ 0 1 13 replace move
execute if entity @s[tag=wt_inner] as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run clone ~ 1 ~ ~ 1 ~ 2 1 13
execute if entity @s[tag=wt_inner] as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run clone ~1 1 ~ ~1 1 ~ ~ 1 ~ 
execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID run kill @s
tag @s remove wt_inner

execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add hollow
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s[distance=..200] wt_ID = @p wt_ID at @s run function worldtool:load_fill