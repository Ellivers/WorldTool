# Called by worldtool:process/command_list/follow/main
# Resets the process entity's position when the end of the command block chain has been reached

data modify storage worldtool:storage Temp.Pos set value [0d,0d,0d]
execute store result storage worldtool:storage Temp.Pos[0] double 1 run scoreboard players get #processPosX worldtool
execute store result storage worldtool:storage Temp.Pos[1] double 1 run scoreboard players get #processPosY worldtool
execute store result storage worldtool:storage Temp.Pos[2] double 1 run scoreboard players get #processPosZ worldtool
data modify entity @s Pos set from storage worldtool:storage Temp.Pos

scoreboard players set #processState worldtool 0

execute at @s run function worldtool:process/command_list/search/move
