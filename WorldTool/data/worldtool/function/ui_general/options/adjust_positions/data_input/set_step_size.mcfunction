# Called by worldtool:ui_general/options/adjust_positions/data_input/load
# Sets the position nudge step size to the entered value

execute store result score @s wt.size run data get storage worldtool:storage Temp.Data.StepSize
execute if score @s wt.size matches ..0 run scoreboard players set @s wt.size 1
