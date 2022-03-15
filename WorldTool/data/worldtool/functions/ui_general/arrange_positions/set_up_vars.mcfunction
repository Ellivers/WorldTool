# Called by worldtool:particles/ui_general/arrange_positions/pos1 and worldtool:particles/ui_general/arrange_positions/pos2
# Sets the dumb stupid entity scores

scoreboard players operation @s wt.pos1x = #pos1xt worldtool
scoreboard players operation @s wt.pos1y = #pos1yt worldtool
scoreboard players operation @s wt.pos1z = #pos1zt worldtool

scoreboard players operation @s wt.pos2x = #pos2xt worldtool
scoreboard players operation @s wt.pos2y = #pos2yt worldtool
scoreboard players operation @s wt.pos2z = #pos2zt worldtool
execute if score #pos1xt worldtool > #pos2xt worldtool run scoreboard players remove @s wt.pos2x 1
execute if score #pos1yt worldtool > #pos2yt worldtool run scoreboard players remove @s wt.pos2y 1
execute if score #pos1zt worldtool > #pos2zt worldtool run scoreboard players remove @s wt.pos2z 1
execute if score #pos1xt worldtool < #pos2xt worldtool run scoreboard players add @s wt.pos2x 1
execute if score #pos1yt worldtool < #pos2yt worldtool run scoreboard players add @s wt.pos2y 1
execute if score #pos1zt worldtool < #pos2zt worldtool run scoreboard players add @s wt.pos2z 1
