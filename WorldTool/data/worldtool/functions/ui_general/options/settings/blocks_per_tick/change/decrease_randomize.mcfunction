# Called by worldtool:ui_general/options/settings/blocks_per_tick/menu
# Decreases a blocks per tick value

execute store result score #temp worldtool run data get storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:randomize"}].Value
function worldtool:ui_general/options/settings/blocks_per_tick/change/decrease
execute store result storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:randomize"}].Value int 1 run scoreboard players get #temp worldtool

function worldtool:ui_general/options/settings/blocks_per_tick/menu
