# Called by worldtool:cmd/process/start_a and worldtool:cmd/process/start_b
# Checks if the command process can be started

scoreboard players set #success worldtool 1

execute unless data storage worldtool:storage CmdProcess.ID run scoreboard players set #success worldtool 0
execute unless data storage worldtool:storage CmdProcess.Tags run scoreboard players set #success worldtool 0
execute unless data storage worldtool:storage CmdProcess.DisplayName run scoreboard players set #success worldtool 0

execute unless data storage worldtool:storage CmdProcess.Positions.1 run scoreboard players set #success worldtool 0
execute unless data storage worldtool:storage CmdProcess.Positions.2 run scoreboard players set #success worldtool 0
execute if data storage worldtool:storage CmdProcess{id:"worldtool:clone"} unless data storage worldtool:storage CmdProcess.Positions.CloneDestination run scoreboard players set #success worldtool 0

function #worldtool:addon/check_cmd_process
