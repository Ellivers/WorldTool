# Called recursively and by this direction's "load" functions
# Gets the difference in "height" between two block rows

scoreboard players operation #temp worldtool += #temp2 worldtool

execute if score #temp2 worldtool matches 1 unless score #temp worldtool >= #diffThreshold worldtool positioned ~1 ~ ~ unless block ~ ~ ~ #worldtool:air run function worldtool:process/smooth/directions/east/search
execute if score #temp2 worldtool matches -1 unless score #temp worldtool <= #diffThresholdNegative worldtool positioned ~-1 ~ ~ if block ~ ~ ~ #worldtool:air run function worldtool:process/smooth/directions/east/search
