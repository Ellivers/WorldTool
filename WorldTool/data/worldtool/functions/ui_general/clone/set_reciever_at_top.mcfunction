# Called by worldtool:process_start/common/start_from_top
# Makes sure the receiver is also at the top of the selected area

scoreboard players operation #temp worldtool = #pos1y worldtool
scoreboard players operation #temp worldtool -= #pos2y worldtool

execute store result score #temp2 worldtool run data get entity @s Pos[1]
scoreboard players operation #temp2 worldtool += #temp worldtool
execute store result entity @s Pos[1] double 1 run scoreboard players get #temp2 worldtool
