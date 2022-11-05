# Called by worldtool:process/smooth/main

scoreboard players set #diffY worldtool 0
scoreboard players set #divisionNum worldtool 0

scoreboard players operation #pos1xt worldtool = #processPosX worldtool
scoreboard players add #pos1xt worldtool 1
scoreboard players set #temp worldtool 0
scoreboard players set #temp2 worldtool 0
execute unless block ~1 ~-1 ~ #worldtool:air run scoreboard players set #temp2 worldtool 1
execute if block ~1 ~ ~ #worldtool:air if block ~1 ~-1 ~ #worldtool:air run scoreboard players set #temp2 worldtool -1
execute unless score #temp2 worldtool matches 0 if score #pos1xo worldtool < #pos2xo worldtool unless score #pos1xt worldtool > #pos2xo worldtool positioned ~1 ~ ~ run function worldtool:process/smooth/directions/down/search
execute unless score #temp2 worldtool matches 0 if score #pos1xo worldtool > #pos2xo worldtool unless score #pos1xt worldtool > #pos1xo worldtool positioned ~1 ~ ~ run function worldtool:process/smooth/directions/down/search

scoreboard players operation #diffY worldtool += #temp worldtool
execute unless score #temp worldtool matches 0 run scoreboard players add #divisionNum worldtool 2

scoreboard players operation #pos1xt worldtool = #processPosX worldtool
scoreboard players remove #pos1xt worldtool 1
scoreboard players set #temp worldtool 0
scoreboard players set #temp2 worldtool 0
execute unless block ~-1 ~-1 ~ #worldtool:air run scoreboard players set #temp2 worldtool 1
execute if block ~-1 ~ ~ #worldtool:air if block ~-1 ~-1 ~ #worldtool:air run scoreboard players set #temp2 worldtool -1
execute unless score #temp2 worldtool matches 0 if score #pos1xo worldtool > #pos2xo worldtool unless score #pos1xt worldtool < #pos2xo worldtool positioned ~-1 ~ ~ run function worldtool:process/smooth/directions/down/search
execute unless score #temp2 worldtool matches 0 if score #pos1xo worldtool < #pos2xo worldtool unless score #pos1xt worldtool < #pos1xo worldtool positioned ~-1 ~ ~ run function worldtool:process/smooth/directions/down/search

scoreboard players operation #diffY worldtool += #temp worldtool
execute unless score #temp worldtool matches 0 run scoreboard players add #divisionNum worldtool 2

scoreboard players operation #pos1zt worldtool = #processPosZ worldtool
scoreboard players add #pos1zt worldtool 1
scoreboard players set #temp worldtool 0
scoreboard players set #temp2 worldtool 0
execute unless block ~ ~-1 ~1 #worldtool:air run scoreboard players set #temp2 worldtool 1
execute if block ~ ~ ~1 #worldtool:air if block ~ ~-1 ~1 #worldtool:air run scoreboard players set #temp2 worldtool -1
execute unless score #temp2 worldtool matches 0 if score #pos1zo worldtool < #pos2zo worldtool unless score #pos1zt worldtool > #pos2zo worldtool positioned ~ ~ ~1 run function worldtool:process/smooth/directions/down/search
execute unless score #temp2 worldtool matches 0 if score #pos1zo worldtool > #pos2zo worldtool unless score #pos1zt worldtool > #pos1zo worldtool positioned ~ ~ ~1 run function worldtool:process/smooth/directions/down/search

scoreboard players operation #diffY worldtool += #temp worldtool
execute unless score #temp worldtool matches 0 run scoreboard players add #divisionNum worldtool 2

scoreboard players operation #pos1zt worldtool = #processPosZ worldtool
scoreboard players remove #pos1zt worldtool 1
scoreboard players set #temp worldtool 0
scoreboard players set #temp2 worldtool 0
execute unless block ~ ~-1 ~-1 #worldtool:air run scoreboard players set #temp2 worldtool 1
execute if block ~ ~ ~-1 #worldtool:air if block ~ ~-1 ~-1 #worldtool:air run scoreboard players set #temp2 worldtool -1
execute unless score #temp2 worldtool matches 0 if score #pos1zo worldtool > #pos2zo worldtool unless score #pos1zt worldtool < #pos2zo worldtool positioned ~ ~ ~-1 run function worldtool:process/smooth/directions/down/search
execute unless score #temp2 worldtool matches 0 if score #pos1zo worldtool < #pos2zo worldtool unless score #pos1zt worldtool < #pos1zo worldtool positioned ~ ~ ~-1 run function worldtool:process/smooth/directions/down/search

scoreboard players operation #diffY worldtool += #temp worldtool
execute unless score #temp worldtool matches 0 run scoreboard players add #divisionNum worldtool 2

scoreboard players operation #diffY worldtool /= #divisionNum worldtool
execute if score #diffY worldtool matches 1.. run clone ~ ~ ~ ~ ~ ~ 27451 1 19
execute if score #diffY worldtool matches 1.. run scoreboard players set #temp2 worldtool 1
execute if score #diffY worldtool matches ..-1 run clone ~ ~-1 ~ ~ ~-1 ~ 27451 1 19
execute if score #diffY worldtool matches ..-1 run scoreboard players set #temp2 worldtool -1
scoreboard players set #temp worldtool 0
execute unless score #diffY worldtool matches 0 run function worldtool:process/smooth/directions/down/apply
