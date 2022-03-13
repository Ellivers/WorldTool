# Called by various functions
# Calculates the square root. Made by Dominexis

# Initialize values

scoreboard players set #sqrtOutput worldtool 0
scoreboard players set #sqrtIncrement worldtool 32768
scoreboard players operation #sqrtInput worldtool *= #sqrtScaleFactor worldtool

# Execute recursive function

function worldtool:technical/common/sqrt/loop
