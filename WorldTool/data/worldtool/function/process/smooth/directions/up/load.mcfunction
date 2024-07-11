# Called by worldtool:process/smooth/main

execute store result score #pos1xt worldtool run data get storage worldtool:storage Processes[-1].Input.Up[0].Pos[0]
execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[-1].Input.Up[0].Pos[1]
execute store result score #pos1zt worldtool run data get storage worldtool:storage Processes[-1].Input.Up[0].Pos[2]

scoreboard players set #diff worldtool 0
execute if score #pos1xt worldtool = #processPosX worldtool if score #pos1yt worldtool = #processPosY worldtool if score #pos1zt worldtool = #processPosZ worldtool store result score #diff worldtool run data get storage worldtool:storage Processes[-1].Input.Up[0].Diff

execute if score #diff worldtool matches 1.. run clone ~ ~ ~ ~ ~ ~ 27451 1 19
execute if score #diff worldtool matches 1.. run scoreboard players set #temp2 worldtool 1
execute if score #diff worldtool matches ..-1 run clone ~ ~1 ~ ~ ~1 ~ 27451 1 19
execute if score #diff worldtool matches ..-1 run scoreboard players set #temp2 worldtool -1
scoreboard players set #temp worldtool 0
execute unless score #diff worldtool matches 0 run function worldtool:process/smooth/directions/up/apply

execute unless score #diff worldtool matches 0 run data remove storage worldtool:storage Processes[-1].Input.Up[0]
