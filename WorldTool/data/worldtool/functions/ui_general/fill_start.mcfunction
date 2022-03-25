# Called by worldtool:input_check/primary
# Starts the filling process

scoreboard players operation #ID_temp worldtool = @s wt.ID

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.fill\\"","storage":"worldtool:storage"}',Id:"worldtool:fill",Tags:["wt.process.fill"]}
function worldtool:process_start/common/load
