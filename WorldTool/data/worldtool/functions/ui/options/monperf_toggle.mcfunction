execute unless score $monitorPerformance worldtool matches 1.. run tag @s add settingmp
execute unless score $monitorPerformance worldtool matches 1.. run scoreboard players set $monitorPerformance worldtool 1
execute if entity @s[tag=!settingmp] if score $monitorPerformance worldtool matches 1.. run scoreboard players set $monitorPerformance worldtool 0
execute store result score #worldborderSize worldtool run worldborder get
execute if entity @s[tag=!settingmp] if score $monitorPerformance worldtool matches 1.. if score #worldborderSize worldtool = #minWorldborderSize worldtool run worldborder add 20
tag @s remove settingmp
execute as @p run function worldtool:ui/options/settings