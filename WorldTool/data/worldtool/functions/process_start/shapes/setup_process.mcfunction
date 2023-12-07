# Called by worldtool:process_start/shapes/load
# Sets up the shape processes

execute if data storage worldtool:storage Temp.InitialOrientation run data modify storage worldtool:storage Temp.ProcessOrientation set from storage worldtool:storage Temp.InitialOrientation
execute unless data storage worldtool:storage Temp.InitialOrientation if entity @s[predicate=!worldtool:shape_tool/settings/accepted_orientation/none,predicate=worldtool:shape_tool/settings/orientation/auto] run data modify storage worldtool:storage Temp.ProcessOrientation set from entity @s SelectedItem.tag.WorldTool.ShapeTool.Temp.Orientation
execute unless data storage worldtool:storage Temp.InitialOrientation if entity @s[predicate=!worldtool:shape_tool/settings/accepted_orientation/none,predicate=!worldtool:shape_tool/settings/orientation/auto] run data modify storage worldtool:storage Temp.ProcessOrientation set from entity @s SelectedItem.tag.WorldTool.ShapeSettings.Orientation

data remove storage worldtool:storage Temp.InitialOrientation

scoreboard players set #success worldtool 0

execute if predicate worldtool:shape_tool/shapes/cylinder run function worldtool:process_start/shapes/setup_process/cylinder
execute if predicate worldtool:shape_tool/shapes/cone run function worldtool:process_start/shapes/setup_process/cone
execute if predicate worldtool:shape_tool/shapes/sphere run function worldtool:process_start/shapes/setup_process/sphere
execute if predicate worldtool:shape_tool/shapes/2d_fill run function worldtool:process_start/shapes/setup_process/2d_fill/setup

function #worldtool:hooks/process_start/shapes/processes

execute if score #success worldtool matches 1 run function worldtool:technical/save_load/backup/load

execute store result score #temp worldtool if data storage worldtool:storage AvailableBackupSlots[]
scoreboard players operation #temp worldtool /= #2 worldtool
execute if score #success worldtool matches 1 if score $enableBackups worldtool matches 1 if score $playerdbAvailable worldtool matches 1 if score #amount worldtool > #temp worldtool run function worldtool:ui_shapes/warning/insufficient_backup_slots
