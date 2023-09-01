# Called by worldtool:tick
# Commands ticked for players

execute if entity @s[tag=wt.allow_input] run function worldtool:input_check/player
function worldtool:use_tool/hold/check

execute if score @s wt.use_coas matches 1.. run function worldtool:use_tool/click/load
execute if score @s wt.drop_coas matches 1.. run function worldtool:use_tool/drop/load
execute unless score @s wt.version >= $latestVersion worldtool run function worldtool:technical/upgrade_version/player

scoreboard players set @s wt.sneak 0
