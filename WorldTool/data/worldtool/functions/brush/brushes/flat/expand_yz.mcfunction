#Move both markers out 1 block
scoreboard players add $brush_out worldtool 1
tp @s ~ ~1 ~1
execute as @e[type=minecraft:area_effect_cloud,tag=brushpos2] at @a if score @s wt_ID = @p wt_ID at @s run tp ~ ~-1 ~-1
function worldtool:brush/brushes/flat/expand