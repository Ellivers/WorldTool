# Called by worldtool:ui_general/repeat/menu
# Increases the spacing

scoreboard players add @s wt.size 1
execute if score @s wt.size matches ..-1 run scoreboard players set @s wt.size 0

function worldtool:ui_general/repeat/menu
