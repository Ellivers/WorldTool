data modify storage worldtool:storage Temp.Pos set from entity @s Pos
execute store result score #pos2xt worldtool run data get storage worldtool:storage Temp.Pos[0]
execute store result score #pos2yt worldtool run data get storage worldtool:storage Temp.Pos[1]
execute store result score #pos2zt worldtool run data get storage worldtool:storage Temp.Pos[2]
