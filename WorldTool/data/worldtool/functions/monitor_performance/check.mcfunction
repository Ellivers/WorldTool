execute if score #averageTicksPerSecondChecked worldtool matches 8.. run scoreboard players operation #averageTicksPerSecond worldtool /= #8 worldtool
execute if score #averageTicksPerSecondChecked worldtool matches 8.. unless score #lagWarningCooldown worldtool matches 1.. if score #averageTicksPerSecond worldtool matches ..9 if score #displayLagWarning worldtool matches 1.. as @e[type=minecraft:area_effect_cloud,tag=wt_drawer,tag=worldtool,limit=1] at @a if score @p wt_ID = @s wt_ID as @p run function worldtool:ui/lag_warning/warn
 #execute if score #averageTicksPerSecondChecked worldtool matches 8.. run tellraw @a {"score": {"name": "#averageTicksPerSecond","objective": "worldtool"}}

execute if score #currentWorldborderSize worldtool = #defaultWorldborderSize worldtool run worldborder add -20 1
execute if score #currentWorldborderSize worldtool = #minWorldborderSize worldtool run worldborder add 20 1
execute if score #averageTicksPerSecondChecked worldtool matches 8.. run scoreboard players set #averageTicksPerSecondChecked worldtool 0
execute unless score #averageTicksPerSecondChecked worldtool matches 8.. run scoreboard players operation #averageTicksPerSecond worldtool += #worldborderTimer worldtool
execute unless score #averageTicksPerSecondChecked worldtool matches 8.. run scoreboard players add #averageTicksPerSecondChecked worldtool 1
scoreboard players set #worldborderTimer worldtool 0
