execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID at @s run tp @s ~ ~1 ~
execute as @e[type=minecraft:area_effect_cloud,tag=pos2] if score @s wt_ID = @p wt_ID at @s run tp @s ~ ~1 ~
function worldtool:ui/options/nudge/select