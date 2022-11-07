# Called by a blocks per tick page
# Decreases a blocks per tick value

execute store result score #temp worldtool run data get storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:filter_measure"}].Value
function worldtool:ui/settings/blocks_per_tick/change/decrease
execute store result storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:filter_measure"}].Value int 1 run scoreboard players get #temp worldtool

function worldtool:ui/settings/blocks_per_tick/back_to_page
