# Called by worldtool:ui_general/greenery/menu
# Decreases the plant rate by 5%

scoreboard players remove @s wt.greenery_rate 5
execute if score @s wt.greenery_rate matches ..-1 run scoreboard players set @s wt.greenery_rate 100

function worldtool:ui_general/greenery/menu
