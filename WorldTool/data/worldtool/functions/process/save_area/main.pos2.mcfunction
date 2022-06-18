# Called by worldtool:process/save_area/main
# Place the second corner

execute unless score #block2Placed worldtool matches 1 store success score #block2Placed worldtool run clone ~ ~ ~ ~ ~ ~ 27449 1 19
setblock ~ ~ ~ minecraft:structure_block{mode:"CORNER"}
data modify block ~ ~ ~ name set from storage worldtool:storage Processes[-1].BackupSlots[0]
