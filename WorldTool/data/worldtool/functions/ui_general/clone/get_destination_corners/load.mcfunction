# Called by various functions (?)
# Gets the corner positions of the clone destination

function worldtool:technical/common/temp_pos1
function worldtool:technical/common/temp_pos2

scoreboard players operation #tempRotX worldtool = @s wt.rotX
scoreboard players operation #tempRotX worldtool /= #90 worldtool
scoreboard players operation #tempRotY worldtool = @s wt.rotY
scoreboard players operation #tempRotY worldtool /= #90 worldtool
scoreboard players operation #tempRotZ worldtool = @s wt.rotZ
scoreboard players operation #tempRotZ worldtool /= #90 worldtool

scoreboard players operation #baseDistX worldtool = #pos2xt worldtool
scoreboard players operation #baseDistX worldtool -= #pos1xt worldtool
scoreboard players operation #baseDistY worldtool = #pos2yt worldtool
scoreboard players operation #baseDistY worldtool -= #pos1yt worldtool
scoreboard players operation #baseDistZ worldtool = #pos2zt worldtool
scoreboard players operation #baseDistZ worldtool -= #pos1zt worldtool

scoreboard players operation #newDistX worldtool = #baseDistX worldtool
scoreboard players operation #newDistY worldtool = #baseDistY worldtool
scoreboard players operation #newDistZ worldtool = #baseDistZ worldtool

execute if score #tempRotY worldtool matches 1 run function worldtool:ui_general/clone/get_destination_corners/y90
execute if score #tempRotY worldtool matches 2 run function worldtool:ui_general/clone/get_destination_corners/y180
execute if score #tempRotY worldtool matches 3 run function worldtool:ui_general/clone/get_destination_corners/y270


