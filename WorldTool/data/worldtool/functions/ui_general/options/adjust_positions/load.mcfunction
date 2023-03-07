# Called by worldtool:ui_general/options/menu
# Opens the adjust positions menu

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.position] if score @s wt.ID = #ID_temp worldtool run tag @s add wt.nudge_selected

scoreboard players set @s wt.size 1

function worldtool:ui_general/options/adjust_positions/menu
