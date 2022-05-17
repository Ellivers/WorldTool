# Called by worldtool:process_start/common/setup_process
# Sets up the clone process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.replace\\"","storage":"worldtool:storage"}',Id:"worldtool:replace",Tags:["wt.process.replace"]}

execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.replace.normal"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.replace.exclude"
tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

tag @s remove wt.setup.replace
