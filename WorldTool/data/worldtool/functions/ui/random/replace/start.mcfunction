#execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~ 254 ~ minecraft:stone
execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run clone ~ ~ ~ ~ ~ ~ ~ 1 ~ replace move
tag @s remove rnd_replacingfill1
function worldtool:ui/random/select