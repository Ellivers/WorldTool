# Called by various brush processes
# Sets some common process data

function worldtool:technical/common/temp_entity

execute as d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:technical/common/temp_pos1
kill d43b8e30-51cc-4da0-918a-60a557ae676f

scoreboard players operation #pos2xt worldtool = #pos1xt worldtool
scoreboard players operation #pos2yt worldtool = #pos1yt worldtool
scoreboard players operation #pos2zt worldtool = #pos1zt worldtool

scoreboard players operation #pos1xt worldtool += #offset1x worldtool
scoreboard players operation #pos1yt worldtool += #offset1y worldtool
scoreboard players operation #pos1zt worldtool += #offset1z worldtool

scoreboard players operation #pos2xt worldtool += #offset2x worldtool
scoreboard players operation #pos2yt worldtool += #offset2y worldtool
scoreboard players operation #pos2zt worldtool += #offset2z worldtool

data modify storage worldtool:storage Processes[0].StartType set value "worldtool:brush"

execute store result storage worldtool:storage Processes[0].Owner int 1 run scoreboard players get @s wt.ID

data modify storage worldtool:storage Processes[0].Positions.1 set value [0d,0d,0d]
execute store result storage worldtool:storage Processes[0].Positions.1[0] double 1 run scoreboard players get #pos1xt worldtool
execute store result storage worldtool:storage Processes[0].Positions.1[1] double 1 run scoreboard players get #pos1yt worldtool
execute store result storage worldtool:storage Processes[0].Positions.1[2] double 1 run scoreboard players get #pos1zt worldtool

data modify storage worldtool:storage Processes[0].Positions.2 set value [0d,0d,0d]
execute store result storage worldtool:storage Processes[0].Positions.2[0] double 1 run scoreboard players get #pos2xt worldtool
execute store result storage worldtool:storage Processes[0].Positions.2[1] double 1 run scoreboard players get #pos2yt worldtool
execute store result storage worldtool:storage Processes[0].Positions.2[2] double 1 run scoreboard players get #pos2zt worldtool

execute unless data storage worldtool:storage Processes[0].LogStart run data modify storage worldtool:storage Processes[0].LogStart set value 1b
