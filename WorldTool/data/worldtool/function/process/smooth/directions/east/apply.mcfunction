# Called recursively and by this direction's "load" function
# Applies the "height" changes that need to be made

scoreboard players operation #temp worldtool += #temp2 worldtool

execute unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run scoreboard players add #blocksPlaced worldtool 1
clone 27451 1 19 27451 1 19 ~ ~ ~ replace

execute if score #temp2 worldtool matches 1 unless score #temp worldtool > #diff worldtool positioned ~1 ~ ~ run function worldtool:process/smooth/directions/east/apply
execute if score #temp2 worldtool matches -1 unless score #temp worldtool <= #diff worldtool positioned ~-1 ~ ~ run function worldtool:process/smooth/directions/east/apply
