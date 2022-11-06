# Called recursively and by the "up", "down", "north" and "south" direction functions

scoreboard players set #temp2 worldtool 0
execute store result score #pos2xt worldtool run data get storage worldtool:storage Temp.Points[0][0]
execute store result score #pos2yt worldtool run data get storage worldtool:storage Temp.Points[0][1]
execute store result score #pos2zt worldtool run data get storage worldtool:storage Temp.Points[0][2]
