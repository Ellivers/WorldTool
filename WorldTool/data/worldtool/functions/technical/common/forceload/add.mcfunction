# Force loads a chunk

execute store success score #forceloadTemp worldtool run forceload query ~ ~
execute if score #forceloadTemp worldtool matches 0 run forceload add ~ ~

execute if entity @s[tag=wt.can_forceload] if score #forceloadTemp worldtool matches 0 run scoreboard players set @s worldtool 1
execute if entity @s[tag=wt.can_forceload] if score #forceloadTemp worldtool matches 1 run scoreboard players set @s worldtool 0
