# Called by worldtool:process_start/shapes/setup_process
# Sets up the 2d filling process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.shape.2d_fill\\"","storage":"worldtool:storage"}',ID:"worldtool:2d_fill",Tags:["wt.process.2d_fill","wt.process.2d_fill.with_block","wt.no_message"]}
#data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:2d_fill"}].Value
data modify storage worldtool:storage Processes[0].BlocksPerTick set value 2

execute if data storage worldtool:storage Temp{ProcessOrientation:"x"} run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.2d_fill.axis.x"
execute if data storage worldtool:storage Temp{ProcessOrientation:"y"} run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.2d_fill.axis.y"
execute if data storage worldtool:storage Temp{ProcessOrientation:"z"} run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.2d_fill.axis.z"

function worldtool:process_start/shapes/setup_process/set_process_values


# data modify storage worldtool:storage Temp.AdditionalTags set value ["wt.process.replace.normal"]
# data modify storage worldtool:storage Temp.AdditionalData set value {}
# data modify storage worldtool:storage Temp.AdditionalData.BlockPositions.Secondary set from storage worldtool:storage Processes[0].Position
# function worldtool:process_start/general/setup_process/replace
