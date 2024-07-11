data modify storage worldtool:storage Temp.Macro set value {Pos1:[0d,0d,0d],Pos2:[0d,0d,0d]}
data modify storage worldtool:storage Temp.PlayerPos set value [0d,0d,0d]

scoreboard players set #atLeastOneMissing worldtool 0
execute if score #pos1Here worldtool matches 0 run scoreboard players set #atLeastOneMissing worldtool 1
execute if score #pos2Here worldtool matches 0 run scoreboard players set #atLeastOneMissing worldtool 1

execute if score #atLeastOneMissing worldtool matches 1 store result storage worldtool:storage Temp.PlayerPos[0] double 1 run data get entity @s Pos[0]
execute if score #atLeastOneMissing worldtool matches 1 store result storage worldtool:storage Temp.PlayerPos[1] double 1 run data get entity @s Pos[1]
execute if score #atLeastOneMissing worldtool matches 1 store result storage worldtool:storage Temp.PlayerPos[2] double 1 run data get entity @s Pos[2]

execute if score #pos1Here worldtool matches 0 run data modify storage worldtool:storage Temp.Macro.Pos1 set from storage worldtool:storage Temp.PlayerPos
execute if score #pos2Here worldtool matches 0 run data modify storage worldtool:storage Temp.Macro.Pos2 set from storage worldtool:storage Temp.PlayerPos

execute if score #pos1Here worldtool matches 1 store result storage worldtool:storage Temp.Macro.Pos1[0] double 1 run scoreboard players get #pos1xt worldtool
execute if score #pos1Here worldtool matches 1 store result storage worldtool:storage Temp.Macro.Pos1[1] double 1 run scoreboard players get #pos1yt worldtool
execute if score #pos1Here worldtool matches 1 store result storage worldtool:storage Temp.Macro.Pos1[2] double 1 run scoreboard players get #pos1zt worldtool

execute if score #pos2Here worldtool matches 1 store result storage worldtool:storage Temp.Macro.Pos2[0] double 1 run scoreboard players get #pos2xt worldtool
execute if score #pos2Here worldtool matches 1 store result storage worldtool:storage Temp.Macro.Pos2[1] double 1 run scoreboard players get #pos2yt worldtool
execute if score #pos2Here worldtool matches 1 store result storage worldtool:storage Temp.Macro.Pos2[2] double 1 run scoreboard players get #pos2zt worldtool

function worldtool:input_data/message/macro/set_positions with storage worldtool:storage Temp.Macro
