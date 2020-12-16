scoreboard players operation @s wt_brush_size = $size worldtool
execute if entity @s[tag=axis.x] run scoreboard players set #X worldtool 1
execute if entity @s[tag=axis.y] run scoreboard players set #Y worldtool 1
execute if entity @s[tag=axis.z] run scoreboard players set #Z worldtool 1
execute if entity @s[tag=sphere] run function worldtool:brush/brushes/sphere/gen
execute if entity @s[tag=circle] run function worldtool:brush/brushes/circle/gen
