scoreboard players add @s wt_brush_size 2
execute if entity @s[predicate=!worldtool:brushes/circle,predicate=!worldtool:brushes/sphere] if score @s wt_brush_size matches 40.. run scoreboard players set @s wt_brush_size 1
execute unless entity @s[predicate=!worldtool:brushes/circle,predicate=!worldtool:brushes/sphere] if score @s wt_brush_size matches 26.. run scoreboard players set @s wt_brush_size 1

function worldtool:ui_brush/select