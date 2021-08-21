scoreboard players operation #ID_temp worldtool = @s wt_ID
execute if entity @s[tag=placing_replace_foliage] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s add replacefill
execute if entity @s[tag=placing_replace_foliage_reversed] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s add replacefill_reversed
tag @s remove placing_replace_foliage
tag @s remove placing_replace_foliage_reversed
function worldtool:ui/foliage/select