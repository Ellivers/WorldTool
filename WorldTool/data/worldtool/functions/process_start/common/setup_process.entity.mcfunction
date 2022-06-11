# Called by worldtool:process_start/common/setup_process
# Gets data from the player's entities

execute if entity @s[tag=wt.pos1] unless data storage worldtool:storage Processes[0].Positions.1 run data modify storage worldtool:storage Processes[0].Positions.1 set from entity @s Pos
execute if entity @s[tag=wt.pos2] unless data storage worldtool:storage Processes[0].Positions.2 run data modify storage worldtool:storage Processes[0].Positions.2 set from entity @s Pos

execute if entity @s[tag=wt.input] unless entity @s[tag=!wt.primary,tag=!wt.both] run data modify storage worldtool:storage Processes[0].BlockPositions.Primary set from entity @s Pos
execute if entity @s[tag=wt.input] unless entity @s[tag=!wt.primary,tag=!wt.both] store result score #temp worldtool run data get storage worldtool:storage Processes[0].BlockPositions.Primary[0]
execute if entity @s[tag=wt.input] unless entity @s[tag=!wt.primary,tag=!wt.both] run scoreboard players add #temp worldtool 1
execute if entity @s[tag=wt.input] unless entity @s[tag=!wt.primary,tag=!wt.both] store result storage worldtool:storage Processes[0].BlockPositions.Primary[0] double 1 run scoreboard players get #temp worldtool

execute if entity @s[tag=wt.input] unless entity @s[tag=!wt.secondary,tag=!wt.both] run data modify storage worldtool:storage Processes[0].BlockPositions.Secondary set from entity @s Pos
execute if entity @s[tag=wt.input] unless entity @s[tag=!wt.secondary,tag=!wt.both] store result score #temp worldtool run data get storage worldtool:storage Processes[0].BlockPositions.Secondary[0]
execute if entity @s[tag=wt.input] unless entity @s[tag=!wt.secondary,tag=!wt.both] run scoreboard players remove #temp worldtool 1
execute if entity @s[tag=wt.input] unless entity @s[tag=!wt.secondary,tag=!wt.both] store result storage worldtool:storage Processes[0].BlockPositions.Secondary[0] double 1 run scoreboard players get #temp worldtool

execute if entity @s[tag=wt.reciever_marker] run data modify storage worldtool:storage Processes[0].Positions.CloneDestination set from entity @s Pos
kill @s[tag=wt.reciever_marker]

execute if entity @s[tag=wt.randomization_source_corner.1,tag=wt.not_used_yet] run data modify storage worldtool:storage Processes[0].Positions.1 set from entity @s Pos
execute if entity @s[tag=wt.randomization_source_corner.2,tag=wt.not_used_yet] run data modify storage worldtool:storage Processes[0].Positions.2 set from entity @s Pos

function #worldtool:addon/process_start/setup_process.entity
