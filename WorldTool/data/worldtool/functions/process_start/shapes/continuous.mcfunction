# Called by worldtool:use_tool/click/ray_hit/load
# Places a shape, but like a brush

function worldtool:ui_shapes/summon_position

execute if score $processRunning worldtool matches 1.. run tellraw @s {"nbt":"Translation.\"error.process_running\"","storage": "worldtool:storage","color": "red"}

execute unless score $processRunning worldtool matches 1.. run function worldtool:process_start/shapes/setup_process
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool run kill @s

# If backups are available, run the backup process first and then let the shape block set up automatically after it's finished
scoreboard players set #shapeLoadTemp worldtool 0
execute if score $enableBackups worldtool matches 1 if score $playerdbAvailable worldtool matches 1 run scoreboard players set #shapeLoadTemp worldtool 1
execute unless score $processRunning worldtool matches 1.. if score #success worldtool matches 1 if score #shapeLoadTemp worldtool matches 1 run function worldtool:process_start/start
execute unless score $processRunning worldtool matches 1.. if score #success worldtool matches 1 if score #shapeLoadTemp worldtool matches 0 run function worldtool:process_start/shapes/start
