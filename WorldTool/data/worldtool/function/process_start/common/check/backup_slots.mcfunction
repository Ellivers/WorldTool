# Called by worldtool:process_start/general/load
# Checks if enough backup slots are available

scoreboard players set #success worldtool 1

execute store result score #temp worldtool if data storage worldtool:storage AvailableBackupSlots[]
scoreboard players operation #temp worldtool /= #2 worldtool
execute if score #success worldtool matches 1 if score $enableBackups worldtool matches 1 if score $playerdbAvailable worldtool matches 1 if score #amount worldtool > #temp worldtool run function worldtool:ui/warning/insufficient_backup_slots
