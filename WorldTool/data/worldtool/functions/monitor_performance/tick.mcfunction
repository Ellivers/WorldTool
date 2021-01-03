execute store result score #currentWorldborderSize worldtool run worldborder get
scoreboard players add #worldborderTimer worldtool 1
execute if score #lagWarningCooldown worldtool matches 1.. run scoreboard players remove #lagWarningCooldown worldtool 1
execute if score #currentWorldborderSize worldtool = #defaultWorldborderSize worldtool run function worldtool:monitor_performance/check
execute if score #currentWorldborderSize worldtool = #minWorldborderSize worldtool run function worldtool:monitor_performance/check
