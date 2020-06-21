execute at @a if score @s wt_ID = @p wt_ID run tag @p remove checkered_select
execute at @a if score @s wt_ID = @p wt_ID run tag @p remove in_menu
clone ~ ~ ~ ~ ~ ~ 0 1 13 replace move
execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID run kill @s
execute at @a if score @s wt_ID = @p wt_ID as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s[distance=..200] wt_ID = @p wt_ID run tag @s add checkered
execute at @a if score @s wt_ID = @p wt_ID as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s[distance=..200] wt_ID = @p wt_ID at @s run function worldtool:load_function/load_fill
kill @s