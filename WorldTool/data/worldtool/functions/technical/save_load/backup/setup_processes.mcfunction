# Called by worldtool:technical/save_load/backup/load
# Sets up the two backup processes

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[0]
data remove storage worldtool:storage Processes[0]

function worldtool:technical/save_load/remove_save_tags

data modify storage worldtool:storage Temp.AffectedArea set from storage worldtool:storage Temp.Process.AffectedArea
execute if data storage worldtool:storage Temp.NextPositions run data modify storage worldtool:storage Temp.AdditionalData.Input.NextPositions set from storage worldtool:storage Temp.NextPositions
function worldtool:technical/save_load/backup/setup_process

data modify storage worldtool:storage Processes prepend from storage worldtool:storage Temp.Process

data modify storage worldtool:storage Temp.AffectedArea set from storage worldtool:storage Temp.Process.AffectedArea
execute if data storage worldtool:storage Temp.NextPositions run data modify storage worldtool:storage Temp.AdditionalData.Input.NextPositions set from storage worldtool:storage Temp.NextPositions
function worldtool:technical/save_load/backup/setup_process

data remove storage worldtool:storage Temp.NextPositions
