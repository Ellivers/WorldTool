# Called by worldtool:process_start/common/setup_process
# Sets up the randomization source marking process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.randomization_source\\"","storage":"worldtool:storage"}',ID:"worldtool:randomization_source",Tags:["wt.process.randomization_source","wt.no_message","wt.read_only"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:randomization_source"}].Value

execute if entity @s[tag=wt.randomize.exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.randomization_source.exclude"

function worldtool:process_start/common/set_process_values

tag @s remove wt.setup.randomization_source
tag @s remove wt.randomize.exclude