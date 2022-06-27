# Called by worldtool:use_brush/start/normal/start
# Sets up the place process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.brush.replace\\"","storage":"worldtool:storage"}',ID:"worldtool:replace_brush",Tags:["wt.process.replace_brush","wt.no_message"]}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:replace_brush"}].Value

execute if predicate worldtool:brush_tool/settings/replace/normal run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.replace_brush.normal"
execute if predicate worldtool:brush_tool/settings/replace/exclude run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.replace_brush.exclude"

function worldtool:use_brush/start/normal/setup_process/set_process_values
