# Called by worldtool:process_end/load
# Ends the running process

scoreboard players set $functionRunning worldtool 0
scoreboard players set $brushFunctionRunning worldtool 0

bossbar set worldtool:progress visible false

# After process stuff

function #worldtool:addon/process/end

kill @s
