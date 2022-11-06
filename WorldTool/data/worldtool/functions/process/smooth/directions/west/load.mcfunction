# Called by worldtool:process/smooth/main

scoreboard players set #diffX worldtool 0
scoreboard players set #divisionNum worldtool 0

scoreboard players operation #pos1yt worldtool = #processPosY worldtool
scoreboard players add #pos1yt worldtool 1
scoreboard players set #temp worldtool 0
scoreboard players set #temp2 worldtool 0
execute unless block ~-1 ~1 ~ #worldtool:air run scoreboard players set #temp2 worldtool 1
execute if block ~ ~1 ~ #worldtool:air if block ~-1 ~1 ~ #worldtool:air run scoreboard players set #temp2 worldtool -1
execute unless score #temp2 worldtool matches 0 if score #pos1yo worldtool < #pos2yo worldtool unless score #pos1yt worldtool > #pos2yo worldtool positioned ~ ~1 ~ run function worldtool:process/smooth/directions/west/search
execute unless score #temp2 worldtool matches 0 if score #pos1yo worldtool > #pos2yo worldtool unless score #pos1yt worldtool > #pos1yo worldtool positioned ~ ~1 ~ run function worldtool:process/smooth/directions/west/search

scoreboard players operation #diffX worldtool += #temp worldtool
execute unless score #temp worldtool matches 0 run scoreboard players add #divisionNum worldtool 2

scoreboard players operation #pos1yt worldtool = #processPosY worldtool
scoreboard players remove #pos1yt worldtool 1
scoreboard players set #temp worldtool 0
scoreboard players set #temp2 worldtool 0
execute unless block ~-1 ~-1 ~ #worldtool:air run scoreboard players set #temp2 worldtool 1
execute if block ~ ~-1 ~ #worldtool:air if block ~-1 ~-1 ~ #worldtool:air run scoreboard players set #temp2 worldtool -1
execute unless score #temp2 worldtool matches 0 if score #pos1yo worldtool > #pos2yo worldtool unless score #pos1yt worldtool < #pos2yo worldtool positioned ~ ~-1 ~ run function worldtool:process/smooth/directions/west/search
execute unless score #temp2 worldtool matches 0 if score #pos1yo worldtool < #pos2yo worldtool unless score #pos1yt worldtool < #pos1yo worldtool positioned ~ ~-1 ~ run function worldtool:process/smooth/directions/west/search

scoreboard players operation #diffX worldtool += #temp worldtool
execute unless score #temp worldtool matches 0 run scoreboard players add #divisionNum worldtool 2

scoreboard players operation #pos1zt worldtool = #processPosZ worldtool
scoreboard players add #pos1zt worldtool 1
scoreboard players set #temp worldtool 0
scoreboard players set #temp2 worldtool 0
execute unless block ~-1 ~ ~1 #worldtool:air run scoreboard players set #temp2 worldtool 1
execute if block ~ ~ ~1 #worldtool:air if block ~-1 ~ ~1 #worldtool:air run scoreboard players set #temp2 worldtool -1
execute unless score #temp2 worldtool matches 0 if score #pos1zo worldtool < #pos2zo worldtool unless score #pos1zt worldtool > #pos2zo worldtool positioned ~ ~ ~1 run function worldtool:process/smooth/directions/west/search
execute unless score #temp2 worldtool matches 0 if score #pos1zo worldtool > #pos2zo worldtool unless score #pos1zt worldtool > #pos1zo worldtool positioned ~ ~ ~1 run function worldtool:process/smooth/directions/west/search

scoreboard players operation #diffX worldtool += #temp worldtool
execute unless score #temp worldtool matches 0 run scoreboard players add #divisionNum worldtool 2

scoreboard players operation #pos1zt worldtool = #processPosZ worldtool
scoreboard players remove #pos1zt worldtool 1
scoreboard players set #temp worldtool 0
scoreboard players set #temp2 worldtool 0
execute unless block ~-1 ~ ~-1 #worldtool:air run scoreboard players set #temp2 worldtool 1
execute if block ~ ~ ~-1 #worldtool:air if block ~-1 ~ ~-1 #worldtool:air run scoreboard players set #temp2 worldtool -1
execute unless score #temp2 worldtool matches 0 if score #pos1zo worldtool > #pos2zo worldtool unless score #pos1zt worldtool < #pos2zo worldtool positioned ~ ~ ~-1 run function worldtool:process/smooth/directions/west/search
execute unless score #temp2 worldtool matches 0 if score #pos1zo worldtool < #pos2zo worldtool unless score #pos1zt worldtool < #pos1zo worldtool positioned ~ ~ ~-1 run function worldtool:process/smooth/directions/west/search

scoreboard players operation #diffX worldtool += #temp worldtool
execute unless score #temp worldtool matches 0 run scoreboard players add #divisionNum worldtool 2

scoreboard players operation #diffX worldtool /= #divisionNum worldtool
execute if score #diffX worldtool matches 1.. run clone ~ ~ ~ ~ ~ ~ 27451 1 19
execute if score #diffX worldtool matches 1.. run scoreboard players set #temp2 worldtool 1
execute if score #diffX worldtool matches ..-1 run clone ~-1 ~ ~ ~-1 ~ ~ 27451 1 19
execute if score #diffX worldtool matches ..-1 run scoreboard players set #temp2 worldtool -1
scoreboard players set #temp worldtool 0
execute unless score #diffX worldtool matches 0 run function worldtool:process/smooth/directions/west/apply