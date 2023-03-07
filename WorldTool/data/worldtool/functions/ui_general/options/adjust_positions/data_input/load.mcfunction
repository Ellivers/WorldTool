# Called by worldtool:ui_general/options/adjust_positions/menu
# Gets the inputted data

data modify storage worldtool:storage Temp.Data set from entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,sort=nearest,limit=1] Item.tag.WorldTool
kill @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,sort=nearest,limit=1]

scoreboard players set #temp worldtool 0
execute store success score #temp worldtool if data storage worldtool:storage Temp.Data.Pos1
execute if score #temp worldtool matches 0 store success score #temp worldtool if data storage worldtool:storage Temp.Data.Pos2
execute if score #temp worldtool matches 1 run function worldtool:ui_general/options/adjust_positions/data_input/set_positions

execute if data storage worldtool:storage Temp.Data.StepSize run function worldtool:ui_general/options/adjust_positions/data_input/set_step_size

function worldtool:ui_general/options/adjust_positions/menu
