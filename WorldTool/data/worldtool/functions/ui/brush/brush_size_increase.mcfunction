execute if entity @s[predicate=!worldtool:brushes/sphere,predicate=!worldtool:brushes/circle] unless score @s wt_brush_size matches 39.. run scoreboard players add @s wt_brush_size 2
execute unless entity @s[predicate=!worldtool:brushes/sphere,predicate=!worldtool:brushes/circle] unless score @s wt_brush_size matches 25.. run scoreboard players add @s wt_brush_size 2

function worldtool:ui/brush/select