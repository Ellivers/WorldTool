# Called by worldtool:ui/warning/size
# Continue point 2 for starting the process

function worldtool:process_start/common/check/positions

function #worldtool:hooks/process_start/common/continue2

function #rx.playerdb:api/v2/get/self

data modify storage worldtool:storage Processes prepend from storage rx.playerdb:io player.data.WorldTool.SavedProcesses[]

execute if score #success worldtool matches 1 run function worldtool:process_start/common/check/process

execute if score #success worldtool matches 1 run function worldtool:process_start/common/start
