# Called by worldtool:process/load.tags
# Sets the plant chance

execute store result score #plantRate worldtool run data get storage worldtool:storage Processes[-1].Input.Rate
execute if score #plantRate worldtool matches ..-1 run scoreboard players set #plantRate worldtool 0
scoreboard players remove #plantRate worldtool 1

function worldtool:process/greenery/main
