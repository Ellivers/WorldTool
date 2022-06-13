# Called by worldtool:process_end/load

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source_corner,tag=wt.not_used_yet] if score @s wt.ID = #ID_temp worldtool run tag @s remove wt.not_used_yet

execute as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:ui_general/randomize/load
