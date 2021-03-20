execute unless score $monitorPerformance worldtool matches 1.. run tag @s add wt_toggling
execute unless score $monitorPerformance worldtool matches 1.. run scoreboard players set $monitorPerformance worldtool 1
execute if entity @s[tag=!wt_toggling] if score $monitorPerformance worldtool matches 1.. run scoreboard players set $monitorPerformance worldtool 0
execute store result score #worldborderSize worldtool run worldborder get
execute if entity @s[tag=!wt_toggling] if score $monitorPerformance worldtool matches 1.. if score #worldborderSize worldtool = #minWorldborderSize worldtool run worldborder add 20
tag @s remove wt_toggling
execute as @p run function worldtool:ui_general/menus/options/settings
