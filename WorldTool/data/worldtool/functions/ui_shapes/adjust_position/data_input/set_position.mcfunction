# Called by worldtool:ui_shapes/adjust_position/data_input/load
# Sets the position to the entered value

scoreboard players operation #ID_temp worldtool = @s wt.ID

scoreboard players set #positions_temp worldtool 0
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool run scoreboard players add #positions_temp worldtool 1

# Summon a new position if there isn't already one
execute if score #positions_temp worldtool matches 0 run function worldtool:ui_shapes/summon_position

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool run data modify entity @s Pos set from storage worldtool:storage Temp.Data.Position
