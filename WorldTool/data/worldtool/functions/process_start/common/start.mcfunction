# Called by worldtool:process_start/common/load
# Starts the process

scoreboard players operation #ID_temp worldtool = @s wt.ID

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]
execute if data storage worldtool:storage {Temp:{Process:{Id:"worldtool:clone"}}} as @e[type=minecraft:marker,tag=worldtool,tag=wt.reciever_marker] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:ui_general/clone/summon_reciever

function #worldtool:addon/process_start/common_start

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:process_start/common/start.input

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:process_start/start
function worldtool:ui/reopen_menu/after_starting
