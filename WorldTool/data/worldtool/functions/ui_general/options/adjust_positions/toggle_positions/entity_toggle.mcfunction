# Called by worldtool:ui_general/options/adjust_positions/toggle_positions/pos1_toggle and worldtool:ui_general/options/adjust_positions/toggle_positions/pos2_toggle
# Toggles the selection tag on a position entity

execute store result score #temp worldtool if entity @s[tag=wt.nudge_selected]

execute if score #temp worldtool matches 1.. run tag @s remove wt.nudge_selected
execute unless score #temp worldtool matches 1.. run tag @s add wt.nudge_selected
