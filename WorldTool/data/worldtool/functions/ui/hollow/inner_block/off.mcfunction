execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s remove inner_block
execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run clone ~1 1 ~ ~1 1 ~ ~ 1 ~
tag @s remove wt_inner
function worldtool:ui/hollow/select