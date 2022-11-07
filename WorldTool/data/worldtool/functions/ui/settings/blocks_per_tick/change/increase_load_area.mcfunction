# Called by a blocks per tick page
# Increases a blocks per tick value

execute store result score #temp worldtool run data get storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:load_area"}].Value

scoreboard players add #temp worldtool 1
execute if score #temp worldtool matches 2147483647 run scoreboard players set #temp worldtool 2
data modify storage worldtool:storage BlocksPerTick.Preset set value "custom"

execute store result storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:load_area"}].Value int 1 run scoreboard players get #temp worldtool

function worldtool:ui/settings/blocks_per_tick/back_to_page
