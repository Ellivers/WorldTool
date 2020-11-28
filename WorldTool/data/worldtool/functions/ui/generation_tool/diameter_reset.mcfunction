scoreboard players set @s wt_diameter 3

scoreboard players operation #ID_temp worldtool = @s wt_ID
execute if entity @s[tag=wt_outline_selection] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker] if score @s wt_ID = #ID_temp worldtool run tag @s add wt_be_seeeelected
execute if entity @s[tag=wt_outline_selection] at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,tag=wt_be_seeeelected] align xyz positioned ~.5 ~.5 ~.5 run function worldtool:particles/load_shape_preview
execute if entity @s[tag=wt_outline_selection] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker] if score @s wt_ID = #ID_temp worldtool run tag @s remove wt_be_seeeelected

function worldtool:ui/generation_tool/select