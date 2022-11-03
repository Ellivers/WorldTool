# Called by worldtool:process/repeat/main
# Moves to the next position to copy the area to

execute at @s run clone ~ ~ ~ ~ ~ ~ 27451 1 19
execute at 9880ccfe-fdf6-4538-838a-ddc75a54608e unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/repeat/check_place

scoreboard players set #temp worldtool 0

execute if score #repeatPosX worldtool < #repeatDestX worldtool store success score #temp worldtool run scoreboard players add #repeatPosX worldtool 1
execute if score #repeatPosX worldtool > #repeatDestX worldtool store success score #temp worldtool run scoreboard players remove #repeatPosX worldtool 1

execute if score #temp worldtool matches 0 if score #repeatPosX worldtool = #repeatDestX worldtool if score #repeatPosZ worldtool < #repeatDestZ worldtool store success score #temp worldtool run function worldtool:process/repeat/next/z
execute if score #temp worldtool matches 0 if score #repeatPosX worldtool = #repeatDestX worldtool if score #repeatPosZ worldtool > #repeatDestZ worldtool store success score #temp worldtool run function worldtool:process/repeat/next/-z

execute if score #temp worldtool matches 0 if score #repeatPosX worldtool = #repeatDestX worldtool if score #repeatPosZ worldtool = #repeatDestZ worldtool if score #repeatPosY worldtool < #repeatDestY worldtool store success score #temp worldtool run function worldtool:process/repeat/next/y
execute if score #temp worldtool matches 0 if score #repeatPosX worldtool = #repeatDestX worldtool if score #repeatPosZ worldtool = #repeatDestZ worldtool if score #repeatPosY worldtool > #repeatDestY worldtool store success score #temp worldtool run function worldtool:process/repeat/next/-y

execute if score #temp worldtool matches 0 run function worldtool:process/complete

scoreboard players operation #pos1xt worldtool = #areaSizeX worldtool
scoreboard players operation #pos1xt worldtool *= #repeatPosX worldtool
scoreboard players operation #temp worldtool = #repeatSpacing worldtool
scoreboard players operation #temp worldtool *= #repeatPosX worldtool
scoreboard players operation #pos1xt worldtool += #temp worldtool
scoreboard players operation #pos1xt worldtool += #pos1xo worldtool

scoreboard players operation #pos1yt worldtool = #areaSizeY worldtool
scoreboard players operation #pos1yt worldtool *= #repeatPosY worldtool
scoreboard players operation #temp worldtool = #repeatSpacing worldtool
scoreboard players operation #temp worldtool *= #repeatPosY worldtool
scoreboard players operation #pos1yt worldtool += #temp worldtool
scoreboard players operation #pos1yt worldtool += #pos1yo worldtool

scoreboard players operation #pos1zt worldtool = #areaSizeZ worldtool
scoreboard players operation #pos1zt worldtool *= #repeatPosZ worldtool
scoreboard players operation #temp worldtool = #repeatSpacing worldtool
scoreboard players operation #temp worldtool *= #repeatPosZ worldtool
scoreboard players operation #pos1zt worldtool += #temp worldtool
scoreboard players operation #pos1zt worldtool += #pos1zo worldtool

data modify storage worldtool:storage Temp.Pos set value [0d,0d,0d]
execute store result storage worldtool:storage Temp.Pos[0] double 1 run scoreboard players get #pos1xt worldtool
execute store result storage worldtool:storage Temp.Pos[1] double 1 run scoreboard players get #pos1yt worldtool
execute store result storage worldtool:storage Temp.Pos[2] double 1 run scoreboard players get #pos1zt worldtool
data modify entity 9880ccfe-fdf6-4538-838a-ddc75a54608e Pos set from storage worldtool:storage Temp.Pos

data modify storage worldtool:storage Temp.Pos set value [0d,0d,0d]
execute store result storage worldtool:storage Temp.Pos[0] double 1 run scoreboard players get #pos1xo worldtool
execute store result storage worldtool:storage Temp.Pos[1] double 1 run scoreboard players get #pos1yo worldtool
execute store result storage worldtool:storage Temp.Pos[2] double 1 run scoreboard players get #pos1zo worldtool
data modify entity @s Pos set from storage worldtool:storage Temp.Pos

scoreboard players operation #originPosX worldtool = #pos1xo worldtool
scoreboard players operation #originPosY worldtool = #pos1yo worldtool
scoreboard players operation #originPosZ worldtool = #pos1zo worldtool

scoreboard players operation #pos1x worldtool = #pos1xo worldtool
scoreboard players operation #pos1y worldtool = #pos1yo worldtool
scoreboard players operation #pos1z worldtool = #pos1zo worldtool

execute unless score #processPosX worldtool = #pos2x worldtool run scoreboard players operation #pos2x worldtool = #pos2xo worldtool
execute unless score #processPosY worldtool = #pos2y worldtool run scoreboard players operation #pos2y worldtool = #pos2yo worldtool
execute unless score #processPosZ worldtool = #pos2z worldtool run scoreboard players operation #pos2z worldtool = #pos2zo worldtool
