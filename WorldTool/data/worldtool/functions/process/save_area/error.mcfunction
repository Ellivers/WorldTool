# Called by worldtool:process/save_area/main
# Error that occurs when the process attempts to save a template too close to out of bounds

clone 27451 1 19 27451 1 19 ~ ~ ~

execute store result score #ID_temp worldtool run data get storage worldtool:storage Processes[-1].Owner

scoreboard players set #success worldtool 1

execute as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:ui/error/out_of_bounds_save

execute if score #success worldtool matches 1 run data modify storage worldtool:storage Temp.LogEntry set value {Message:'{"nbt":"Translation.\\"error.out_of_bounds_place\\"","color":"red","storage":"worldtool:storage"}',Type:"error"}
execute if score #success worldtool matches 1 run function worldtool:technical/cmd/log/add

function worldtool:process/complete
