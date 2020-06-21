clone ~ 1 ~ ~ 1 ~ 2 1 13
clone ~1 1 ~ ~1 1 ~ ~ 1 ~
clone ~ ~ ~ ~ ~ ~ 0 1 13 replace move
execute at @a if score @s wt_ID = @p wt_ID as @p run tag @s remove replacing_fill2
execute at @a if score @s wt_ID = @p wt_ID as @p run tag @s remove in_menu
execute at @a if score @s wt_ID = @p wt_ID as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s[distance=..200] wt_ID = @p wt_ID at @s run function worldtool:load_function/load_fill
kill @s