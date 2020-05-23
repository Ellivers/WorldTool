tag @s remove in_menu
tag @s remove measure_filter
execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/measure/start.check_block
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/measure/start.pos1