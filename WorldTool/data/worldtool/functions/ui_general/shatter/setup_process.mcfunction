# Called by worldtool:process_start/common/setup_process
# Sets up the shatter process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.shatter\\"","storage":"worldtool:storage"}',ID:"worldtool:shatter",Tags:["wt.process.shatter"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:shatter"}].Value

execute if entity @s[tag=wt.shatter.drop_items] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.shatter.drop_items"

execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.shatter.replace.normal"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.shatter.replace.exclude"
tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

tag @s remove wt.keep
function worldtool:process_start/common/set_process_values

tag @s remove wt.setup.shatter

function worldtool:technical/save_load/backup/load
