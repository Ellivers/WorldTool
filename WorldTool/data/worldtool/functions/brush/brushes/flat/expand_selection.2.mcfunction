# Move the position out 1 block
scoreboard players add $brush_out worldtool 1
execute if score #X worldtool matches 1 if entity @s[tag=wt_expand_negative] positioned ~ ~-1 ~-1 run function worldtool:brush/brushes/flat/expand_selection
execute if score #X worldtool matches 1 if entity @s[tag=wt_expand_positive] positioned ~ ~1 ~1 run function worldtool:brush/brushes/flat/expand_selection
execute if score #Y worldtool matches 1 if entity @s[tag=wt_expand_negative] positioned ~-1 ~ ~-1 run function worldtool:brush/brushes/flat/expand_selection
execute if score #Y worldtool matches 1 if entity @s[tag=wt_expand_positive] positioned ~1 ~ ~1 run function worldtool:brush/brushes/flat/expand_selection
execute if score #Z worldtool matches 1 if entity @s[tag=wt_expand_negative] positioned ~-1 ~-1 ~ run function worldtool:brush/brushes/flat/expand_selection
execute if score #Z worldtool matches 1 if entity @s[tag=wt_expand_positive] positioned ~1 ~1 ~ run function worldtool:brush/brushes/flat/expand_selection
