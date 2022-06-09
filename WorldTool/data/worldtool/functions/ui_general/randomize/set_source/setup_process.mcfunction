# Called by worldtool:process_start/common/setup_process
# Sets up the randomization source marking process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.randomization_source\\"","storage":"worldtool:storage"}',Id:"worldtool:randomization_source",Tags:["wt.process.randomization_source"]}

execute if entity @s[tag=wt.randomize.exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.randomization_source.exclude"

tag @s remove wt.setup.randomization_source
