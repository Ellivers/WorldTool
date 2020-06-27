scoreboard players operation @s wt_brush_size = $size worldtool
execute if entity @s[tag=sphere] run function worldtool:brush/brushes/sphere/gen
execute if entity @s[tag=circle] run function worldtool:brush/brushes/circle/gen