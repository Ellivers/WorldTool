# Called by worldtool:process/smooth_calculate/main

# Get the smallest and largest end point differences
scoreboard players operation #diff1 worldtool = #processPosX worldtool
scoreboard players operation #diff1 worldtool -= #pos1xo worldtool
scoreboard players operation #diff2 worldtool = #processPosX worldtool
scoreboard players operation #diff2 worldtool -= #pos2xo worldtool
execute if score #diff1 worldtool matches ..-1 run scoreboard players operation #pos1xt worldtool = #diff1 worldtool
execute if score #diff2 worldtool matches ..-1 run scoreboard players operation #pos1xt worldtool = #diff2 worldtool
execute if score #diff1 worldtool matches 1.. run scoreboard players operation #pos2xt worldtool = #diff1 worldtool
execute if score #diff2 worldtool matches 1.. run scoreboard players operation #pos2xt worldtool = #diff2 worldtool

scoreboard players set #diff worldtool 0
scoreboard players set #divisionNum worldtool 0

scoreboard players operation #pos1yt worldtool = #processPosY worldtool
scoreboard players add #pos1yt worldtool 1
scoreboard players set #temp worldtool 0
scoreboard players set #temp2 worldtool 0
execute unless block ~-1 ~1 ~ #worldtool:air run scoreboard players set #temp2 worldtool 1
execute if block ~ ~1 ~ #worldtool:air if block ~-1 ~1 ~ #worldtool:air run scoreboard players set #temp2 worldtool -1
execute unless score #temp2 worldtool matches 0 if score #pos1yo worldtool < #pos2yo worldtool unless score #pos1yt worldtool > #pos2yo worldtool positioned ~ ~1 ~ run function worldtool:process/smooth_calculate/directions/west/search
execute unless score #temp2 worldtool matches 0 if score #pos1yo worldtool > #pos2yo worldtool unless score #pos1yt worldtool > #pos1yo worldtool positioned ~ ~1 ~ run function worldtool:process/smooth_calculate/directions/west/search

scoreboard players operation #diff worldtool += #temp worldtool
execute unless score #temp worldtool matches 0 run scoreboard players operation #divisionNum worldtool += #smoothDivision worldtool

scoreboard players operation #pos1yt worldtool = #processPosY worldtool
scoreboard players remove #pos1yt worldtool 1
scoreboard players set #temp worldtool 0
scoreboard players set #temp2 worldtool 0
execute unless block ~-1 ~-1 ~ #worldtool:air run scoreboard players set #temp2 worldtool 1
execute if block ~ ~-1 ~ #worldtool:air if block ~-1 ~-1 ~ #worldtool:air run scoreboard players set #temp2 worldtool -1
execute unless score #temp2 worldtool matches 0 if score #pos1yo worldtool > #pos2yo worldtool unless score #pos1yt worldtool < #pos2yo worldtool positioned ~ ~-1 ~ run function worldtool:process/smooth_calculate/directions/west/search
execute unless score #temp2 worldtool matches 0 if score #pos1yo worldtool < #pos2yo worldtool unless score #pos1yt worldtool < #pos1yo worldtool positioned ~ ~-1 ~ run function worldtool:process/smooth_calculate/directions/west/search

scoreboard players operation #diff worldtool += #temp worldtool
execute unless score #temp worldtool matches 0 run scoreboard players operation #divisionNum worldtool += #smoothDivision worldtool

scoreboard players operation #pos1zt worldtool = #processPosZ worldtool
scoreboard players add #pos1zt worldtool 1
scoreboard players set #temp worldtool 0
scoreboard players set #temp2 worldtool 0
execute unless block ~-1 ~ ~1 #worldtool:air run scoreboard players set #temp2 worldtool 1
execute if block ~ ~ ~1 #worldtool:air if block ~-1 ~ ~1 #worldtool:air run scoreboard players set #temp2 worldtool -1
execute unless score #temp2 worldtool matches 0 if score #pos1zo worldtool < #pos2zo worldtool unless score #pos1zt worldtool > #pos2zo worldtool positioned ~ ~ ~1 run function worldtool:process/smooth_calculate/directions/west/search
execute unless score #temp2 worldtool matches 0 if score #pos1zo worldtool > #pos2zo worldtool unless score #pos1zt worldtool > #pos1zo worldtool positioned ~ ~ ~1 run function worldtool:process/smooth_calculate/directions/west/search

scoreboard players operation #diff worldtool += #temp worldtool
execute unless score #temp worldtool matches 0 run scoreboard players operation #divisionNum worldtool += #smoothDivision worldtool

scoreboard players operation #pos1zt worldtool = #processPosZ worldtool
scoreboard players remove #pos1zt worldtool 1
scoreboard players set #temp worldtool 0
scoreboard players set #temp2 worldtool 0
execute unless block ~-1 ~ ~-1 #worldtool:air run scoreboard players set #temp2 worldtool 1
execute if block ~ ~ ~-1 #worldtool:air if block ~-1 ~ ~-1 #worldtool:air run scoreboard players set #temp2 worldtool -1
execute unless score #temp2 worldtool matches 0 if score #pos1zo worldtool > #pos2zo worldtool unless score #pos1zt worldtool < #pos2zo worldtool positioned ~ ~ ~-1 run function worldtool:process/smooth_calculate/directions/west/search
execute unless score #temp2 worldtool matches 0 if score #pos1zo worldtool < #pos2zo worldtool unless score #pos1zt worldtool < #pos1zo worldtool positioned ~ ~ ~-1 run function worldtool:process/smooth_calculate/directions/west/search

scoreboard players operation #diff worldtool += #temp worldtool
execute unless score #temp worldtool matches 0 run scoreboard players operation #divisionNum worldtool += #smoothDivision worldtool

function worldtool:process/smooth_calculate/directions/round

execute unless score #temp worldtool matches 0 run data modify storage worldtool:storage Processes[-1].Generated.West append value {Pos:[0,0,0],Diff:0}
execute unless score #temp worldtool matches 0 store result storage worldtool:storage Processes[-1].Generated.West[-1].Pos[0] int 1 run scoreboard players get #processPosX worldtool
execute unless score #temp worldtool matches 0 store result storage worldtool:storage Processes[-1].Generated.West[-1].Pos[1] int 1 run scoreboard players get #processPosY worldtool
execute unless score #temp worldtool matches 0 store result storage worldtool:storage Processes[-1].Generated.West[-1].Pos[2] int 1 run scoreboard players get #processPosZ worldtool
execute unless score #temp worldtool matches 0 store result storage worldtool:storage Processes[-1].Generated.West[-1].Diff int 1 run scoreboard players get #temp worldtool