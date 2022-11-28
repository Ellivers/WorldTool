# Called by various process setup functions
# Sets additional process values

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute unless data storage worldtool:storage Processes[0].StartType run data modify storage worldtool:storage Processes[0].StartType set value "worldtool:common"
execute if entity @s[tag=wt.keep] run data modify storage worldtool:storage Processes[0].Tags append value "wt.keep"
execute if data storage worldtool:storage Temp.AdditionalTags run data modify storage worldtool:storage Processes[0].Tags append from storage worldtool:storage Temp.AdditionalTags[]
data remove storage worldtool:storage Temp.AdditionalTags
execute if data storage worldtool:storage Temp.AdditionalData run data modify storage worldtool:storage Processes[0] merge from storage worldtool:storage Temp.AdditionalData
data remove storage worldtool:storage Temp.AdditionalData
execute store result storage worldtool:storage Processes[0].Owner int 1 run scoreboard players get #ID_temp worldtool
execute as @e[type=minecraft:marker,tag=worldtool] if score @s wt.ID = #ID_temp worldtool run function worldtool:process_start/common/setup_process.entity
