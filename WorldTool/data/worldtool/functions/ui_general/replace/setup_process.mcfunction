# Called by worldtool:process_start/common/setup_process
# Sets up the replace process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.replace\\"","storage":"worldtool:storage"}',ID:"worldtool:replace",Tags:["wt.process.replace"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:replace"}].Value

execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.replace.normal"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.replace.exclude"

tag @s remove wt.keep
function worldtool:process_start/common/set_process_values

tag @s remove wt.setup.replace

function worldtool:technical/save_load/backup/load
