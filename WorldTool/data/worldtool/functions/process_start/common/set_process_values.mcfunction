# Called by various process setup functions
# Sets additional process values

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute unless entity @s[tag=wt.not_common] run data modify storage worldtool:storage Processes[0].StartType set value "worldtool:common"
execute store result storage worldtool:storage Processes[0].Owner int 1 run scoreboard players get #ID_temp worldtool
execute as @e[type=minecraft:marker,tag=worldtool] if score @s wt.ID = #ID_temp worldtool run function worldtool:process_start/common/setup_process.entity

tag @s remove wt.not_common
