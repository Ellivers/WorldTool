execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run clone ~ ~ ~ ~ ~ ~ ~ 1 ~ replace move
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add inner_block
tag @s remove placing_hollow_inner
tag @s add wt_inner
function worldtool:ui/hollow/select