# Called by worldtool:ui_general/shell/side_settings
# Decreases the side thickness by 1 block

execute unless score @s wt.thickness matches 1.. run scoreboard players set @s wt.thickness 1
execute if score @s wt.thickness matches 2.. run scoreboard players remove @s wt.thickness 1


function worldtool:ui_general/shell/side_settings
