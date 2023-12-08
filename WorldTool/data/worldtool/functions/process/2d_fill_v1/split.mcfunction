
execute if score #temp worldtool matches 1 unless score #blocksChecked worldtool >= #blocksPerTick worldtool if score #processDirection worldtool matches 0 run function worldtool:process/2d_fill/x
execute if score #temp worldtool matches 1 unless score #blocksChecked worldtool >= #blocksPerTick worldtool if score #processDirection worldtool matches 1 run function worldtool:process/2d_fill/z
execute if score #temp worldtool matches 1 unless score #blocksChecked worldtool >= #blocksPerTick worldtool if score #processDirection worldtool matches 2 run function worldtool:process/2d_fill/-x
execute if score #temp worldtool matches 1 unless score #blocksChecked worldtool >= #blocksPerTick worldtool if score #processDirection worldtool matches 3 run function worldtool:process/2d_fill/-z
