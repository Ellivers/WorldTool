scoreboard players operation #ID_temp worldtool = @s wt_ID

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run function worldtool:load_process/positions/get_pos1
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s wt_ID = #ID_temp worldtool run function worldtool:load_process/positions/get_pos2

scoreboard players operation $drawingposY worldtool = $pos1y worldtool
scoreboard players operation $drawingposZ worldtool = $pos1z worldtool
scoreboard players operation $drawingposX worldtool = $pos1x worldtool

scoreboard players set #blockschecked worldtool 0

execute if score #madeInstances worldtool >= #maxInstances worldtool if score #currentDirection worldtool matches 2 run function worldtool:processes/repeat/switch_to_3
execute if score #madeInstances worldtool >= #maxInstances worldtool if score #currentDirection worldtool matches 1 run function worldtool:processes/repeat/switch_to_2

execute store result score #tempPosX worldtool run data get entity @s Pos[0]
execute store result score #tempPosY worldtool run data get entity @s Pos[1]
execute store result score #tempPosZ worldtool run data get entity @s Pos[2]
# Reminder: difference is pos1 - pos2
scoreboard players operation #tempPosX worldtool -= #posDifferenceX worldtool
scoreboard players operation #tempPosY worldtool -= #posDifferenceY worldtool
scoreboard players operation #tempPosZ worldtool -= #posDifferenceZ worldtool

execute if score #direction worldtool matches 1 run scoreboard players operation #tempPosX worldtool += #instanceDistance worldtool
execute if score #direction worldtool matches 2 run scoreboard players operation #tempPosX worldtool -= #instanceDistance worldtool
execute if score #direction worldtool matches 3 run scoreboard players operation #tempPosY worldtool += #instanceDistance worldtool
execute if score #direction worldtool matches 4 run scoreboard players operation #tempPosY worldtool -= #instanceDistance worldtool
