# Gets the position of the executing entity and sets temporary scores for position 1

data modify storage worldtool:storage Temp.Pos set from entity @s Pos
execute store result score #pos1xt worldtool run data get storage worldtool:storage Temp.Pos[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Temp.Pos[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Temp.Pos[2]
