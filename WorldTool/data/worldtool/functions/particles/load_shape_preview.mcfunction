# Summons a formation of entities based on what shape the player has selected

scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_shape_preview] if score @s wt_ID = #ID_temp worldtool run kill @s
execute if predicate worldtool:shapes/circle run function worldtool:particles/circle_preview/place_positions
execute if predicate worldtool:shapes/cylinder run function worldtool:particles/cylinder_preview/place_positions
execute if predicate worldtool:shapes/sphere run function worldtool:particles/sphere_preview/place_positions
