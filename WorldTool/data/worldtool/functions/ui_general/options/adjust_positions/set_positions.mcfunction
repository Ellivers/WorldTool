# Called by worldtool:ui_general/options/adjust_positions/menu
# Sets position 1 and 2 to the entered values

data modify storage worldtool:storage Temp.Positions set from entity @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,sort=nearest,limit=1] Item.tag.WorldTool
kill @e[type=minecraft:item,tag=worldtool,tag=wt.selected_data,sort=nearest,limit=1]

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run data modify entity @s Pos set from storage worldtool:storage Temp.Positions.Pos1
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run data modify entity @s Pos set from storage worldtool:storage Temp.Positions.Pos2

function worldtool:ui_general/options/adjust_positions/menu
