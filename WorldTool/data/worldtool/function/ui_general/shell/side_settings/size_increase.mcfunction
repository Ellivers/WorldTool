# Called by worldtool:ui_general/shell/side_settings
# Increases the side thickness by 1 block

scoreboard players add @s wt.size 1
execute unless score @s wt.size matches 1.. run scoreboard players set @s wt.size 1

function worldtool:ui_general/shell/side_settings
