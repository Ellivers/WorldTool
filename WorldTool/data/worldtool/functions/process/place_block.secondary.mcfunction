# Called by worldtool:process/shell/main
# Universal function for placing secondary blocks!

scoreboard players set #temp.blockPlaced worldtool 0
execute if entity @s[tag=!wt.keep] store success score #temp.blockPlaced worldtool run clone 27449 1 19 27449 1 19 ~ ~ ~
execute if entity @s[tag=wt.keep] if block ~ ~ ~ #worldtool:air store success score #temp.blockPlaced worldtool run clone 27449 1 19 27449 1 19 ~ ~ ~
scoreboard players operation #blocksPlaced worldtool += #temp.blockPlaced worldtool
