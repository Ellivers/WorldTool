# Called by worldtool:process_start/common/block_from_data/scheduled
# Called when the process block has been set

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]
execute if data storage worldtool:storage Temp.Process{StartType:"worldtool:shape"} run function worldtool:process_start/shapes/block_updated
execute if data storage worldtool:storage Temp.Process{StartType:"worldtool:common"} run function worldtool:process_start/start

function #worldtool:hooks/process_start/block_from_data/finish

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @a if score @s wt.ID = #ID_temp worldtool rotated as @s run function worldtool:process_start/common/block_from_data/finish.user

kill @s
