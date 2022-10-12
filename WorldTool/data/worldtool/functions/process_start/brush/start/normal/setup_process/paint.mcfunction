# Called by worldtool:process_start/brush/start/normal/start
# Sets up the paint process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.brush.paint\\"","storage":"worldtool:storage"}',ID:"worldtool:paint",Tags:["wt.process.paint","wt.no_message"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:paint"}].Value

function worldtool:process_start/brush/start/normal/setup_process/set_process_values
