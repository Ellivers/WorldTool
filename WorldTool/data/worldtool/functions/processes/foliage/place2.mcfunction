execute if entity @s[tag=!replacefill,tag=!replacefill_reversed] if block ~ ~ ~ #worldtool:air_blocks run function worldtool:processes/foliage/place3
execute if entity @s[tag=replacefill] if blocks ~ ~ ~ ~ ~ ~ 2 1 13 all run function worldtool:processes/foliage/place3
execute if entity @s[tag=replacefill_reversed] unless blocks ~ ~ ~ ~ ~ ~ 2 1 13 all run function worldtool:processes/foliage/place3