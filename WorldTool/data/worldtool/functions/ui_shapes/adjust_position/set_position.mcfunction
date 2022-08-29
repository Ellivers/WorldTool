# Called by worldtool:input_check/player
# Sets the position to the inputted value

data modify storage worldtool:storage Temp.Position set from entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,sort=nearest,limit=1] Item.tag.WorldTool.Position
kill @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,sort=nearest,limit=1]

scoreboard players operation #ID_temp worldtool = @s wt.ID

scoreboard players set #positions_temp worldtool 0
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool run scoreboard players add #positions_temp worldtool 1

# Summon a new position if there isn't already one (bonus feature lol)
execute if score #positions_temp worldtool matches 0 run summon minecraft:marker ~ ~ ~ {Tags:["worldtool","wt.shape_position"]}
execute if score #positions_temp worldtool matches 0 run scoreboard players operation @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position,sort=nearest,limit=1] wt.ID = #ID_temp worldtool

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool run data modify entity @s Pos set from storage worldtool:storage Temp.Position

function worldtool:ui_shapes/adjust_position/menu
