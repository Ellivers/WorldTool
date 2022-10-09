# Called by worldtool:ui_shapes/start

scoreboard players set #shapeStartSuccess worldtool 0
scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool run scoreboard players set #shapeStartSuccess worldtool 1
execute if score #shapeStartSuccess worldtool matches 0 run function worldtool:ui/error/shape_position_missing

execute if score #shapeStartSuccess worldtool matches 1 run function worldtool:use_shapes/setup_process
execute store result score #temp worldtool if data storage worldtool:storage AvailableBackupSlots[]
scoreboard players operation #temp worldtool /= #2 worldtool
execute if score #shapeStartSuccess worldtool matches 1 if score #success worldtool matches 1 if score $enableBackups worldtool matches 1 if score $playerdbAvailable worldtool matches 1 if score #amount worldtool > #temp worldtool run function worldtool:ui_shapes/warning/insufficient_backup_slots

execute if score #shapeStartSuccess worldtool matches 1 if score #success worldtool matches 1 run function worldtool:use_shapes/check_process

scoreboard players set #temp worldtool 0
execute if score $enableBackups worldtool matches 1 if score $playerdbAvailable worldtool matches 1 run scoreboard players set #temp worldtool 1
execute if score #success worldtool matches 1 if score #temp worldtool matches 1 run function worldtool:process_start/start
execute if score #success worldtool matches 1 if score #temp worldtool matches 0 run function worldtool:use_shapes/start
