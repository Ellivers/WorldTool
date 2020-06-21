execute if entity @s[tag=filtered] if blocks 2 1 13 2 1 13 0 1 13 all run function worldtool:clone/place
execute if entity @s[tag=filtered_reversed] unless blocks 2 1 13 2 1 13 0 1 13 all run function worldtool:clone/place

execute if entity @s[tag=!filtered,tag=!filtered_reversed] run function worldtool:block_place/place_block