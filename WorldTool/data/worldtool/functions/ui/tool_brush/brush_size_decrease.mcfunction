scoreboard players remove @s wt_brush_size 2
execute if entity @s[predicate=!worldtool:brushes/circle,predicate=!worldtool:brushes/sphere] if score @s wt_brush_size matches ..0 run scoreboard players set @s wt_brush_size 39
execute unless entity @s[predicate=!worldtool:brushes/circle,predicate=!worldtool:brushes/sphere] if score @s wt_brush_size matches ..0 run scoreboard players set @s wt_brush_size 25

function worldtool:ui/tool_brush/select
