# Called by worldtool:process_start/common/check/process
# Welcome to The Queue™

#execute if entity @s[tag=wt.menu.queue] run function worldtool:ui/queue/leave

scoreboard players set #success worldtool 0

tag @s add wt.menu.queue

function worldtool:ui/queue/message
