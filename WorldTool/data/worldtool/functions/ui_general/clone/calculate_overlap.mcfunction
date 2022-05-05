# Called by worldtool:ui_general/clone/start
# Sees if the source area and destination are overlapping, and if so,
# asks the user if they want to continue.

scoreboard players set #success worldtool 1

function worldtool:technical/common/temp_pos1
function worldtool:technical/common/temp_pos2

scoreboard players operation #tempRotX worldtool = @s wt.rotX
scoreboard players operation #tempRotX worldtool /= #90 worldtool
scoreboard players operation #tempRotY worldtool = @s wt.rotY
scoreboard players operation #tempRotY worldtool /= #90 worldtool
scoreboard players operation #tempRotZ worldtool = @s wt.rotZ
scoreboard players operation #tempRotZ worldtool /= #90 worldtool


