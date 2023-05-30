# Called by worldtool:ui_general/options/adjust_positions/data_input/load
# Sets position 1 and 2 to the entered values

scoreboard players operation #ID_temp worldtool = @s wt.ID

scoreboard players set #temp1 worldtool 0
scoreboard players set #temp2 worldtool 0
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] store result score #temp1 worldtool if score @s wt.ID = #ID_temp worldtool
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] store result score #temp2 worldtool if score @s wt.ID = #ID_temp worldtool

execute if score #temp1 worldtool matches 0 run function worldtool:use_tool/click/ray_hit/general/pos1
execute if score #temp2 worldtool matches 0 run function worldtool:use_tool/click/ray_hit/general/pos2

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run data modify entity @s Pos set from storage worldtool:storage Temp.Data.Pos1
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run data modify entity @s Pos set from storage worldtool:storage Temp.Data.Pos2
