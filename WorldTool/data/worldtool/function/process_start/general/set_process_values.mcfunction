# Called by various process setup functions
# Sets additional process values

data modify storage worldtool:storage Processes[0].StartType set value "worldtool:general"
function worldtool:process_start/common/set_process_values
