# Called by various functions
# Welcome to The Queue™

execute if entity @s[tag=wt.menu.queue] run function worldtool:ui/queue/leave

scoreboard players set #success worldtool 0

tag @s add wt.menu.queue

scoreboard players set #temp worldtool 0
execute as @a[scores={wt.queue_pos=1..}] run scoreboard players operation #temp worldtool > @s wt.queue_pos
scoreboard players add #temp worldtool 1

scoreboard players set #temp2 worldtool 0
scoreboard players set #temp3 worldtool 0
scoreboard players set #temp4 worldtool 0
execute store result score #temp5 worldtool run data get storage worldtool:storage Processes
function worldtool:ui/queue/get_cmd_amount_to_add
scoreboard players operation #temp worldtool += #temp3 worldtool

scoreboard players operation @s wt.queue_pos = #temp worldtool

function worldtool:ui/queue/message
