# Called by worldtool:process_start/common/setup_process
# Sets up the fill process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.fill\\"","storage":"worldtool:storage"}',Id:"worldtool:fill",Tags:["wt.process.fill"]}

tag @s remove wt.setup.fill