# Called by worldtool:process_start/common/setup_process
# Sets up the filter measure process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.filter_measure\\"","storage":"worldtool:storage"}',Id:"worldtool:filter_measure",Tags:["wt.process.filter_measure","wt.message.measure","wt.message.non_default","wt.read_only"]}

execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.filter_measure.normal"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.filter_measure.exclude"
tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

function worldtool:process_start/common/set_process_values

tag @s remove wt.setup.filter_measure
