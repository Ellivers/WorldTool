# Called by worldtool:ui_general/greenery/menu
# Increases the plant rate by 5%

scoreboard players add @s wt.greenery_rate 5
execute if score @s wt.greenery_rate matches 101.. run scoreboard players set @s wt.greenery_rate 0

function worldtool:ui_general/greenery/menu
