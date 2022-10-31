# Called by worldtool:process/load.tags
# Loads veriables to be used in the shatter process

execute store result score #temp2 worldtool run gamerule doTileDrops

function worldtool:process/shatter/main
