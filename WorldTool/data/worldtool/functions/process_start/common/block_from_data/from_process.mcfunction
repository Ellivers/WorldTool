# Called by worldtool:process_start/common/start and worldtool:process_start/shapes/start
# Sets block data from process block data

scoreboard players set #success worldtool 0

data modify storage worldtool:storage Temp.Blocks set from storage worldtool:storage Processes[-1].Blocks
function worldtool:process_start/common/block_from_data/load
