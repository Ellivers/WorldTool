# Called by worldtool:process/load.tags

function worldtool:process/shapes/sphere/rotate

execute unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/shapes/complete
