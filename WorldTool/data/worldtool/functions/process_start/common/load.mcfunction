# Called by various functions
# Common function for process checks

execute unless score @s wt.ID matches 1.. run function worldtool:technical/common/assign_id

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute if entity @s as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = #ID_temp worldtool run tag @s add wt.dont_check

function #worldtool:hooks/process_start/common/load

function worldtool:process_start/common/setup_process

execute if score #success worldtool matches 1 run function worldtool:process_start/common/check/process

execute if score #success worldtool matches 1 run function worldtool:process_start/common/start
