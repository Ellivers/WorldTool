# Called by worldtool:ui_brush/menu
# Decreases the brush size by 2

execute unless score @s wt.brush_size matches ..2 run scoreboard players remove @s wt.brush_size 2
execute if score @s wt.brush_size matches ..2 run scoreboard players set @s wt.brush_size 39

function worldtool:ui_brush/menu
