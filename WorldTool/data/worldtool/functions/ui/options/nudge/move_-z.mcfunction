execute if entity @s[tag=!wt_dont_move_pos1] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID at @s run tp @s ~ ~ ~-1
execute if entity @s[tag=!wt_dont_move_pos2] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s wt_ID = @p wt_ID at @s run tp @s ~ ~ ~-1
function worldtool:ui/options/nudge/select