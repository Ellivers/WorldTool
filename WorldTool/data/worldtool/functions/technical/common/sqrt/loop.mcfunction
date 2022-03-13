# Called recursively and by worldtool:technical/commmon/sqrt/load
# Loop for square root calculations


# Compute test

scoreboard players operation #sqrtTest worldtool = #sqrtOutput worldtool
scoreboard players operation #sqrtTest worldtool += #sqrtIncrement worldtool
scoreboard players operation #sqrtTest worldtool *= #sqrtTest worldtool

# Compare values

execute if score #sqrtTest worldtool <= #sqrtInput worldtool run scoreboard players operation #sqrtOutput worldtool += #sqrtIncrement worldtool

# Execute recursive function

scoreboard players operation #sqrtIncrement worldtool /= #2 worldtool
execute if score #sqrtIncrement worldtool matches 1.. run function worldtool:technical/common/sqrt/loop
