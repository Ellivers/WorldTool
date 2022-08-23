# Called by worldtool:ui/settings/blocks_per_tick/menu
# Decreases a blocks per tick value

execute store result score #temp worldtool run data get storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:fill"}].Value
function worldtool:ui/settings/blocks_per_tick/change/decrease
execute store result storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:fill"}].Value int 1 run scoreboard players get #temp worldtool

function worldtool:ui/settings/blocks_per_tick/menu
