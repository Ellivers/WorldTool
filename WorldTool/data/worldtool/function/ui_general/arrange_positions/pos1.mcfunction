# Called by worldtool:ui_general/arrange_positions/load
# Sets the variables and stuff

scoreboard players set #pos2yt worldtool -2147483648
function worldtool:technical/common/temp_pos1
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos2

function worldtool:ui_general/arrange_positions/arrange
function worldtool:ui_general/arrange_positions/set_up_vars

execute if score #pos1xt worldtool = #pos2xt worldtool at @s align x run tp ~.999 ~ ~
execute if score #pos1xt worldtool = #pos2xt worldtool run tag @s add wt.particle_direction.x.negative
execute if score #pos1xt worldtool = #pos2xt worldtool run scoreboard players remove @s wt.pos2x 1
execute if score #pos1yt worldtool = #pos2yt worldtool at @s align y run tp ~ ~.999 ~
execute if score #pos1yt worldtool = #pos2yt worldtool run tag @s add wt.particle_direction.y.negative
execute if score #pos1yt worldtool = #pos2yt worldtool run scoreboard players remove @s wt.pos2y 1
execute if score #pos1zt worldtool = #pos2zt worldtool at @s align z run tp ~ ~ ~.999
execute if score #pos1zt worldtool = #pos2zt worldtool run tag @s add wt.particle_direction.z.negative
execute if score #pos1zt worldtool = #pos2zt worldtool run scoreboard players remove @s wt.pos2z 1
