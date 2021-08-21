# Universal function for placing secondary blocks! (currently only used by hollow lol)

execute if entity @s[tag=keep] if block ~ ~ ~ #worldtool:air_blocks run scoreboard players add $blocksplaced worldtool 1
execute if entity @s[tag=!keep] run scoreboard players add $blocksplaced worldtool 1

execute unless entity @s[tag=keep] run clone 2 1 13 2 1 13 ~ ~ ~
execute if entity @s[tag=keep] if block ~ ~ ~ #worldtool:air_blocks run clone 2 1 13 2 1 13 ~ ~ ~
