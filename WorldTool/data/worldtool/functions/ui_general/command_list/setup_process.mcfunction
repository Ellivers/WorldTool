# Called by worldtool:process_start/common/setup_process
# Sets up the command list process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.command_list\\"","storage":"worldtool:storage"}',ID:"worldtool:command_list",Tags:["wt.process.command_list","wt.message.non_default","wt.message.command_list"],Output:{CommandList:[]}}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:command_list"}].Value

function worldtool:process_start/general/set_process_values

tag @s remove wt.setup.command_list
