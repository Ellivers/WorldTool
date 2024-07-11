data modify storage worldtool:storage Temp.Macro set value {Pos:[0d,0d,0d]}

execute store success score #posHere worldtool if score #pos1xt worldtool matches -2147483648..

execute if score #posHere worldtool matches 0 store result storage worldtool:storage Temp.Macro.Pos[0] double 1 run data get entity @s Pos[0]
execute if score #posHere worldtool matches 0 store result storage worldtool:storage Temp.Macro.Pos[1] double 1 run data get entity @s Pos[1]
execute if score #posHere worldtool matches 0 store result storage worldtool:storage Temp.Macro.Pos[2] double 1 run data get entity @s Pos[2]

execute if score #posHere worldtool matches 1 store result storage worldtool:storage Temp.Macro.Pos[0] double 1 run scoreboard players get #pos1xt worldtool
execute if score #posHere worldtool matches 1 store result storage worldtool:storage Temp.Macro.Pos[1] double 1 run scoreboard players get #pos1yt worldtool
execute if score #posHere worldtool matches 1 store result storage worldtool:storage Temp.Macro.Pos[2] double 1 run scoreboard players get #pos1zt worldtool

function worldtool:input_data/message/macro/set_shape_position with storage worldtool:storage Temp.Macro
