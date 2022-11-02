# Called by worldtool:cmd/process/start_a and worldtool:cmd/process/start_b
# Checks if the command process can be started

scoreboard players set #success worldtool 1

execute unless data storage worldtool:storage CmdProcess.ID run scoreboard players set #success worldtool 0
execute unless data storage worldtool:storage CmdProcess.Tags run scoreboard players set #success worldtool 0
execute unless data storage worldtool:storage CmdProcess.DisplayName run scoreboard players set #success worldtool 0

scoreboard players set #temp worldtool 1
execute unless data storage worldtool:storage CmdProcess.Positions.1 run scoreboard players set #temp worldtool 0
execute unless data storage worldtool:storage CmdProcess.Positions.2 run scoreboard players set #temp worldtool 0
execute unless data storage worldtool:storage CmdProcess.Positions.1 unless data storage worldtool:storage CmdProcess.Positions.2 if data storage worldtool:storage CmdProcess.Position run scoreboard players set #temp worldtool 1
execute if score #temp worldtool matches 0 run scoreboard players set #success worldtool 0

execute if data storage worldtool:storage CmdProcess{id:"worldtool:clone"} unless data storage worldtool:storage CmdProcess.Positions.Secondary run scoreboard players set #success worldtool 0

function #worldtool:addon/check_cmd_process
