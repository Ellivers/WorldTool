# Called by the hollow process
# Universal function for placing secondary blocks! (currently only used by hollow)

execute if entity @s[tag=wt.keep] if block ~ ~ ~ #worldtool:air run scoreboard players add #blocksPlaced worldtool 1
execute if entity @s[tag=!wt.keep] unless blocks ~ ~ ~ ~ ~ ~ 2 1 13 all run scoreboard players add #blocksPlaced worldtool 1

execute unless entity @s[tag=wt.keep] run clone 2 1 13 0 1 13 ~ ~ ~
execute if entity @s[tag=wt.keep] if block ~ ~ ~ #worldtool:air run clone 2 1 13 2 1 13 ~ ~ ~
