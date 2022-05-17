# Called by worldtool:ui/queue/back, worldtool:ui/remove_menu_tags, and worldtool:ui/back_using_tags
# Leaves the queue

scoreboard players operation #ID_temp worldtool = @s wt.ID

scoreboard players set #temp worldtool 0

execute store result score #temp2 worldtool run data get storage worldtool:storage Processes
function worldtool:ui/queue/remove_from_list

tag @s remove wt.menu.queue
