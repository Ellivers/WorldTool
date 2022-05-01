# Called by various functions
# Common function for process checks

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = #ID_temp worldtool run tag @s add wt.dont_check

execute if score $sizeWarnLimit worldtool matches 1.. run function worldtool:process_start/common/check_size
execute if score $sizeWarnLimit worldtool matches ..0 run function worldtool:process_start/common/check_positions

execute if score #success worldtool matches 1 if score $sizeWarnLimit worldtool matches 1.. run function worldtool:process_start/common/check_positions

execute if score #success worldtool matches 0 run function worldtool:process_start/common/cancel_process


execute if score #success worldtool matches 1 run function worldtool:process_start/common/check_process

execute if score #success worldtool matches 1 run function worldtool:process_start/common/start
