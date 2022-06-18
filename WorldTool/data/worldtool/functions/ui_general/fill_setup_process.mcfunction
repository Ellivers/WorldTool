# Called by worldtool:process_start/common/setup_process
# Sets up the fill process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.fill\\"","storage":"worldtool:storage"}',Id:"worldtool:fill",Tags:["wt.process.fill"]}

function worldtool:process_start/common/set_process_values

tag @s remove wt.setup.fill
