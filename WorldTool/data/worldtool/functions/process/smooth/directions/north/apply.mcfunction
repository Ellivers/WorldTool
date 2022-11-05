# Called recursively and by this direction's "load" function
# Applies the "height" changes that need to be made

scoreboard players operation #temp worldtool += #temp2 worldtool

scoreboard players add #blocksPlaced worldtool 1
clone 27451 1 19 27451 1 19 ~ ~ ~ replace

execute if score #temp2 worldtool matches 1 unless score #temp worldtool >= #diffY worldtool positioned ~ ~ ~-1 run function worldtool:process/smooth/directions/north/apply
execute if score #temp2 worldtool matches -1 unless score #temp worldtool <= #diffY worldtool positioned ~ ~ ~1 run function worldtool:process/smooth/directions/north/apply
