execute if entity @s[tag=placing_replace_foliage] as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add replacefill
execute if entity @s[tag=placing_replace_foliage_reversed] as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add replacefill_reversed
tag @s remove placing_replace_foliage
tag @s remove placing_replace_foliage_reversed
function worldtool:ui/foliage/select