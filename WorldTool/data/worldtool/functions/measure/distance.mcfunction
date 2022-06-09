# Called by worldtool:ui_general/measure/menu
# Gets the distance between positions 1 and 2

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos1
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos2

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

scoreboard players operation #temp4 worldtool = #sqrtOutput worldtool
scoreboard players operation #temp4 worldtool /= #10 worldtool
scoreboard players operation #temp4 worldtool *= #10 worldtool

scoreboard players operation #outputDecimals worldtool = #sqrtOutput worldtool
scoreboard players operation #outputDecimals worldtool -= #temp4 worldtool
scoreboard players operation #sqrtOutput worldtool /= #10 worldtool

tellraw @s[tag=!wt.no_message] {"nbt":"Translation.\"info.measure.distance\"","storage": "worldtool:storage","interpret": true}

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load
