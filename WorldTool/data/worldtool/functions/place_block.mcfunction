#Universal function for placing a block! This means that everything (except the brush) supports keep!

execute if entity @s[tag=keep] if block ~ ~ ~ #worldtool:air_blocks run scoreboard players add $blocksplaced worldtool 1
execute if entity @s[tag=!keep] run scoreboard players add $blocksplaced worldtool 1

execute unless entity @s[tag=keep] run clone 0 1 13 0 1 13 ~ ~ ~
execute if entity @s[tag=keep] if block ~ ~ ~ #worldtool:air_blocks run clone 0 1 13 0 1 13 ~ ~ ~