# Called by worldtool:ui_general/smooth/settings
# Increases the intensity by 1

execute if score @s wt.size2 matches 5.. run scoreboard players set @s wt.size2 4
scoreboard players add @s wt.size2 1

function worldtool:ui_general/smooth/settings
