# Called by worldtool:process_start/common/setup_process
# Sets up the fill process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.fill\\"","storage":"worldtool:storage"}',ID:"worldtool:fill",Tags:["wt.process.fill"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:fill"}].Value

function worldtool:process_start/common/set_process_values

tag @s remove wt.setup.fill
