# Called recursively and by worldtool:ui/warning/insufficient_backup_slots
# Saves the currently selected processes to a temporary place

data modify storage rx.playerdb:io player.data.WorldTool.SavedProcesses append from storage worldtool:storage Processes[0]
data remove storage worldtool:storage Processes[0]

execute store result score #ID_temp worldtool run data get storage worldtool:storage Processes[0].Owner
execute if data storage worldtool:storage Processes[0] if score #ID_temp worldtool = @s wt.ID run function worldtool:technical/save_load/backup/save_processes
