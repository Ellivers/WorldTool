execute if block ~ ~ ~ #worldtool:water as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~ 1 ~ water
execute unless block ~ ~ ~ #worldtool:water as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~ 1 ~ air
tag @s remove rnd_replacingfill1
function worldtool:ui/random/select