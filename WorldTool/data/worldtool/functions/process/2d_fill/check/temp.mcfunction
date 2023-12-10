
data modify storage worldtool:storage Temp.Directions2 append from storage worldtool:storage Temp.Directions[-1]
data remove storage worldtool:storage Temp.Directions[-1]

execute if data storage worldtool:storage Temp.Directions[-1] run function worldtool:process/2d_fill/check/temp
