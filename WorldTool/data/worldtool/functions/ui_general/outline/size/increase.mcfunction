# Called by worldtool:ui_general/outline/menu
# Increases the line thickness by 1 block

execute unless score @s wt.thickness matches 1.. run scoreboard players set #temp worldtool 1
scoreboard players add @s wt.thickness 1

function worldtool:ui_general/outline/menu
