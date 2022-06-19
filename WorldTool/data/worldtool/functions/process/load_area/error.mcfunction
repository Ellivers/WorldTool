# Called by worldtool:process/load_area/main
# Error that occurs when the process attempts to load a non-existent template

scoreboard players operation #blocksChecked worldtool = #templatesToLoad worldtool
clone 27451 1 19 27451 1 19 ~ ~ ~

execute store result score #ID_temp worldtool run data get storage worldtool:storage Processes[-1].Owner

scoreboard players set #success worldtool 0

execute as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:ui/error/template_not_found

execute if score #success worldtool matches 0 run data modify storage worldtool:storage Temp.LogMessage set value '{"nbt":"Translation.\\"error.template_not_found\\"","color":"red","storage":"worldtool:storage"}'
execute if score #success worldtool matches 0 run function worldtool:technical/cmd/add_to_log
