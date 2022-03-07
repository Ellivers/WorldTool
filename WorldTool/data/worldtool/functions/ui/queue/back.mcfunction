# Called by worldtool:ui/queue/back
# Leaves the queue

scoreboard players operation #temp worldtool = @s wt.queue_pos

scoreboard players set #temp2 worldtool 0

data modify storage worldtool:storage NewProcesses set from storage worldtool:storage Processes
execute store result score #temp3 worldtool run data get storage worldtool:storage NewProcesses
function worldtool:ui/queue/remove_from_list
data modify storage worldtool:storage Processes set from storage worldtool:storage NewProcesses
data remove storage worldtool:storage NewProcesses

execute as @a if score @s wt.queue_pos > #temp worldtool run scoreboard players remove @s wt.queue_pos 1
scoreboard players reset @s wt.queue_pos

function worldtool:ui/reopen_menu
