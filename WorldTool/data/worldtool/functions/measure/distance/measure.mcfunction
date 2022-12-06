# Called by worldtool:measure/distance/load and various shape preview functions
# Gets the distance between two positions

scoreboard players operation #temp worldtool = #pos1xt worldtool
scoreboard players operation #temp worldtool -= #pos2xt worldtool
scoreboard players operation #temp worldtool *= #temp worldtool

scoreboard players operation #temp2 worldtool = #pos1yt worldtool
scoreboard players operation #temp2 worldtool -= #pos2yt worldtool
scoreboard players operation #temp2 worldtool *= #temp2 worldtool

scoreboard players operation #temp3 worldtool = #pos1zt worldtool
scoreboard players operation #temp3 worldtool -= #pos2zt worldtool
scoreboard players operation #temp3 worldtool *= #temp3 worldtool

scoreboard players operation #sqrtInput worldtool = #temp worldtool
scoreboard players operation #sqrtInput worldtool += #temp2 worldtool
scoreboard players operation #sqrtInput worldtool += #temp3 worldtool

scoreboard players set #sqrtScaleFactor worldtool 100
function worldtool:technical/common/sqrt/load

scoreboard players operation #scaledDistance worldtool = #sqrtOutput worldtool
scoreboard players operation #temp4 worldtool = #scaledDistance worldtool
scoreboard players operation #temp4 worldtool /= #10 worldtool
scoreboard players operation #temp4 worldtool *= #10 worldtool

scoreboard players operation #outputDecimals worldtool = #sqrtOutput worldtool
scoreboard players operation #outputDecimals worldtool -= #temp4 worldtool
scoreboard players operation #sqrtOutput worldtool /= #10 worldtool

tellraw @s[tag=!wt.no_message] {"nbt":"Translation.\"info.measure.distance\"","storage": "worldtool:storage","interpret": true}
tag @s remove wt.no_message

function #worldtool:hooks/measure/distance_done
