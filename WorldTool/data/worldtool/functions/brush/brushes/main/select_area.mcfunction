tag @s remove wt_ticktag
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=setblock_source] if score @s wt_ID = #ID_temp worldtool run kill @s

scoreboard players operation #brush_size_temp wt_brush_size = @s wt_brush_size
scoreboard players operation #brush_size_temp wt_brush_size /= #2 worldtool

scoreboard players set $brush_out worldtool 0
tag @s remove wt_expand_positive
tag @s add wt_expand_negative
function worldtool:brush/brushes/main/expand_selection
scoreboard players set $brush_out worldtool 0
tag @s remove wt_expand_negative
tag @s add wt_expand_positive
function worldtool:brush/brushes/main/expand_selection
tag @s remove wt_expand_positive
