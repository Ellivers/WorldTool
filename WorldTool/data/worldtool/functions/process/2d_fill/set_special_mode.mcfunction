
tag @s add wt.process.2d_fill.special_mode
function worldtool:process/2d_fill/check/get_direction

execute if score #temp2 worldtool matches 2.. if entity @s[tag=!wt.process.2d_fill.special_mode.track_end] run scoreboard players operation #processEndPosX worldtool = #processPosX worldtool
execute if score #temp2 worldtool matches 2.. if entity @s[tag=!wt.process.2d_fill.special_mode.track_end] run scoreboard players operation #processEndPosY worldtool = #processPosY worldtool
execute if score #temp2 worldtool matches 2.. if entity @s[tag=!wt.process.2d_fill.special_mode.track_end] run scoreboard players operation #processEndPosZ worldtool = #processPosZ worldtool

execute if score #temp2 worldtool matches 2.. run tag @s add wt.process.2d_fill.special_mode.track_end
