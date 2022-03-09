# Called by worldtool:process_end/load
# Ends the running process

scoreboard players set $processRunning worldtool 0
scoreboard players set $brushprocessRunning worldtool 0

bossbar set worldtool:progress visible false

execute as @a[tag=wt.menu.queue] at @s run function worldtool:ui/queue/move

# After process stuff

function #worldtool:addon/process/end

kill @s
