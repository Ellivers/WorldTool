# Called by worldtool:process/shell/main
# Universal function for placing secondary blocks! (currently only used by shell)

execute if entity @s[tag=wt.keep] if block ~ ~ ~ #worldtool:air run scoreboard players add #blocksPlaced worldtool 1
execute if entity @s[tag=!wt.keep] unless blocks ~ ~ ~ ~ ~ ~ 27449 1 19 all run scoreboard players add #blocksPlaced worldtool 1

execute if entity @s[tag=!wt.keep] run clone 27449 1 19 27449 1 19 ~ ~ ~
execute if entity @s[tag=wt.keep] if block ~ ~ ~ #worldtool:air run clone 27449 1 19 27449 1 19 ~ ~ ~
