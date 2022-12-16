# Removes force loading from a chunk

execute store result score #forceloadTemp worldtool run forceload query ~ ~
execute if score #forceloadTemp worldtool matches 1 run forceload remove ~ ~

scoreboard players set @s[tag=wt.can_forceload] worldtool 0
