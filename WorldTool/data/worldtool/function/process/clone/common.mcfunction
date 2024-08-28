# Called by worldtool:process/clone/normal/main and worldtool:process/clone/rotate/main
# Common commands for both clone processes

scoreboard players add #blocksChecked worldtool 1

execute if score #hasMoved worldtool matches 0 unless score #tempDir worldtool matches 0 run function worldtool:process/correct_pos
scoreboard players operation #prevProcessPosX worldtool = #processPosX worldtool
scoreboard players operation #prevProcessPosY worldtool = #processPosY worldtool
scoreboard players operation #prevProcessPosZ worldtool = #processPosZ worldtool

execute if entity @s[tag=!wt.process.clone.move] run clone ~ ~ ~ ~ ~ ~ 27451 1 19
execute if score #blockProcessed worldtool matches 0 if score #hasMoved worldtool matches 1 if entity @s[tag=wt.process.clone.move,tag=!wt.process.clone.filter.normal,tag=!wt.process.clone.filter.exclude] store success score #blockProcessed worldtool run clone ~ ~ ~ ~ ~ ~ 27451 1 19 replace move

execute if score #blockProcessed worldtool matches 0 if score #hasMoved worldtool matches 1 if entity @s[tag=wt.process.clone.move,tag=wt.process.clone.filter.normal] if blocks 27449 1 19 27449 1 19 ~ ~ ~ all store success score #blockProcessed worldtool run clone ~ ~ ~ ~ ~ ~ 27451 1 19 replace move
execute if score #blockProcessed worldtool matches 0 if score #hasMoved worldtool matches 1 if entity @s[tag=wt.process.clone.move,tag=wt.process.clone.filter.exclude] unless blocks 27449 1 19 27449 1 19 ~ ~ ~ all store success score #blockProcessed worldtool run clone ~ ~ ~ ~ ~ ~ 27451 1 19 replace move

execute at 9880ccfe-fdf6-4538-838a-ddc75a54608e store success score #blockProcessed2 worldtool if blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all
execute at 9880ccfe-fdf6-4538-838a-ddc75a54608e if score #blockProcessed2 worldtool matches 0 run function worldtool:process/clone/check_place

execute store result score #hasMoved worldtool store result score #hasMoved2 worldtool run scoreboard players set #tempDir worldtool 0
execute if score #blockProcessed2 worldtool matches 1 run scoreboard players set #blockProcessed worldtool 0
