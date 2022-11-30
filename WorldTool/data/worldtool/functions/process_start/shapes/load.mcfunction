# Called by worldtool:ui_shapes/start

scoreboard players set #shapeStartSuccess worldtool 0
scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool run scoreboard players set #shapeStartSuccess worldtool 1
execute if score #shapeStartSuccess worldtool matches 0 run function worldtool:ui/error/shape_position_missing

execute if score #shapeStartSuccess worldtool matches 1 run function worldtool:process_start/shapes/setup_process

execute if score #shapeStartSuccess worldtool matches 1 if score #success worldtool matches 1 run function worldtool:process_start/shapes/check_process

# If backups are available, run the backup process first and then let the shape block set up automatically after it's finished
scoreboard players set #shapeLoadTemp worldtool 0
execute if score $enableBackups worldtool matches 1 if score $playerdbAvailable worldtool matches 1 run scoreboard players set #shapeLoadTemp worldtool 1
execute if score #success worldtool matches 1 if score #shapeLoadTemp worldtool matches 1 run function worldtool:process_start/start
execute if score #success worldtool matches 1 if score #shapeLoadTemp worldtool matches 0 run function worldtool:process_start/shapes/start
