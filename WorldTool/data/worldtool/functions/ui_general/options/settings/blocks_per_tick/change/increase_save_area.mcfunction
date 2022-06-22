# Called by worldtool:ui_general/options/settings/blocks_per_tick/menu
# Increases a blocks per tick value

execute store result score #temp worldtool run data get storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:save_area"}].Value

scoreboard players add #temp worldtool 10000
execute if score #temp worldtool matches 2147483647 run scoreboard players set #temp worldtool 120000
data modify storage worldtool:storage BlocksPerTick.Preset set value "custom"

execute store result storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:save_area"}].Value int 1 run scoreboard players get #temp worldtool

function worldtool:ui_general/options/settings/blocks_per_tick/menu
