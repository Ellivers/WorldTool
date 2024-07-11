# Called recursively
# Gets the backup slots to use for the save process

scoreboard players add #temp worldtool 1

data modify storage worldtool:storage Temp.BackupSlots append from storage worldtool:storage AvailableBackupSlots[0]
data remove storage worldtool:storage AvailableBackupSlots[0]

execute unless score #temp worldtool >= #amount worldtool run function worldtool:technical/common/save_load/get_slots
