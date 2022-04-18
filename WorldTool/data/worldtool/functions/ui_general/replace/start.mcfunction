# Called by worldtool:ui/return
# Starts the replacing process

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.replace\\"","storage":"worldtool:storage"}',Id:"worldtool:replace",Tags:["wt.process.replace"]}

execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.replace.normal"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.replace.exclude"
tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

function worldtool:process_start/common/load
