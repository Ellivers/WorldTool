# Called by worldtool:ui_general/options/adjust_positions/menu
# Nudges the selected positions

scoreboard players operation #ID_temp worldtool = @s wt.ID

scoreboard players set #temp.X worldtool 0
scoreboard players set #temp.Y worldtool 0
scoreboard players set #temp.Z worldtool -1

scoreboard players operation #stepSize worldtool = @s wt.size

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.position,tag=wt.nudge_selected] if score @s wt.ID = #ID_temp worldtool run function worldtool:ui_general/options/adjust_positions/nudge/nudge

function worldtool:ui_general/options/adjust_positions/menu
