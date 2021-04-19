# Set the correct relative sides

execute if score $pos1x worldtool > $pos2x worldtool run scoreboard players operation #furthestEast worldtool = $pos1x worldtool
execute if score $pos1x worldtool < $pos2x worldtool run scoreboard players operation #furthestEast worldtool = $pos2x worldtool
execute if score $pos1x worldtool > $pos2x worldtool run scoreboard players operation #furthestWest worldtool = $pos2x worldtool
execute if score $pos1x worldtool < $pos2x worldtool run scoreboard players operation #furthestWest worldtool = $pos1x worldtool

execute if score $pos1y worldtool > $pos2y worldtool run scoreboard players operation #furthestUp worldtool = $pos1y worldtool
execute if score $pos1y worldtool < $pos2y worldtool run scoreboard players operation #furthestUp worldtool = $pos2y worldtool
execute if score $pos1y worldtool > $pos2y worldtool run scoreboard players operation #furthestDown worldtool = $pos2y worldtool
execute if score $pos1y worldtool < $pos2y worldtool run scoreboard players operation #furthestDown worldtool = $pos1y worldtool

execute if score $pos1z worldtool > $pos2z worldtool run scoreboard players operation #furthestSouth worldtool = $pos1z worldtool
execute if score $pos1z worldtool < $pos2z worldtool run scoreboard players operation #furthestSouth worldtool = $pos2z worldtool
execute if score $pos1z worldtool > $pos2z worldtool run scoreboard players operation #furthestNorth worldtool = $pos2z worldtool
execute if score $pos1z worldtool < $pos2z worldtool run scoreboard players operation #furthestNorth worldtool = $pos1z worldtool
