# Called by worldtool:process_start/common/start
# Sets all required data to start a process

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool] if score @s wt.ID = #ID_temp worldtool run function worldtool:process_start/common/get_player_data.entity
