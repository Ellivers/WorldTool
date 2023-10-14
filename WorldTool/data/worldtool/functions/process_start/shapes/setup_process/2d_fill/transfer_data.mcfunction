# Called by worldtool:process_end/load
# Transfers data to the next process 

data modify storage worldtool:storage Temp.ToNext set value {Positions:{1:[0d,0d,0d],2:[0d,0d,0d]}}
execute store result storage worldtool:storage Temp.ToNext.Positions.1[0] double 1 run scoreboard players get #minX worldtool
execute store result storage worldtool:storage Temp.ToNext.Positions.1[1] double 1 run scoreboard players get #minY worldtool
execute store result storage worldtool:storage Temp.ToNext.Positions.1[2] double 1 run scoreboard players get #minZ worldtool
execute store result storage worldtool:storage Temp.ToNext.Positions.2[0] double 1 run scoreboard players get #maxX worldtool
execute store result storage worldtool:storage Temp.ToNext.Positions.2[1] double 1 run scoreboard players get #maxY worldtool
execute store result storage worldtool:storage Temp.ToNext.Positions.2[2] double 1 run scoreboard players get #maxZ worldtool
function worldtool:technical/common/transfer_to_next
