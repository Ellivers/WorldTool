# Called by worldtool:ui_general/page1 and worldtool:ui_general/options/nudge
# Gets the positions ready for some particle action

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:ui_general/arrange_positions/pos1
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:ui_general/arrange_positions/pos2
