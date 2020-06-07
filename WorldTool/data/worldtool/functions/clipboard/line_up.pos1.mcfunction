execute store result score #tempPos1CX worldtool run data get entity @s Pos[0]
execute store result score #tempPos1CY worldtool run data get entity @s Pos[1]
execute store result score #tempPos1CZ worldtool run data get entity @s Pos[2]

scoreboard players operation #tempPosDest1X worldtool = #tempPos1CX worldtool
scoreboard players operation #tempPosDest1Y worldtool = #tempPos1CY worldtool
scoreboard players operation #tempPosDest1Z worldtool = #tempPos1CZ worldtool

scoreboard players operation #tempPosDest1X worldtool += #tempDifferenceX worldtool
scoreboard players operation #tempPosDest1Y worldtool += #tempDifferenceY worldtool
scoreboard players operation #tempPosDest1Z worldtool += #tempDifferenceZ worldtool

execute if score #tempPos2Y worldtool > #tempPos1Y worldtool run scoreboard players add #tempPosDest1Y worldtool 2

execute if score #tempPos2X worldtool > #tempPos1X worldtool store result entity @s Pos[0] double 1 run scoreboard players get #tempPosDest1X worldtool
execute if score #tempPos2Y worldtool > #tempPos1Y worldtool store result entity @s Pos[1] double 1 run scoreboard players get #tempPosDest1Y worldtool
execute if score #tempPos2Z worldtool > #tempPos1Z worldtool store result entity @s Pos[2] double 1 run scoreboard players get #tempPosDest1Z worldtool