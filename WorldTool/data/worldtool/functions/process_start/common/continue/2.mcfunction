# Called by worldtool:ui/warning/size
# Continue point 1 for starting the process

function worldtool:process_start/common/check/positions

function #worldtool:addon/process_start/continue2

function #rx.playerdb:api/v2/get/self

data modify storage worldtool:storage Processes prepend from storage rx.playerdb:io player.data.WorldTool.SavedProcesses[2]
data modify storage worldtool:storage Processes prepend from storage rx.playerdb:io player.data.WorldTool.SavedProcesses[1]
data modify storage worldtool:storage Processes prepend from storage rx.playerdb:io player.data.WorldTool.SavedProcesses[0]

execute if score #success worldtool matches 1 run function worldtool:process_start/common/check/process

execute if score #success worldtool matches 1 run function worldtool:process_start/common/start
