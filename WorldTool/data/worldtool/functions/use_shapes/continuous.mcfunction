# Called by worldtool:use_tool/ray_hit/load
# Places a shape, but like a brush

function worldtool:ui_shapes/summon_position

execute if score $processRunning worldtool matches 1.. run tellraw @s {"nbt":"Translation.\"error.process_running\"","storage": "worldtool:storage","color": "red"}

execute unless score $processRunning worldtool matches 1.. run function worldtool:use_shapes/setup_process
execute unless score $processRunning worldtool matches 1.. if score #success worldtool matches 1 run function worldtool:use_shapes/start

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool run kill @s
