# Called by worldtool:ui_general/options/adjust_positions/menu
# Commands to be run as the two positions

execute if entity @s[tag=wt.nudge_selected,tag=wt.pos1] run scoreboard players set #temp1 worldtool 1
execute if entity @s[tag=wt.nudge_selected,tag=wt.pos2] run scoreboard players set #temp2 worldtool 1

execute if entity @s[tag=wt.pos1] run function worldtool:technical/common/temp_pos1
execute if entity @s[tag=wt.pos2] run function worldtool:technical/common/temp_pos2
