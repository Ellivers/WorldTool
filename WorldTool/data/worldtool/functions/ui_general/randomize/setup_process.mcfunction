# Called by worldtool:process_start/common/setup_process
# Sets up the randomize process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.randomize\\"","storage":"worldtool:storage"}',Id:"worldtool:randomize",Tags:["wt.process.randomize"]}

execute if entity @s[tag=wt.menu.randomize.replace.normal] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.randomize.replace.normal"
execute if entity @s[tag=wt.menu.randomize.replace.exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.randomize.replace.exclude"

function worldtool:process_start/common/set_process_values

tag @s remove wt.setup.randomize
