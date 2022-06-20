# Called by worldtool:use_brush/start/normal/start
# Sets up the paint process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.paint\\"","storage":"worldtool:storage"}',Id:"worldtool:paint",Tags:["wt.process.paint","wt.no_message"]}

function worldtool:use_brush/start/normal/setup_process/set_process_values
