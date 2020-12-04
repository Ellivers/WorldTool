# Move the position out 1 block
scoreboard players add $brush_out worldtool 1
execute if entity @s[tag=wt_expand_negative] positioned ~-1 ~-1 ~-1 run function worldtool:brush/brushes/main/expand_selection
execute if entity @s[tag=wt_expand_positive] positioned ~1 ~1 ~1 run function worldtool:brush/brushes/main/expand_selection
