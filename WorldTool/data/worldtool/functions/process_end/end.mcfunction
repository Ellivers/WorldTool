# Called by worldtool:process_end/load
# Ends the running process

scoreboard players set $functionRunning worldtool 0
scoreboard players set $brushFunctionRunning worldtool 0

bossbar set worldtool:progress visible false

execute as @a[tag=wt.in_queue] at @s run function worldtool:ui/queue/move

# After process stuff

function #worldtool:addon/process/end

kill @s
