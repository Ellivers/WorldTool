# Called by worldtool:use_brush/start/normal/start
# Sets up the place process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.brush.place\\"","storage":"worldtool:storage"}',ID:"worldtool:fill",Tags:["wt.process.fill","wt.no_message"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:place"}].Value

execute unless predicate worldtool:brush_tool/settings/overwrite_blocks run data modify storage worldtool:storage Processes[0].Tags append value "wt.keep"

function worldtool:use_brush/start/normal/setup_process/set_process_values
