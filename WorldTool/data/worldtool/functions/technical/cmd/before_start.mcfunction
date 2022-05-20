# Called by worldtool:cmd/process/start_a and worldtool:cmd/process/start_b
# Commands to run before a command process is started

execute unless data storage worldtool:storage CmdProcess.Rotation.X store result storage worldtool:storage CmdProcess.Rotation.X int 1 run scoreboard players get $rotX worldtool
execute unless data storage worldtool:storage CmdProcess.Rotation.Y store result storage worldtool:storage CmdProcess.Rotation.Y int 1 run scoreboard players get $rotY worldtool
execute unless data storage worldtool:storage CmdProcess.Rotation.Z store result storage worldtool:storage CmdProcess.Rotation.Z int 1 run scoreboard players get $rotZ worldtool

function worldtool:technical/cmd/check_start

execute if score #success worldtool matches 0 run data modify storage worldtool:storage Temp.LogMessage set value '{"nbt":"Translation.\\"error.log.invalid_process\\"","storage":"worldtool:storage","interpret":true}'
execute if score #success worldtool matches 0 run function worldtool:technical/cmd/add_to_log
