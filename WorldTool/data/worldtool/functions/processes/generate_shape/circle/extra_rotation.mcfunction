# special harcoded nonsense so that a certain bug caused by precision loss doesn't happen

execute unless score #axisTemp worldtool matches 1..2 store result score #currentRotX worldtool run data get entity @s Rotation[1]
execute unless score #axisTemp worldtool matches 3..6 store result score #currentRotY worldtool run data get entity @s Rotation[0]

execute unless score #axisTemp worldtool matches 1..2 run scoreboard players add #currentRotX worldtool 2
execute unless score #axisTemp worldtool matches 3..6 run scoreboard players add #currentRotY worldtool 2
execute unless score #axisTemp worldtool matches 1..2 store result entity @s Rotation[1] float 1 run scoreboard players get #currentRotX worldtool
execute unless score #axisTemp worldtool matches 3..6 store result entity @s Rotation[0] float 1 run scoreboard players get #currentRotY worldtool

tag @s add wt_dont_continue
function worldtool:processes/generate_shape/circle/raycast