# Called by worldtool:process_end/load
# Ends the running process

scoreboard players set $processRunning worldtool 0

bossbar set worldtool:progress visible false

# After process stuff

execute if entity @s[tag=wt.process.clone] run kill 9880ccfe-fdf6-4538-838a-ddc75a54608e

function #worldtool:addon/process/end

kill @s


function worldtool:ui/queue/move
