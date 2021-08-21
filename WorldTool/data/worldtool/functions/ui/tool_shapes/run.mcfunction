tag @s remove wt_ticktag
scoreboard players operation #ID_temp worldtool = @s wt_ID
kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=schedule_posmarker,limit=1]
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker] if score @s wt_ID = #ID_temp worldtool run tag @s add wt_be_seelected
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_shape_preview] if score @s wt_ID = #ID_temp worldtool run kill @s
execute if predicate worldtool:shapes/circle unless score $functionRunning worldtool matches 1.. at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,tag=wt_be_seelected] run function worldtool:processes/generate_shape/circle/start
execute if predicate worldtool:shapes/cylinder unless score $functionRunning worldtool matches 1.. at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,tag=wt_be_seelected] run function worldtool:processes/generate_shape/cylinder/start
execute if predicate worldtool:shapes/sphere unless score $functionRunning worldtool matches 1.. at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,tag=wt_be_seelected] run function worldtool:processes/generate_shape/sphere/start
execute if predicate worldtool:shapes/cone unless score $functionRunning worldtool matches 1.. at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker,tag=wt_be_seelected] run function worldtool:processes/generate_shape/cone/start
