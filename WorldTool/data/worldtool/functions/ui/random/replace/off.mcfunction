execute as @e[type=minecraft:area_effect_cloud,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/kill_check_block
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s remove replacefill
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s remove replacefill_reversed
function worldtool:ui/random/select