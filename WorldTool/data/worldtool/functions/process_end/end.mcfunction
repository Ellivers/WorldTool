# Called by worldtool:process_end/load
# Ends the running process

scoreboard players operation #ID_temp worldtool = @s wt.ID

scoreboard players set $processRunning worldtool 0
bossbar set worldtool:progress visible false

# After process stuff

execute if entity @s[tag=wt.process.clone] run kill 9880ccfe-fdf6-4538-838a-ddc75a54608e
execute if entity @s[tag=wt.process.randomization_source] as @e[type=minecraft:marker,tag=worldtool,tag=wt.randomization_source_corner,tag=wt.not_used_yet] if score @s wt.ID = #ID_temp worldtool run kill @s
function #worldtool:hooks/process/end

kill @s


function worldtool:ui/queue/move
