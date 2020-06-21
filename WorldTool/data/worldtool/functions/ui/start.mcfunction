clone ~ ~ ~ ~ ~ ~ 0 1 13 replace move
kill @s
execute at @a if score @s wt_ID = @p wt_ID as @p run tag @s remove placing_fill
execute at @a if score @s wt_ID = @p wt_ID as @p run tag @s remove in_menu
execute at @a if score @s wt_ID = @p wt_ID as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s[distance=..200] wt_ID = @p wt_ID at @s run function worldtool:load_function/load_fill