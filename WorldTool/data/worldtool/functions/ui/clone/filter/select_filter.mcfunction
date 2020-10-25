#execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run clone ~ ~ ~ ~ ~ ~ ~ 1 ~ replace move
execute if entity @s[tag=placing_filtered] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add filtered
execute if entity @s[tag=placing_filtered_reversed] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add filtered_reversed
tag @s remove placing_filtered
tag @s remove placing_filtered_reversed
function worldtool:ui/clone/select_clone