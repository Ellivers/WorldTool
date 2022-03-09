# Called by worldtool:ui/queue/back, worldtool:ui/remove_menu_tags, and worldtool:ui/back_using_tags
# Leaves the queue

scoreboard players operation #temp worldtool = @s wt.queue_pos

scoreboard players set #temp2 worldtool 0

execute store result score #temp3 worldtool run data get storage worldtool:storage Processes
function worldtool:ui/queue/remove_from_list

execute as @a if score @s wt.queue_pos > #temp worldtool run scoreboard players remove @s wt.queue_pos 1
scoreboard players reset @s wt.queue_pos

tag @s remove wt.menu.queue
