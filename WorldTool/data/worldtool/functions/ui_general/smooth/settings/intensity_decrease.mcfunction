# Called by worldtool:ui_general/smooth/settings
# Decreases the intensity by 1

execute if score @s wt.size2 matches ..1 run scoreboard players set @s wt.size2 2
scoreboard players remove @s wt.size2 1

function worldtool:ui_general/smooth/settings
