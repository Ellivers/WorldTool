scoreboard players operation #ID_temp worldtool = @s wt_ID
execute if entity @s[tag=placing_filtered] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s add filtered
execute if entity @s[tag=placing_filtered_reversed] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s add filtered_reversed
tag @s remove placing_filtered
tag @s remove placing_filtered_reversed
function worldtool:ui_general/menus/clone/select