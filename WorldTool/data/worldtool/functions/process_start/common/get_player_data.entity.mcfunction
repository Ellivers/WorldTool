# Called by worldtool:process_start/common/get_player_data
# Gets data from the player's entities

execute if entity @s[tag=wt.pos1] run data modify storage worldtool:storage Processes[-1].Positions.1 set from entity @s Pos
execute if entity @s[tag=wt.pos2] run data modify storage worldtool:storage Processes[-1].Positions.2 set from entity @s Pos

execute if entity @s[tag=wt.input] unless entity @s[tag=!wt.primary,tag=!wt.both] run data modify storage worldtool:storage Processes[-1].BlockPositions.Primary set from entity @s Pos
execute if entity @s[tag=wt.input] unless entity @s[tag=!wt.primary,tag=!wt.both] store result score #temp worldtool run data get storage worldtool:storage Processes[-1].BlockPositions.Primary[0]
execute if entity @s[tag=wt.input] unless entity @s[tag=!wt.primary,tag=!wt.both] run scoreboard players add #temp worldtool 1
execute if entity @s[tag=wt.input] unless entity @s[tag=!wt.primary,tag=!wt.both] store result storage worldtool:storage Processes[-1].BlockPositions.Primary[0] double 1 run scoreboard players get #temp worldtool

execute if entity @s[tag=wt.input] unless entity @s[tag=!wt.secondary,tag=!wt.both] run data modify storage worldtool:storage Processes[-1].BlockPositions.Secondary set from entity @s Pos
execute if entity @s[tag=wt.input] unless entity @s[tag=!wt.secondary,tag=!wt.both] store result score #temp worldtool run data get storage worldtool:storage Processes[-1].BlockPositions.Secondary[0]
execute if entity @s[tag=wt.input] unless entity @s[tag=!wt.secondary,tag=!wt.both] run scoreboard players remove #temp worldtool 1
execute if entity @s[tag=wt.input] unless entity @s[tag=!wt.secondary,tag=!wt.both] store result storage worldtool:storage Processes[-1].BlockPositions.Secondary[0] double 1 run scoreboard players get #temp worldtool

function #worldtool:addon/process_start/get_player_data
