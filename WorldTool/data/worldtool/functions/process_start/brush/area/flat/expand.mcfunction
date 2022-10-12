# Called recursively and by worldtool:process_start/brush/area/flat/load
# Selects the area of the selected brush size and axis

scoreboard players add #temp3 worldtool 2

execute if score #temp.X worldtool matches 0 run scoreboard players remove #offset1x worldtool 1
execute if score #temp.Y worldtool matches 0 run scoreboard players remove #offset1y worldtool 1
execute if score #temp.Z worldtool matches 0 run scoreboard players remove #offset1z worldtool 1
execute if score #temp.X worldtool matches 0 run scoreboard players add #offset2x worldtool 1
execute if score #temp.Y worldtool matches 0 run scoreboard players add #offset2y worldtool 1
execute if score #temp.Z worldtool matches 0 run scoreboard players add #offset2z worldtool 1

execute if score #temp3 worldtool < #brushSize_temp worldtool run function worldtool:process_start/brush/area/flat/expand
