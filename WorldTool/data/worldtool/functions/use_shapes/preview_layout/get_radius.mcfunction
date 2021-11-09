# Called by various (shape preview) functions
# Gets the selected radius and sets it to the #temp.radius score

scoreboard players operation #temp.radius worldtool = @s wt.diameter
scoreboard players operation #temp.radius worldtool /= #2 worldtool
