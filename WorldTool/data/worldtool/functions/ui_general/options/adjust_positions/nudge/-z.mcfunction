# Called by worldtool:ui_general/options/adjust_positions/menu
# Nudges the selected positions

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.position,tag=wt.nudge_selected] if score @s wt.ID = #ID_temp worldtool store result score #tempPos worldtool run data get entity @s Pos[2]
scoreboard players operation #tempPos worldtool -= @s wt.size
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.position,tag=wt.nudge_selected] if score @s wt.ID = #ID_temp worldtool store result entity @s Pos[2] double 1 run scoreboard players get #tempPos worldtool

function worldtool:ui_general/options/adjust_positions/menu
