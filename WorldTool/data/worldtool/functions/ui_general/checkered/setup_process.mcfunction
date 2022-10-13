# Called by worldtool:process_start/common/setup_process
# Sets up the checkered process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.checkered\\"","storage":"worldtool:storage"}',ID:"worldtool:checkered",Tags:["wt.process.checkered"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:checkered"}].Value

execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.checkered.replace.normal"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.checkered.replace.exclude"

execute if entity @s[tag=wt.checkered.start_with_block] run data modify storage worldtool:storage Processes[0].Tags append value "wt.start_with_block"

execute if entity @s[tag=wt.checkered.alternate.x] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.checkered.alternate.x"
execute if entity @s[tag=wt.checkered.alternate.y] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.checkered.alternate.y"
execute if entity @s[tag=wt.checkered.alternate.z] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.checkered.alternate.z"

function worldtool:process_start/common/set_process_values

tag @s remove wt.setup.checkered

function worldtool:technical/save_load/backup/load
