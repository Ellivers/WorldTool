# Called by most processes
# Universal function for placing a block!

execute if entity @s[tag=wt.keep] if block ~ ~ ~ #worldtool:air run scoreboard players add #blocksPlaced worldtool 1
execute if entity @s[tag=!wt.keep] unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run scoreboard players add #blocksPlaced worldtool 1

execute if entity @s[tag=!wt.keep] run clone 0 1 13 0 1 13 ~ ~ ~
execute if entity @s[tag=wt.keep] if block ~ ~ ~ #worldtool:air run clone 0 1 13 0 1 13 ~ ~ ~
