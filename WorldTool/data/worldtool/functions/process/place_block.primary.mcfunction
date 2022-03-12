# Called by most processes
# Universal function for placing a block!

execute if entity @s[tag=wt.keep] if block ~ ~ ~ #worldtool:air run scoreboard players add #blocksPlaced worldtool 1
execute if entity @s[tag=!wt.keep] unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run scoreboard players add #blocksPlaced worldtool 1

execute if entity @s[tag=!wt.keep] run clone 27451 1 19 27451 1 19 ~ ~ ~
execute if entity @s[tag=wt.keep] if block ~ ~ ~ #worldtool:air run clone 27451 1 19 27451 1 19 ~ ~ ~
