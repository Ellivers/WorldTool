execute if entity @s[tag=!filtered,tag=!filtered_reversed] unless block ~ ~-1 ~ #worldtool:air_blocks run clone ~ ~-1 ~ ~ ~-1 ~ ~ ~ ~
execute if entity @s[tag=filtered] if blocks ~ ~-1 ~ ~ ~-1 ~ 0 1 13 all run clone ~ ~-1 ~ ~ ~-1 ~ ~ ~ ~
execute if entity @s[tag=filtered_reversed] unless blocks ~ ~-1 ~ ~ ~-1 ~ 0 1 13 all run clone ~ ~-1 ~ ~ ~-1 ~ ~ ~ ~
