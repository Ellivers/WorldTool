# Called by worldtool:ui_brush/menu
# Increases the brush size by 2

execute unless score @s wt.brush_size matches 38.. run scoreboard players add @s wt.brush_size 2
execute if score @s wt.brush_size matches 38.. run scoreboard players set @s wt.brush_size 1

function worldtool:ui_brush/menu
