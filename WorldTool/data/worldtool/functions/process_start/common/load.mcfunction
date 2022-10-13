# Called by various functions
# Common function for process checks

execute unless score @s wt.ID matches 1.. run function worldtool:use_tool/assign_id

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute if entity @s as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = #ID_temp worldtool run tag @s add wt.dont_check

function worldtool:process_start/common/check/size

execute if score #success worldtool matches 1 run function worldtool:process_start/common/check/positions

function #worldtool:addon/process_start/common_load

execute if score #success worldtool matches 1 run function worldtool:process_start/common/setup_process

execute if score #success worldtool matches 1 run function worldtool:process_start/common/check/process

execute if score #success worldtool matches 1 run function worldtool:process_start/common/start
