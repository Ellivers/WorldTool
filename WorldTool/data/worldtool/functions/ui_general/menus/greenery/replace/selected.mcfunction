scoreboard players operation #ID_temp worldtool = @s wt_ID
execute if entity @s[tag=wt_placing_replace_greenery] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s add replacefill
execute if entity @s[tag=wt_placing_replace_greenery_reversed] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s add replacefill_reversed
tag @s remove wt_placing_replace_greenery
tag @s remove wt_placing_replace_greenery_reversed
function worldtool:ui_general/menus/greenery/select