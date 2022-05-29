# Called by worldtool:ui_general/options/adjust_positions/menu
# Commands to be run as the two positions

execute if entity @s[tag=wt.nudge_selected] run scoreboard players add #temp worldtool 1

execute if entity @s[tag=wt.pos1] run function worldtool:technical/common/temp_pos1
execute if entity @s[tag=wt.pos2] run function worldtool:technical/common/temp_pos2
